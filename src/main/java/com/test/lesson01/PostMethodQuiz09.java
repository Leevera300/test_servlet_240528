package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		// stash 용 주석 추가
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String intro = request.getParameter("intro");
		
		out.print("<html><head></head><body>");
		out.print("<b>" + name + "</b>님 지원이 완료 되었습니다. <br>");
		out.print("<h3>지원 내용</h3>");
		out.print(intro);
		out.print("</body></html>");
	}
}
