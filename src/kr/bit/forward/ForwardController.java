package kr.bit.forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fc.do")
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// int su=100; 
		String data = "setAttribute";
		String apple = "getParameter";
		request.setAttribute("data", data);
		// View page(result.jsp)로 data를 전달 하여 View page에서 출력
		// Controller에서 View로 페이지를 전환하는 방법
		// 1. redirect
		// 2. forward
		response.sendRedirect("view/result.jsp?data="+apple);
		// RequestDispatcher rd = new requestDispatcher();

	}

}
