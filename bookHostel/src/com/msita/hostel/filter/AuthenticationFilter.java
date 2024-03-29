package com.msita.hostel.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter({"/home","/hostList","/deleteUser","/userList","/hostPage","/listRequestHost","/viewContract","/viewUser","/viewRoom","/updateUser","/setStatus","/requestHost","/searchRoom","/listContractUser","/roomList","/listAllRoom","/addRoom","/adminPage","/changePassword","/deleteRoom","/searchRoom","/findRoom","/updateRoom","/findByPrice","/logout"})
public class AuthenticationFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthenticationFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("username")!= null) {
			chain.doFilter(request,response); 
		} else {
			RequestDispatcher dispatcher = httpReq.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
	        dispatcher.forward(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
