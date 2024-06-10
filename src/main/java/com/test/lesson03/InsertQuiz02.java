package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz02_insert")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
			// response header 생략
		
				// request params
				
				String name = request.getParameter("name");
				String url = request.getParameter("url");
				
				// DB 연결 하기
				MysqlService ms = MysqlService.getInstance();
				ms.connect();
				
				// Insert Query
				String insertQuery = "insert into `url`"
						+ "(`name`, `url`)"
						+ "values"
						+ "('" +  name +  "', '"  + url +  "')";
				try {
					ms.update(insertQuery);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				// DB 연결 해제
				
				ms.disconnect();
				
				// 목록 화면 이동 Redirect
				response.sendRedirect("/lesson03/quiz02.jsp");
		
	}
}
