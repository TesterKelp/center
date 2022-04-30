package com.testsystem.admin.shiro;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.testsystem.admin.service.GroupService;
import com.testsystem.admin.service.PermissionService;
import com.testsystem.admin.service.SysSetService;
import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.User;
import com.testsystem.admin.vo.Userinfo;
import com.testsystem.helper.Cookies;

public class ShiroRealm extends AuthorizingRealm {
	 @Autowired
	 private UserService userService;
	 @Autowired
	 private GroupService groupService;
	 @Autowired
	 private PermissionService permissionService ;
	 @Autowired
	 private SysSetService sysSetService ;
	 @Autowired
	 private SessionDAO sessionDAO;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		System.out.println("--------------------------------do 2  permission--------------------------------");
//		Subject subject = ShiroKit.getSubject(ai.getController()
//				.getRequest().getServletContext());
//		Subject subject = SecurityUtils.getSubject();  
//		   System.out.println("subject.isRemembered()"+subject.isRemembered());
//		if(!subject.isAuthenticated() && subject.isRemembered()){
//			   System.out.println("isRemembered");
//		}
//		System.out.println("subject.getPrincipals()"+subject.getPrincipals());
		
		
		 String currentUsername = (String)super.getAvailablePrincipal(principals);  
	      List<String> groupList = new ArrayList<String>();  
	      List<String> permissionList = new ArrayList<String>();
		 User user   =	 userService.getUserByName(currentUsername);
		  List<Map<String,Object>> groups = groupService.getGroups(user.getUserid())  ;
		  groups.size();
		  if(null!=groups && groups.size()>0){
			  for(Map<String,Object> group : groups){  
				  groupList.add(group.get("name")+""); 
				  System.out.println("groupid========================"+group.get("groupid"));
				  String a= group.get("groupid").toString() ;
				  int   ii = Integer.parseInt(a );
				   List<Map<String,Object>> permission = permissionService.permissions(ii);
				   if(null!=permission && permission.size()>0){  
	                      for(Map<String,Object> pmss : permission){  
	                          if(!StringUtils.isEmpty(pmss.get("permissioncode") + "")){  
	                              permissionList.add(pmss.get("permissioncode") + "");  
	                          }  
	                      }  
	                  }
			  }
		  }
		  System.out.println("permissionList"+permissionList );
    //Ϊ��ǰ�û����ý�ɫ��Ȩ��  
    SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();  
    simpleAuthorInfo.addRoles(groupList);  
    simpleAuthorInfo.addStringPermissions(permissionList);  
    return simpleAuthorInfo;  
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
		// TODO Auto-generated method stub
		System.out.println("---------------------------------login 1 operation----------------------------------  ");
		UsernamePasswordToken token = (UsernamePasswordToken)authcToken;  
		
		
		String loginName=token.getUsername() ;
		Session currentSession = null;
		Collection<Session> sessions = sessionDAO.getActiveSessions();
		for (Session session : sessions) {
			if (loginName.equals(String.valueOf(session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY)))) {
				session.setTimeout(0);
			}
		}
		
		
		if(token.getPassword().toString() != null && token.getUsername() != null) {
			String username = token.getUsername();
			char [] ch = token.getPassword();
			String password = String.valueOf(ch);
			//		   User check = userService.login(new User(token.getUsername(), password)); 问题可能出现在这里
			User check  =	userService.getUserByName(token.getUsername());
			System.out.println("userid=============="+check.getUserid());
			//				 if (!StringUtils.isBlank(username)) {
			//		                if (check != null) {
			//		                    return new SimpleAuthenticationInfo(check.getUsername(), check.getPassword(), getName());
			//		                }
			//		            }
			//�˴�����ȶ�,�ȶԵ��߼�Shiro����,����ֻ�践��һ����������ص���ȷ����֤��Ϣ  
			//˵���˾��ǵ�һ���������¼�û���,�ڶ���������Ϸ��ĵ�¼����(�����Ǵ���ݿ���ȡ����,������Ϊ����ʾ��Ӳ������)  
			//����һ��,�����ĵ�¼ҳ���Ͼ�ֻ������ָ�����û����������ͨ����֤  
			if (check != null) {
				
				System.out.println("database password ="+check.getPassword());
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
				userinfo.setBg(check.getBg());
				userinfo.setJobname(check.getJobname());
				userinfo.setEnabled(check.getEnabled());
				userinfo.setDept(check.getDept());
				userinfo.setList(groupIds);
				userinfo.setNormal(check.getNormal());
				this.setSession("userinfo", userinfo);
				this.setSession("user", check);
				
				this.setSession("sysinfo", sysSetService.GetSysInfo());
				return authcInfo;
			}
			//û�з��ص�¼�û����Ӧ��SimpleAuthenticationInfo����ʱ,�ͻ���LoginController���׳�UnknownAccountException�쳣  
		}
		return null;  
	}  

	
	
	
	
	 /** 
     * ��һЩ��ݷŵ�ShiroSession��,�Ա�������ط�ʹ�� 
     * @see  ����Controller,ʹ��ʱֱ����HttpSession.getAttribute(key)�Ϳ���ȡ�� 
     */  
    private void setSession(Object key, Object value){  
        Subject currentUser = SecurityUtils.getSubject(); 
        System.out.println("isRemembered()="+currentUser.isRemembered());
        if(null != currentUser){  
            Session session = currentUser.getSession();
            session.setTimeout(-1000l);
            System.out.println("Session[" + session.getTimeout() + "]");  
            if(null != session){  
                session.setAttribute(key, value);  
            }  
        }  
    } 
	
	
	
    public  void dff(){
    	Subject subject = SecurityUtils.getSubject();
    	if (!subject.isAuthenticated() && subject.isRemembered()) {
            Object principal = subject.getPrincipal();
            if (null != principal) {
         //     User user = userSvc.getByUsername(String.valueOf(principal));
       		    User user =	userService.getUserByName(String.valueOf(principal));
                String password = user.getPassword();
                UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), password);
                token.setRememberMe(true);
                subject.login(token);
            }
        }
    	
    	
    }
    
    
    
    
	
	
	
	
}
