package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz04_insert")
public class Quiz03_insert extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략
		
		// request parameter 꺼내기
		String sellerId = request.getParameter("sellerId");
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		
		// DB 연동
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert Query
		String insertQuery = "insert into `seller`"
				+ "(`nickname`, `title`, `price`)"
				+ "value"
				+ "('" + sellerId + "', '" + title + "', '" + price + "');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		// select Query
		String selectQuery = "select * from `seller` order by `id` asc";
		
		// DB 해제
		ms.disconnect();
		
		// Redirect
		response.sendRedirect("/lesson04/Quiz04/template_1.jsp");
	}
}
