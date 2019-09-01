package com.user.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.config.Config;

// 继承servlet的包
public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response; 	/* 不合法则跳转登录页面 */
		HttpSession session = req.getSession();
		if(session.getAttribute(Config.MANAGER_ID) == null 
				|| "".equals(session.getAttribute(Config.MANAGER_ID).toString())
				|| session.getAttribute(Config.LOGIN_SUCCESS) == null
				|| !Config.LOGIN_SUCCESS_VALUE.equals(session.getAttribute(Config.LOGIN_SUCCESS).toString())
				) {
			res.sendRedirect("../login.jsp");
			return;
		}
		chain.doFilter(request, response); 	/* 实现过滤 */
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	

}
