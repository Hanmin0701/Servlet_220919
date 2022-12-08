<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<!-- HTML 한줄 주석: 소스보기에서 보인다. -->
	<%-- JSP 한줄 주석: 소스보기에서 보이지 않는다.--%>
	
<%
	// 자바 문법 시작
	// scriptlet = 자바 코드를 작성할 수 있는 영역
	// 			 = 메인 메소드 같은 느낌
	// 학원에서만 하고 다른 곳에서는 하지마라
	
	int sum = 0;
	for (int i = 0; i <=10; i++) {
		sum += i;
	}
%>	
<strong>합계: </strong>
<input type="text" value="<%= sum %>"> <!-- <%= sum%> 표현식 -->
<br>

<%!
	// 선언문 - 클래스 같은 느낌
	
	// 필드
	private int num = 100;
	
	// 메소드 영역 
	public String getHellowWorld() {
		return "Hello World!";
	}
%>

<%= num + 200 %> <br> <!-- 가로 넘어가면 태그가 된다. -->
<%= getHellowWorld() %>


<%
	List<Integer> list = new ArrayList<>();
%>

</body>
</html>