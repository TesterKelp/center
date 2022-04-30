package com.testsystem.admin.shiro;


import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.testsystem.admin.service.SysSetService;
import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.User;
import com.testsystem.admin.vo.Userinfo;

public class RememberAuthenticationFilter extends FormAuthenticationFilter {  
    

	 @Autowired
	 private UserService userService;
		@Autowired
		private SysSetService sysSetService ;
		 /**
	        * 这个方法决定了是否能让用户登录
	        */  
    @Override  
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {  
        Subject subject = getSubject(request, response);  
  
      //如果 isAuthenticated 为 false 证明不是登录过的，同时 isRememberd 为true 证明是没登陆直接通过记住我功能进来的
        if(!subject.isAuthenticated() && subject.isRemembered()){  
  
        	//获取session看看是不是空的
            Session session = subject.getSession(true);  
            //随便拿session的一个属性来看session当前是否是空的，我用userId，你们的项目可以自行发挥
            if(session.getAttribute("userId") == null){  
            	//如果是空的才初始化，否则每次都要初始化，项目得慢死
                //这边根据前面的前提假设，拿到的是username
                String username = subject.getPrincipal().toString();  
                ////在这个方法里面做初始化用户上下文的事情，比如通过查询数据库来设置session值，你们自己发挥
        //       globalUserService.initUserContext(username, subject);  
                User check  =	userService.getUserByName(username);
            	if (check != null) {
    				AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(check.getUsername(), check.getPassword(),
    						this.getName());
    				List groupIds;
    				// ����ݿ��л�ȡ��ǰ��¼�û�����ϸ��Ϣ
    				Userinfo userinfo = new Userinfo();
    				groupIds = userService.getUserGroupsByUserId(check.getUserid());
    				userinfo.setUserid(check.getUserid());
    				userinfo.setUsername(check.getUsername());
    				userinfo.setPassword(check.getPassword());
    				userinfo.setEnglishname(check.getEnglishname());
    				userinfo.setRealname(check.getRealname());
    				userinfo.setUseravatar(check.getUseravatar());
    				userinfo.setUseremail(check.getUseremail());
    				userinfo.setQq(check.getQq());
    				userinfo.setJobname(check.getJobname());
    				userinfo.setEnabled(check.getEnabled());
    				userinfo.setDept(check.getDept());
    				userinfo.setBg(check.getBg());
    				userinfo.setList(groupIds);
    				System.out.println("userid:" + check.getUserid() + "Normal:" + check.getNormal());
    				userinfo.setNormal(check.getNormal());
    				this.setSession("userinfo", userinfo);
    				this.setSession("user", check);
    				this.setSession("sysinfo", sysSetService.GetSysInfo());
    			}
            }  
            
            
        }  
  
        //�����������ֻ���� subject.isAuthenticated() �������Ǽ��� subject.isRemembered() ����ͬʱҲ����remember�������  
        return subject.isAuthenticated() || subject.isRemembered();  
        
        
    }  
    
    
	 /** 
     * ��һЩ��ݷŵ�ShiroSession��,�Ա�������ط�ʹ�� 
     * @see  ����Controller,ʹ��ʱֱ����HttpSession.getAttribute(key)�Ϳ���ȡ�� 
     */  
    private void setSession(Object key, Object value){  
        Subject currentUser = SecurityUtils.getSubject(); 
        System.out.println("currentUser.isRemembered()"+currentUser.isRemembered());
        if(null != currentUser){  
            Session session = currentUser.getSession();  
            System.out.println("Session[" + session.getTimeout() + "]");  
            if(null != session){  
                session.setAttribute(key, value);  
            }  
        }  
    } 
    
    
    
    
    
    
}
