package com.testsystem.admin.shiro;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.jsp.JspWriter;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.User;

/**
 * Servlet Filter implementation class ShiroRememberMe
 */
public class ShiroRememberMe implements Filter {

    /**
     * Default constructor. 
     */
    public ShiroRememberMe() {
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
		// TODO Auto-generated method stub
		// place your code here
System.out.println("----------------------------------runner  filter --   ");
//		Subject subject = SecurityUtils.getSubject();
//		if (!subject.isAuthenticated() && subject.isRemembered()) {
//            Object principal = subject.getPrincipal();
//            System.out.println("yonghuminf---------------------------==="+principal);
//            
//            if (null != principal) {
//                JspWriter out=pageContext.getOut();   
//   	         ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
//       	        UserService userService = (UserService) ctx.getBean("userServiceImpl");
//            	User check  =	userService.getUserByName(String.valueOf(principal));
//             //   User user = userSvc.getByUsername(String.valueOf(principal));
//                String password = check.getPassword();
//                UsernamePasswordToken token = new UsernamePasswordToken(check.getUsername(), password);
//                token.setRememberMe(true);
//                subject.login(token);//µÇÂ¼
//            }
 //       }
		
		
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
