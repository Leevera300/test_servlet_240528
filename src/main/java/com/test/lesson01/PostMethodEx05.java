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
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		//response header
		//response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		//테이블 출력
		out.print("<html><head><title>회원 정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디<td>" + userId + "</td></th></tr>");
		out.print("<tr><th>이름<td>" + name + "</td></th></tr>");
		out.print("<tr><th>생년월일<td>" + birth + "</td></th></tr>");
		out.print("<tr><th>이메일<td>" + email + "</td></th></tr>");
		out.print("</table>");
		out.print("</body></html>");
		
	}
}
