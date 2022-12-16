package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02_Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// content type 생략 => 이유? 다른 페이지로 보낼 것이기 때문에(내가 응답을 만들지 않음)
		
		// request parameter들을 꺼내기
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// new_user에 insert 쿼리
		String insertQuery ="insert into `new_user`"
				+ "(`name`,`yyyymmdd`,`introduce`,`email`)"
				+ "values"
				+ "('" + name + "', '" + yyyymmdd + "', '" + introduce + "', '" + email + "');";
		// insert into `new_user` (`name`,`yyyymmdd`,`introduce`,`email`) 
		// 			values ('이한민', '20010701', '안녕하세요 이한민입니다.', 'hanmin010701@gmail.com'); 이렇게 나와야 한다.
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 사용자 목록 화면으로 이동(Redirect) - 어떤 페이지에 새로운 요청을 하는 것이다.
		response.sendRedirect("/lesson04/Ex02/Ex02_1.jsp");
	}
}
