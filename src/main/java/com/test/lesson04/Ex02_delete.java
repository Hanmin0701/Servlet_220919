package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/Ex02_delete")
public class Ex02_delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략(Redirect 할꺼기 때문이다.)
		
		// request parameter 꺼내기
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// new_user id 데이터 삭제 => Query로 만들어서
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		ms.disconnect();
		
		// 사용자 목록 화면으로 이동 - redirect
		response.sendRedirect("/lesson04/Ex02/Ex02_1.jsp");
	}
}
