package com.POJO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Controller.DAO;
import com.Controller.VO;
import com.inter.Command;

public class JoinService implements Command {
   public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      request.setCharacterEncoding("euc-kr");
      response.setCharacterEncoding("euc-kr");
     
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String iherbId = request.getParameter("iherbId");
      String iherbPw = request.getParameter("iherbPw");
      String phone = request.getParameter("phone");
      String gender = request.getParameter("gender");
      String birth = request.getParameter("birth");
      
      
      System.out.println(gender); 
      
      PrintWriter out = response.getWriter();

      DAO dao = new DAO();

      int cnt = dao.insert(id, pw, iherbId, iherbPw,  phone, gender, birth);

      if (cnt > 0) {

         VO vo = new VO(id, pw, iherbId, iherbPw, phone, gender, birth);
         request.setAttribute("joinvo", vo);

//      request의 값을 다른 페이지에 보낼 때 사용, 내부서버 페이지만 가능
//         RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
//         dis.forward(request, response);

//      다른 페이지로 이동, 외부, 내부전부가능, 데이터값은 못가져감
//      response.sendRedirect();

//      HttpSession session = request.getSession();
//      session.setAttribute("joinvo", vo);
      } 
      return "main.jsp";
   }
}