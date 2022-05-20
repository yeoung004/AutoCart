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

@WebServlet("*.do") // .do 로 모이는 하나의 서블릿파일로 만들기
// 각각의 서블릿 파일일 때 문제점 : 1. 중복  2. 관리  3. HttpServlet 메모리 많이 사용
// 하나의 서블릿파일로 모을 때 문제점 : 1.결합도가 높아서 코드 하나만 틀려도 작동X  2.중복코드
//							-> 각각 순수 자바파일로 만들기
//                          -> 순수 자바파일엔 request, response 없음 -> 매개변수로 보내주기 
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println(".do페이지입니다.");

		String reqURI = request.getRequestURI(); // 어디서 요청했는지 확인
		System.out.println(reqURI);

		String path = request.getContextPath(); // 현재 프로젝트 이름
		System.out.println(path);

		String resultURI = reqURI.substring(path.length() + 1); // 원하는 만큼 문자열 빼기
		System.out.println(resultURI);

		String nextpage = "";

		Command com = null; // 업캐스팅 위해

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

		RequestDispatcher dis = request.getRequestDispatcher(nextpage); // 이동할 파일명
		dis.forward(request, response); // request, response객체 갖고 이동

	}

}
