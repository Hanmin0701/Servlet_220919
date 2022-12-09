<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/Quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" name="length" class="form-control col-3">
				<span class="ml-2 mt-3">cm</span>
			</div>
				
			<div class="d-flex">
				<label>인치<input type="checkbox" name="sign" class="mt-2 mr-3" value="inch"></label>
				<label>야드<input type="checkbox" name="sign" class="mt-2 mr-3" value="yard"></label>
				<label>피트<input type="checkbox" name="sign" class="mt-2 mr-3" value="feat"></label>
				<label>미터<input type="checkbox" name="sign" class="mt-2 mr-3" value="meter"></label>
			</div>

			<input type="submit" class="btn btn-success text-white" value="변환하기">
		</form>
	</div>
</body>
</html>