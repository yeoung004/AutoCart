package com.POJO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Controller.DAO;
import com.inter.Command;

public class DeleteService implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String id = request.getParameter("id");

		DAO dao = new DAO();
		int cnt = dao.delete(id);
		
		if (cnt > 0) {
			System.out.println("삭제성공");
		}
		return "manage.jsp";
	}
}