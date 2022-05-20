package com.inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command { 
	// 인터페이스 : 기능 구현X(중괄호X)
	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException;
}
