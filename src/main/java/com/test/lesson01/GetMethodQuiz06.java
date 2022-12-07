package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request에서 request parameter를 꺼낸다.
		PrintWriter out = response.getWriter();
		request.getParameter("number1");
		request.getParameter("number2");
		
		// 사칙연산을 한다.
		int number1 = Integer.valueOf(request.getParameter("number1"));		
		int number2 = Integer.valueOf(request.getParameter("number2"));		
		
		// json으로 출력한다.
		// ("addtion": 1570, "subtraction": 1430, "multiplication": 105000, "division": 21)
		out.print("{\"addtion\":\"" + (number1+number2) 
				+ "\", \"subtraction\":\"" + (number1 - number2) 
				+ "\", \"multiplication\":\"" + (number1 * number2) 
				+ "\", \"division\":\"" + (number1 / number2) + "}");
	}

}
