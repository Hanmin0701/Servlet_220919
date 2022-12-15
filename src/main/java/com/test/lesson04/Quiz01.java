package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest Request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert 한 행
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
				+ "values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB select 
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate`;";
		
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {
				out.println("realtorId");
				out.println("address");
				out.println("area");
				out.println("type");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 결과 출력
		
		// DB 해제
		ms.disconnect();
	}
}
