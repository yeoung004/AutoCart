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
	// �������̽��� ���� ū Ư¡ : ������(implements�ϸ� �ݵ�� �����ؾ� ��)

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
			// ��ü ������������ ������ �� �ִ� ����(�ش� ������Ʈ ����)�� session�� ����ϰڴٴ� �ڵ� <- ���������� �ʿ�
			// ���ǿ��� �������� ������ ���� �� �ִ�!

			session.setAttribute("vo", vo); // �Ű�����(�̸�ǥ, �� ��)
			// login���� �������� ���ǰ� set���ְ��� �ٸ� ������������ get���� ������ �� ����
			// session�������� ��ü���� ���尡��
			System.out.println("�α��� ����");
			
		} else {
			System.out.println("�α��ο� �����ϼ̽��ϴ�.");
		}
		return "main.jsp";
		
	}

}
