package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOobj.Daoaccess;

import bean.Userbean;

/**
 * Servlet implementation class Valid
 */
public class Valid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Valid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("uname");
		String pass=request.getParameter("password");
		Daoaccess dao=new Daoaccess();
		
		if(dao.valid(username, pass))
		{
			
			//response.sendRedirect("manage.jsp");
			ArrayList<Userbean> userbean = new ArrayList<>();
			
			userbean = dao.DataManageFetch();
			request.setAttribute("userbeanarray", userbean);
			RequestDispatcher rd=request.getRequestDispatcher("manage.jsp");
			rd.include(request, response);
		}
		else
			response.sendRedirect("login.jsp");
	}

}
