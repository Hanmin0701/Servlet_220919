<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB select query
		String selectQuery = "select * from `site`";
		ResultSet rs = ms.select(selectQuery);
		
	%>
	<div class="container">
		<form method="post" action="/lesson04/Quiz02">
			<table class="table text-center">
				<thead>
					<tr>
						<th>사이트</th>
						<th>사이트 주소</th>
					</tr>
				</thead>
				<tbody>
				
					<%
					while (rs.next()) {
					%>
					<tr>
						<td><%= rs.getString("name")%></td>
						<td><a href="<%= rs.getString("url")%>"><%= rs.getString("name")%></a></td>
					</tr>
					<%
					}
					%>
					
				</tbody>
			</table>
		</form>
	</div>
	
	<%
	// DB 해제
	ms.disconnect();
	%>
</body>
</html>