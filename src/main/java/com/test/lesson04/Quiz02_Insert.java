package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Quiz02/Quz02")
public class Quiz02_Insert extends HttpServlet {
	
	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략
		
		// request parameter 꺼내기
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// site에 insert 쿼리
		String insertQuery = "insert into `site`"
				+ "(`id`, `name`,`url`, `createdAt`, `updatedAt`)"
				+ "values ('" + name + "', '" + url + "', now(),now());";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String selectQuery = "select * from `site` order by `id` desc";
		
		// DB 연결 해제
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson04/Quiz02/Quiz02_1.jsp");
		
	}
}
