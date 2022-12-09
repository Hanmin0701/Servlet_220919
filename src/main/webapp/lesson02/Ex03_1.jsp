<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex03_1 - POST METHOD</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String[] foodArr = request.getParameterValues("food"); // 선택 항목이 여러개 일 때 ex) checkbox 같은 것들
	String fruit = request.getParameter("fruit");
%>

<table border="1">
	<tr>
		<th>별명</th>
		<td><%= nickname %></td>
	</tr>
	<tr>
		<th>취미</th>
		<td><%= hobby %></td>
	</tr>
	<tr>
		<th>선호하는 동물</th>
		<td><%= animal %></td>
	</tr>
	<tr>
		<th>선호하는 음식</th>
		<td>
			<%
				String result = "";
				if (foodArr != null) {
					for (String food : foodArr) {
						result += food + ","; // 하나씩 붙이는 식으로 풀자
					}
					
					// 맨 뒤에 붙은 콤마 제거
					// 민트초코, 피자,      abcde  0 ~ 4  => 전체에서 마지막 하나까지 자르겠다. 
					result = result.substring(0,result.length() - 1 );
				}
			%>
			<%= result %>
		</td>
	</tr>
		<tr>
		<th>좋아하는 과일</th>
		<td><%= fruit %></td>
	</tr>
</table>


</body>
</html>