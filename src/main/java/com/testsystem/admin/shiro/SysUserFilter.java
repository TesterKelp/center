package com.testsystem.admin.shiro;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.User;

public class SysUserFilter extends PathMatchingFilter {

   @Autowired
	 private UserService userService;

   @Override
   protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {

    //   String username = (String)SecurityUtils.getSubject().getPrincipal();
//       request.setAttribute(Constants.CURRENT_USER, userService.findByUsername(username));
       System.out.println("SysUserFilter过滤器起作用...");
		Subject subject = SecurityUtils.getSubject();
		if (!subject.isAuthenticated() && subject.isRemembered()) {
           Object principal = subject.getPrincipal();
           System.out.println("yonghuminf---------------------------==="+principal);
           if (null != principal) {
           	User check  =	userService.getUserByName(String.valueOf(principal));
            //   User user = userSvc.getByUsername(String.valueOf(principal));
               String password = check.getPassword();
               UsernamePasswordToken token = new UsernamePasswordToken(check.getUsername(), password);
               token.setRememberMe(true);
               subject.login(token);//登录
           }
       }
       
		return true;
       
       
       
       
       
       
   }
}
