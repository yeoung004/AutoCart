package com.POJO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.Controller.DAO;
import com.Controller.VO;
import com.inter.Command;

public class LoginService implements Command{
	// 인터페이스의 가장 큰 특징 : 강제성(implements하면 반드시 구현해야 함)

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		
		DAO dao = new DAO();
		VO vo = dao.login(id, pw);

		if (vo != null) {

			HttpSession session = request.getSession();
			// 전체 서버페이지가 공유할 수 있는 공간(해당 프로젝트 공간)인 session을 사용하겠다는 코드 <- 서블릿에서만 필요
			// 세션에는 여러개의 정보를 담을 수 있다!

			session.setAttribute("vo", vo); // 매개변수(이름표, 들어갈 값)
			// login관련 서블릿에서 세션값 set해주고나면 다른 페이지에서는 get으로 가져올 수 있음
			// session영역에는 객체값도 저장가능
			System.out.println("로그인 성공");
			
		} else {
			System.out.println("로그인에 실패하셨습니다.");
		}
		return "main.jsp";
		
	}

}
