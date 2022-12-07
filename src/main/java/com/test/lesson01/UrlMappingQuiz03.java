package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz003")
public class UrlMappingQuiz03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// date
		Date now = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		PrintWriter out = response.getWriter();
		
		// 뉴스기사 출력
		out.println("<html> <head> <title> 뉴스 </title> </head> <body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("<P><small>기사 입력시간:" + sdf.format(now) + "</P>");
		out.println(sdf.format(now));
		out.println("<hr> 끝 </body> </html>");
		
	}
}
