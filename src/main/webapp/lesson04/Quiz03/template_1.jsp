<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		if ($('#sellerId').val() == "") {
			alert("아이디를 입력해주세요.");
			return;
		} else if ($('#title').val() == "") {
			alert("제목을 입력해주세요.");
			return;
		} else if ($('#price').val() == "") {
			alert("가격을 입력해주세요.");
			return;
		}
	});
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
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
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>