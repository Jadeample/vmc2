package com.amaker.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession();
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        Object name = session.getAttribute("name");
        if(name!=null){
            filterChain.doFilter(request,response);
        }else{
            response.sendRedirect("../login.jsp");
        }

    }

    @Override
    public void destroy() {

    }

}
