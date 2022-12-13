<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		today.add(Calendar.DATE, 1);
	%>
	
	<div class="container">
		<table class="table text-center">
			<tr>
				<th class="text-danger">일</th>			
				<th>월</th>			
				<th>화</th>			
				<th>수</th>			
				<th>목</th>			
				<th>금</th>			
				<th>토</th>			
			</tr>
		</table>
	</div>
</body>
</html>