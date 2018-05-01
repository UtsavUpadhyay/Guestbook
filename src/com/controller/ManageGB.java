package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAOobj.Daoaccess;

import bean.Userbean;

/**
 * Servlet implementation class ManageGB
 */
public class ManageGB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageGB() {
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
		
		Daoaccess dao = new Daoaccess();
		Userbean u = new Userbean();
		
		String id=request.getParameter("id");
		u.setUser_id(id);
		String del =  request.getParameter("del");
		String approve = request.getParameter("approve");
		if(del != null){
		dao.deletion(u);
		response.setStatus(200);
		ArrayList<Userbean> userbean = new ArrayList<>();
		
		userbean = dao.DataManageFetch();
		request.setAttribute("userbeanarray", userbean);
		RequestDispatcher rd=request.getRequestDispatcher("manage.jsp");
		rd.include(request, response);
		}
		else{
		
		dao.updation(u);
		response.setStatus(200);
		ArrayList<Userbean> userbean = new ArrayList<>();
			
		userbean = dao.DataManageFetch();
		request.setAttribute("userbeanarray", userbean);
		RequestDispatcher rd=request.getRequestDispatcher("manage.jsp");
		rd.include(request, response);
		
		
		}
	}

}
