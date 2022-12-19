<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	#wrap {height:800px; weight:1000px;}
	header {height:100px;}
	nav{height:80px;}
	.contents{height:700px}
	footer {height:100px;}
	
	.name {color:#ff7f00;}
	.media-parent-box {gap:5px 10px; padding-top:10px;}
	.media-box {width:300px;}
</style>

</head>
<body>
	<div id="wrap">
		<header class="bg-warning d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp"/>
		</header>
		<nav class="bg-primary d-flex justify-content-center align-items-center">
			<jsp:include page="menu.jsp"></jsp:include>
		</nav>
		<section class="contents bg-success">
			<jsp:include page="contents.jsp"></jsp:include>
		</section>
		<footer class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp"/>
		</footer>
	</div>
</body>
</html>