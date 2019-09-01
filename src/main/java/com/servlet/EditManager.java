package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Manager;
import com.sql.dao.SqlHelper;
import com.tools.DeFuns;

/**
 * Servlet implementation class EditManager
 */
public class EditManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
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
		    out.print("<h1>请把信息输完整!<a href=\"managerList.jsp\">请返回列表</a></h1>");
		    out.println("</body>");
		    out.println("</html>");
		    out.flush();
		    out.close();
		}else {
			SqlHelper sqlHelper = new SqlHelper();
			boolean flag = sqlHelper.updateManagernameandpwd(manager);
			sqlHelper.destroy(); // 记得过河拆桥
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
		    PrintWriter out = response.getWriter();	        
		    out.println("<!DOCTYPE html>");
		    out.println("<html>");
		    out.println("<head>");
		    out.println("<title>servlet</title>");
		    out.println("</head>");
		    out.println("<body>");
		    out.println(flag?"修改成功":"修改失败");
		    out.print("<a href=\"managerList.jsp\">返回列表</a>");
		    out.println("</body>");
		    out.println("</html>");
		    out.flush();
		    out.close();
			
			response.sendRedirect("managerList.jsp");
		}
		
		
		
		doGet(request, response);
	}

}
