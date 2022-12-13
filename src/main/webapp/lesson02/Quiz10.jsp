<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-Day 계산</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-weight-bold">오늘부터 1일</h1>
		
		<%
			Calendar today = Calendar.getInstance();
			today.add(Calendar.DATE, -1); // 오늘부터하면 0일이기 때문에 하루를 빼주고 시작을 한다.
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
			
			Calendar num = Calendar.getInstance();
			
			for (int i = 100; i <= 1000; i +=100) {
				today.add(Calendar.DATE, 100);
		%>
					
		<div class="display-4">
			<span><%= i %>일:</span>
			<span class="text-danger"><%= sdf.format(today.getTime())%></span>
		</div>
		<%
			}	
		%>
	</div>
</body>
</html>