package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz04")
public class UrlMappingQuiz04 extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 리스트 작성
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>Quiz04</title></head><body><ul>");
		
		for (int i = 0; i <= 30; i++) {
			out.println("<li>" + i + "번째 리스트</li>");
		}
		
		out.println("</ul></body></html>");
		
		// 테스트용 주석 추가
	}
}
