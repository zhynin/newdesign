package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.config.Config;
import com.entity.Manager;
import com.sql.dao.SqlHelper;

/**
 * Servlet implementation class ULoginFilter
 */
public class ULoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ULoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String inputEmail = request.getParameter("inputEmail");
		String manager_pwd = request.getParameter("manager_pwd");
		if(null == inputEmail || "".equals(inputEmail) 
				|| null == manager_pwd || "".equals(manager_pwd)
				) {
			response.sendRedirect( "login.jsp?msg=0"); /* 是，则返回login.jsp并且给msg一个值0 */
			return;
		}
		Manager manager = new Manager();
		manager.setManager_id(inputEmail);
		manager.setManager_pwd(manager_pwd);
		SqlHelper sqlHelper = new SqlHelper();
		Manager m = sqlHelper.queryManagerByIdAndPwd(manager);
		if(m == null) {
			response.sendRedirect( "login.jsp?msg=2"); /* 错误的用户名或者密码 */
		}else {
			HttpSession session = request.getSession();
			session.setAttribute(Config.MANAGER_ID, m.getManager_id());
			session.setAttribute(Config.LOGIN_SUCCESS, Config.LOGIN_SUCCESS_VALUE); 	/* 验证 */
			response.sendRedirect("admin/loading.jsp");
		}
		sqlHelper.destroy();
		doGet(request, response);
	}

}
