package com.Ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Controller.DAO;

@WebServlet("/idCheckService")
public class idCheckService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println("사용자가 입력한 id : " + id);
		
		DAO dao = new DAO();
		boolean check = dao.memberSelect(id);
		
		System.out.println(check);
		
		PrintWriter out = response.getWriter();
		out.print(check);
	}

}
