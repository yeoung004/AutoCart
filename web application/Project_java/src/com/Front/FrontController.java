package com.Front;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Controller.DAO;
import com.POJO.DeleteService;
import com.POJO.JoinService;
import com.POJO.LoginService;
import com.POJO.LogoutService;
import com.Controller.VO;
import com.inter.Command;

@WebServlet("*.do") // .do �� ���̴� �ϳ��� �������Ϸ� �����
// ������ ���� ������ �� ������ : 1. �ߺ�  2. ����  3. HttpServlet �޸� ���� ���
// �ϳ��� �������Ϸ� ���� �� ������ : 1.���յ��� ���Ƽ� �ڵ� �ϳ��� Ʋ���� �۵�X  2.�ߺ��ڵ�
//							-> ���� ���� �ڹ����Ϸ� �����
//                          -> ���� �ڹ����Ͽ� request, response ���� -> �Ű������� �����ֱ� 
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println(".do�������Դϴ�.");

		String reqURI = request.getRequestURI(); // ��� ��û�ߴ��� Ȯ��
		System.out.println(reqURI);

		String path = request.getContextPath(); // ���� ������Ʈ �̸�
		System.out.println(path);

		String resultURI = reqURI.substring(path.length() + 1); // ���ϴ� ��ŭ ���ڿ� ����
		System.out.println(resultURI);

		String nextpage = "";

		Command com = null; // ��ĳ���� ����

		if (resultURI.equals("DeleteCon.do")) {
			com = new DeleteService();

		} else if (resultURI.equals("JoinCon.do")) {
			com = new JoinService();

		} else if (resultURI.equals("LoginCon.do")) {
			com = new LoginService();

		} else if (resultURI.equals("LogoutCon.do")) {
			com = new LogoutService();

		}

		nextpage = com.execute(request, response);

		RequestDispatcher dis = request.getRequestDispatcher(nextpage); // �̵��� ���ϸ�
		dis.forward(request, response); // request, response��ü ���� �̵�

	}

}
