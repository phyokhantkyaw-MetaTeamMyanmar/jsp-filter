package com.jdc.filter.demo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/manager/*")
public class ManagerFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		var session = req.getSession(true);
		var user = (String) session.getAttribute("user");
		var role = (String) session.getAttribute("role");
		if (null != user && null != role && "Manager".equals(role)) {
			chain.doFilter(request, response);
		} else {
			req.setAttribute("message", "Login Failed.");
			req.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

}
