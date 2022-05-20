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
		// 1. session ����(���� ���Ͽ��� session ���尴ü ����)
		HttpSession session = request.getSession();

		// 2. session�� �ִ� �� ����(�̸�ǥ �� ����)
		session.removeAttribute("vo");
		
		return "main.jsp";

	}

}
