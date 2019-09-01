package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Manager;
import com.sql.dao.SqlHelper;
import com.tools.DeFuns;

/**
 * Servlet implementation class InsertManager
 */
public class InsertManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String manager_id = request.getParameter("manager_id");
		String manager_name = request.getParameter("manager_name");
		String manager_pwd = request.getParameter("manager_pwd");
		
		Manager manager = new Manager();
		manager.setManager_id(DeFuns.convertoUtf8(manager_id));
		manager.setManager_name(DeFuns.convertoUtf8(manager_name));
		manager.setManager_pwd(manager_pwd);
		if(manager.getManager_id() == null || "".equals(manager.getManager_id())
				|| manager.getManager_name() == null || "".equals(manager.getManager_name())
				|| manager.getManager_pwd() == null || "".equals(manager.getManager_pwd())
				) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
		    PrintWriter out = response.getWriter();	        
		    out.println("<!DOCTYPE html>");
		    out.println("<html>");
		    out.println("<head>");
		    out.println("<title>servlet</title>");
		    out.println("</head>");
		    out.println("<body>");
		    out.print("<h1>请把信息输完整!<a href=\"addManager.jsp\">请返回输入</a></h1>");
		    out.println("</body>");
		    out.println("</html>");
		    out.flush();
		    out.close();
		}else {
			SqlHelper sqlHelper = new SqlHelper();
			if(sqlHelper.queryManagerById(manager.getManager_id())!=null) {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
			    PrintWriter out = response.getWriter();	        
			    out.println("<!DOCTYPE html>");
			    out.println("<html>");
			    out.println("<head>");
			    out.println("<title>servlet</title>");
			    out.println("</head>");
			    out.println("<body>");
			    out.print("<h1>用户已经存在！<a href=\"addManager.jsp\">请返回输入</a></h1>");
			    out.println("</body>");
			    out.println("</html>");
			    out.flush();
			    out.close();				
			}else {
				@SuppressWarnings("unused")
				boolean b = sqlHelper.insertManager(manager);
			}
			
			sqlHelper.destroy(); // 记得过河拆桥
			response.sendRedirect("managerList.jsp");
		}
		
		
		
		doGet(request, response);
	}

}
