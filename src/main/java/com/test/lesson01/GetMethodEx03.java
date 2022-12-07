package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// 면접에서 많이 나오는 문제
		// request 방식 (method)
		// 1) Get = url 브라우저 주소창에 치고 들어가는 방식
		//		  = a 태그로 들어가는 것도 get의 방식이다.
		// 2) Post 
		
		// 쿼리 스트링(쿼리 파라미터)
		// https://comic.naver.com/webtoon/detail?titleId=524520&no=403
		// ex) <a herf = "/lesson01/ex03?user_id=ian010701">   = ? 이걸로 나누고 그 다음에 내가 넣을 값 넣기
		// 처음에 시작할 때는 = ?, 다른 것을 더 넣으려면 & 이거 사용하기
		
		// request 파라미터 꺼내기
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("user_id" + userId);
//		out.println("name" + name);
//		out.println("age" + age);
		
		// json(JavaScript Object Notation) String으로 response 구성하기 = java dictionary = {"이름":이한민, "key1":value}
		// 서버와 데이터가 주고 받을 때 사용을 하고 예쁘게 저장을 한다.  
		// {"user_id":"ian010701", "name":"이한민", "age":22}
		out.print("{\"user_id\":\""+ userId + "\",\"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}