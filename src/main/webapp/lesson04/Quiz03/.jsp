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
	<div class="container">
		<h1>물건 올리기</h1>
		<form action="/lesson04/Quiz03/template" class="d-flex">
			<div>
				<select name="id" id="id">
					<option value="선택">-아이디 선택-</option>
					<option value="마로비">마로비</option>
					<option value="아메리카노">아메리카노</option>
					<option value="최준">최준</option>
					<option value="빠다">빠다</option>
					<option value="하구루">하구루</option>
					<option value="다팔아">다팔아</option>
				</select>
				
				<input type="text" class="font-control" value="제목">
				
				<input type="text" class="font-control" value="가격">원
				
				<div>
					<textarea rows="10" cols="150"></textarea>
				</div>
				<div>
					<input type="url" class="font-control">
				</div>
			</div>

			<button class="font-control">저장</button>
		</form>
	</div>
</body>
</html>