package controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

public class AuthorizationFilter implements Filter {
	private ServletContext context;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		HttpSession session = request.getSession();
		String url = request.getRequestURI();
		if (url.contains("/admin")) {
			User user = (User) session.getAttribute("USER");
			if (user != null) {
				if (user.getRoleId().getName().equalsIgnoreCase("admin")) {
					chain.doFilter(servletRequest, servletResponse);
				} else if (user.getRoleId().getName().equalsIgnoreCase("author")) {
					if (url.endsWith("author")) {
						chain.doFilter(servletRequest, servletResponse);
					} else {
						response.sendRedirect(request.getContextPath() + "/account-login");
					}
				} else if (user.getRoleId().getName().equalsIgnoreCase("user")) {
					response.sendRedirect(request.getContextPath() + "/account-login");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/account-login");
			}
		} else {
				chain.doFilter(servletRequest, servletResponse);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.context = filterConfig.getServletContext();
	}

}
