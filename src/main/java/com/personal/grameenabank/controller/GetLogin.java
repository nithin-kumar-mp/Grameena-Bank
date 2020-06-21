package com.personal.grameenabank.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.personal.grameenabank.Model;

/**
 * Servlet implementation class GetLogin
 */
public class GetLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Model model =new Model();
		boolean res = model.authenticateLogin();
		System.out.println(res);
	}

}
