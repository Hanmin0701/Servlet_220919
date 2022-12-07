package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setContentType("text/html");
		
		// request parameter 꺼내기
		String introduction = request.getParameter("introduction");
		String userName = request.getParameter("userName");
		
		// 결과 뿌리기(태그)
		PrintWriter out = response.getWriter();
		out.println("<b>" + userName + "</b>님 지원이 완료되었습니다. <br> <span><b>지원 내용<b></span> <br>" + introduction);
		out.print("<h2>지원 내용</h2>");
		out.print(introduction);
	}
}