<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04 - 제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 구성하기
		// {"Korean"=85, "English"=72, "Math"=90, "science"=100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("Korean", 85);
		scoreMap.put("English", 72);
		scoreMap.put("Math", 90);
		scoreMap.put("science", 100);
	%>

	<table border="1">
	<%
	//  두 줄로 표현
	//	Set<String> keys = scoreMap.keySet();  // 1) Iterator 2)향상된 for문 둘 중에 하나를 사용을 해야한다.
	//	Iterator<String> iter = keys.iterator();
		
	// 한 줄로 표현
		Iterator<String> iter = scoreMap.keySet().iterator();  
		while (iter.hasNext()) {
			String key = iter.next();  // key = 과목 명
	%>
		<tr>
			<th><%-- <%= key%>< --%>
				<%
					if (key.equals("Korean")) {
						out.print("국어");
					} else if (key.equals("English")) {
						out.print("영어");
					} else if (key.equals("Math")) {
						out.print("수학");
					} else if (key.equals("science")) {
						out.print("과학");
					}
				%>
				
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>