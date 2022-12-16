<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
</head>
<body>
	<%	
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String selectQuery = "select * from `new_user`";
	ResultSet rs = ms.select(selectQuery);
	
	%>
	<h1>즐겨찾기 추가</h1>
	
	<div class="d-flex">
		사이트명:
		<input type="text" class="form-control col-2">
		
		사이트 주소:
		<input type="text" class="form-control col-4">
		
		<input type="submit" class="btn btn-success text-white form-control">
	</div>
	
	<%
	// DB 해제
	ms.disconnect();
	%>
</body>
</html>