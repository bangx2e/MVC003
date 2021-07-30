package kr.bit.forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberVO;

@WebServlet("/fc.do")
public class FowardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = "Lim";
		int age = 31;
		String email = "zzanga9244@naver.com";

		MemberVO vo = new MemberVO();
		vo.setAge(age);
		vo.setName(name);
		vo.setEmail(email);
		// foward.jsp
		// 객체 바인딩
		request.setAttribute("vo", vo);
		RequestDispatcher rd = request.getRequestDispatcher("view/forward.jsp");
		rd.forward(request, response);
	}

}
