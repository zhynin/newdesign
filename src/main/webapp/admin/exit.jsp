<%@page import="com.config.Config"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/* 释放Session */
	javax.servlet.http.HttpSession sess =  request.getSession();
	sess.removeAttribute(Config.MANAGER_ID); 
	sess.removeAttribute(Config.LOGIN_SUCCESS);
	response.sendRedirect( "login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>