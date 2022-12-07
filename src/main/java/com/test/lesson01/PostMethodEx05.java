package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		// response.setCharacterEncoding("utf-8"); 필터가 있어서 쓸 필요가 없다.
		response.setContentType("text/html");
		
		// 이름이 ?? 이렇게 깨지면 고칠 수 O 다른 문자면 원인을 찾아야한다
		// 1) parameter로 깨질수 있거나 
		// 2) 출력 할때 깨진 것일 수 있다.
		
		// request parameter 꺼내기
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블로 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>회원정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>"); 
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
		
		
	}
}
