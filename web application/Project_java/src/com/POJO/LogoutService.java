package com.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;

public class LogoutService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. session 선언(서블릿 파일에는 session 내장객체 없음)
		HttpSession session = request.getSession();

		// 2. session에 있는 값 삭제(이름표 값 삭제)
		session.removeAttribute("vo");
		
		return "main.jsp";

	}

}
