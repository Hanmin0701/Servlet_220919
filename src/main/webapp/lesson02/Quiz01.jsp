<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%!
 	// 1번 (선언문)

	// 메소드
	// input: N(숫자)      output: 합계 결과
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++){ // 0 ~ 4
			return sum+= i;
		}
		return sum;
	}
%>
<%
	//2번
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum+= scores[i];
	}
	
	double average = sum / (double)scores.length;
%>
<%
	// 3번
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
%>
<%
	// 4번
	String birthDay = "20010820"; // index로 접근해서 0, 4까지
	String yearStr = birthDay.substring(0, 4);
	// out.println(yearStr);  // 자바 구문에서 바로 출력을 하고 싶을 때
	int age = 2022 - Integer.valueOf(yearStr) + 1;
%>

<!-- 1번 -->
<h2>1부터 50까지의 합은 <%= sum %> 입니다.</h2>

<!-- 2번 -->
<h2>평균 점수는 <%= average %> 입니다.</h2>

<!-- 3번 -->
<h2>채점 결과는 <%= score %> 점 입니다.</h2>

<!-- 4번 -->
<h2><%= birthDay %>의 나이는 <%= age%>세 입니다.</h2>
</body>
</html>