package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지하기 위한 코팅
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");      
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		
		Date now = new Date();
		out.println(now);  
		
		// formatter
		// 2022-11-24 오후 16:49:30
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm");
		out.println(sdf.format(now));
		
		
		// 에러가 나올 때
		// 그 에러를 보고 그 옆으로 보면 힌트가 준다. 그리고 어딘가에 기록을 하면 어떻게 하면 알수 있다.
	}
}
