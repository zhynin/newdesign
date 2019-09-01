package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Manager;
import com.sql.dao.SqlHelper;

/**
 * Servlet implementation class EeleteManager
 */
public class EeleteManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EeleteManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String manager_id = request.getParameter("manager_id");
		if(!(manager_id == null || "".equals(manager_id))) {
			Manager manager = new Manager();
			manager.setManager_id(manager_id);
			SqlHelper sqlHelper = new SqlHelper();
			sqlHelper.deleteManager(manager);
			sqlHelper.destroy();
		}
		response.sendRedirect("managerList.jsp");
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
