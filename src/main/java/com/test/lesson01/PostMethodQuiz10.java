package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	// doPost 메소드 바깥쪽에 위치
	private static final Map<String, String> userMap =  new HashMap<String, String>() {
		{
		put("id", "marobiana");
	    put("password", "qwerty1234");
	    put("name", "신보람");
		}
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setContentType("text/html");
		
		// request parameter 꺼내기
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// 비교 => HTML
		PrintWriter out = response.getWriter();
		
		if (userMap.get("id").equals(id)) {
			out.println("id가 일치하지 않습니다.");
		} else if (userMap.get("password").equals(password)){
			out.println("password가 일치하지 않습니다.");
		} else { // 모두 일치
			out.println(userMap.get("name") + "님 환영합니다!"); 
		}
		
		// 다른 풀이
//		if (userMap.get("id").equals(id) == false) {
//			out.println("id가 일치하지 않습니다.");
//		} else if (userMap.get("password").equals(password) == false){
//			out.println("password가 일치하지 않습니다.");
//		} else { // 모두 일치
//			out.println(userMap.get("name") + "님 환영합니다!"); 
//		}
	}
}