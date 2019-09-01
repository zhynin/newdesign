package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Speech;
import com.sql.dao.SqlHelper;

/**
 * Servlet implementation class SendSpeech
 */
public class SendSpeech extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SendSpeech() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

//		String speech_id = request.getParameter();
		String speech_user = request.getParameter("speech_user");
//		System.out.println(speech_user);
		String speech_content = request.getParameter("text");
//		System.out.println(speech_content);
		String speech_date = request.getParameter("speech_date");
//		System.out.println(speech_date);


		  if( speech_user == null || speech_date == null) {
		  response.setCharacterEncoding("utf-8"); response.setContentType("text/html");
		  PrintWriter out = response.getWriter(); out.println("<!DOCTYPE html>");
		  out.println("<html>"); out.println("<head>");
		  out.println("<title>servlet</title>"); out.println("</head>");
		  out.println("<body>");
		  out.print("<h1>信息不完整！<a href=\"speech.jsp\">请返回输入</a></h1>");
		  out.println("</body>"); out.println("</html>"); out.flush(); out.close();
		  return; } 
		  Speech speech = new Speech();
		  speech.setSpeech_content(speech_content);
		  speech.setSpeech_date(speech_date);
		  speech.setSpeech_user(speech_user);
		  speech.setSpeech_id(UUID.randomUUID().toString()); SqlHelper sqlHelper = new
		  SqlHelper(); boolean b = sqlHelper.sendSpeech(speech); if (!b) {
		  response.setCharacterEncoding("utf-8"); response.setContentType("text/html");
		  PrintWriter out = response.getWriter(); out.println("<!DOCTYPE html>");
		  out.println("<html>"); out.println("<head>");
		  out.println("<title>servlet</title>"); out.println("</head>");
		  out.println("<body>");
		  out.print("<h1>分享失败<a href=\"speech.jsp\">请返回输入</a></h1>");
		  out.println("</body>"); out.println("</html>"); out.flush(); out.close();
		  }else { response.sendRedirect("discover.jsp"); } sqlHelper.destroy();
		 

	}

}
