package com.testsystem.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.service.PermissionService;
import com.testsystem.admin.service.UserService;
import com.testsystem.admin.utils.EndecryptUtils;
import com.testsystem.admin.utils.SysInfoUtil;
import com.testsystem.admin.utils.UserUtil;
import com.testsystem.admin.vo.Member;
import com.testsystem.api.common.ListFormatToString;
import com.testsystem.helper.Cookies;
import com.testsystem.helper.JsonAndString;
import com.testsystem.helper.U;
import com.testsystem.navigation.service.NavService;
import com.testsystem.navigation.vo.Udate;

import net.sf.json.JSONObject;
@Controller
public class UserAction {

	@Autowired
	private UserService userService ;
	@Autowired
	private PermissionService permissionService ;
	
	@Autowired 
	private NavService navService ;
	
	
	private List moduleList ;

	@RequestMapping(value ="/module/admin/getUserList.do", method = RequestMethod.GET)
	public void AddC(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		moduleList =  userService.GetUserList() ;
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	@RequestMapping(value ="/module/admin/userLogin.do", method = RequestMethod.POST)
	public void UserLogin(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String  jsonstr =  JsonAndString.ListToJsonToString(moduleList);	
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	
	
	

	@RequestMapping(value ="/admin_login.do", method = RequestMethod.GET)
	public String index(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
//		if(UserUtil.getCurrentUser() == null) {
//			return "redirect:/loginPage.do";
//		}
//		if(UserUtil.getCurrentUserinfo() == null) {
//			return "redirect:/loginPage.do";
//		}

		if(U.GetUserId(request)==0){
			return "redirect:/loginPage.do";
		}
		
		
		List  groups=    UserUtil.getCurrentUserinfo().getList();
		int normal =UserUtil.getCurrentUserinfo().getNormal() ;
		System.out.println("---------------------------------"+normal);
		if(normal==1){ //前台用户
			moduleList=	permissionService.MenuByGroupId(14);
		}else{
			System.out.println("groupsgroupsgroupsgroupsgroupsgroups:"+groups);
			String sql=" select distinct  p.permissionid ,p.name, p.url ,p.pid ,p.icon FROM admin_group_permission  gp  ,admin_permission  p where  gp.permission_id=p.permissionid  and    p.type=1  and gp.checkstatus=1  and      ( gp.group_id= ";
			if(groups.size()!=0){
				for(int i = 0; i < JsonAndString.ListToJsonArray(groups).size(); i++){
					JSONObject op = (JSONObject) JsonAndString.ListToJsonArray(groups).get(i);
					if (i == 0) {
						sql = sql + op.getString("groupid") ;
					} else  {
						sql = sql +" or  gp.group_id="+ op.getString("groupid") ;
					} 
				}
	sql =sql +")  and p.state=1  order by p.sort ";	
			}
			System.out.println("sssssssssssssqqqqqqqqqqqqqqqqqqqqqqqqqqqqqlllllllllllll:"+sql);
			moduleList=	permissionService.MenuByGroups(sql);
		}
		
//		int userid = UserUtil.getCurrentUserinfo().getUserid() ;
		int userid =U.GetUserId(request) ;
		String  blogmenu = "";
		String menu="";
		int first =0 ;
		String c="  </ul> </li>";
		for (int i = 0; i < JsonAndString.ListToJsonArray(moduleList).size(); i++) {
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
			String str =ob.getString("pid").toString() ;
			System.out.println("piddddddddddddddddddddddddddd:"+str);
			if (str.equals("0")) {
				System.out.println("pid:"+ob.getString("pid"));
				if (first != 0) {
					menu = menu + c;
				}
				String  a=	"<li><a href='#'><i class='"+ob.getString("icon")+"'></i> <span class='nav-label'>"+ob.getString("name")+"</span><span class='fa arrow'></span></a><ul class='nav nav-second-level'>" ;
				menu = menu + a;
				first =1;
			} else {
				String  b=  "<li> <a class='J_menuItem '  href='"+ob.getString("url")+"'>"+ob.getString("name")+"</a></li> "  ;
				menu = menu + b;
			}
		}
		menu =blogmenu + menu + c;
		System.out.println("menu:"+menu);
		map.put("menu", menu);
		System.out.println("touxiang:"+UserUtil.getCurrentUser().getUseravatar());
		map.put("useravatar", UserUtil.getCurrentUser().getUseravatar());
		map.put("username",UserUtil.getCurrentUser().getUsername());
		map.put("userid",UserUtil.getCurrentUser().getUserid());
		return "/menu/index" ;
	}
	

	
	/**
	 * 
	 * 原来使用的是login.jsp直接登录。想在想记录请求的链接添加.login.do 请求来获取上个页面，供登录成功进行跳转
	 * @param map
	 * @param response
	 * @param request
	 * @return
	 * @throws IOException
	 */
	
	@RequestMapping(value ="/loginPage.do", method = RequestMethod.GET)
	public String indexd(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
	//	https://blog.csdn.net/qq_41038929/article/details/84227990
		String url = request.getHeader("referer") ;
		if(url==null||url.equals("")){
			url="0";
		}
		map.put("referer", url);
		return "module/usercenter/login";
	}

	@RequestMapping(value ="/module/usercenter/testindex.do", method = RequestMethod.POST)
	public String login(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String username = request.getParameter("j_username");
		String password = request.getParameter("j_password");
		String referer  = request.getParameter("referer");
		if(username==null||username.equals("")){username="123";}
		if(password==null||password.equals("")){password="123";}
		password= EndecryptUtils.md5Password(username, password);
		String  rememberMe    = request.getParameter("rememberMe"); 
		boolean b = Boolean.valueOf(rememberMe);
		System.out.println("jizhumima====:"+rememberMe+"referer="+referer);
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		try {
			token.setRememberMe(b);
			currentUser.login(token);
			if(b){
				Cookies.addCookie("userid", UserUtil.getCurrentUserinfo().getUserid()+"", response);
			}else{
				Cookies.delCookie(request, response);
			}
			if(referer.equals("0")){
				return "redirect:/loginPage.do";
			}else if(referer.equals("testindex.do")){
				return "redirect:/module/usercenter/personinfo.jsp";
			}else if(referer.equals("register.jsp")){
				return "redirect:/module/usercenter/personinfo.jsp";
			}else if(referer==null||referer.equals("")){
				System.out.println("referer is null"+referer);
				return "redirect:/module/usercenter/personinfo.jsp";
			}else if(referer.equals("loginPage")){
				return "redirect:/module/usercenter/personinfo.jsp";
			}else{  
				return "redirect:"+referer;
			}

		} catch (AuthenticationException e) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			token.clear();
			map.put("msg", "用户名/密码不匹配");
			// return"redirect:module/usercenter/login.jsp";
			return "module/usercenter/login";
		}
	}
	
/**
 * login   interface 	
 */
	@RequestMapping(value ="/module/usercenter/userlogin.do", method = RequestMethod.POST)
	public void logirn(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String rs ;
		String username = request.getParameter("j_username");
		String password = request.getParameter("j_password");
		if(username==null||username.equals("")){username="123";}
		if(password==null||password.equals("")){password="123";}
		password= EndecryptUtils.md5Password(username, password);
		String  rememberMe    = request.getParameter("rememberMe"); 
		boolean b = Boolean.valueOf(rememberMe);
		System.out.println("rememberMe=="+rememberMe);
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		try {
			token.setRememberMe(b);
			currentUser.login(token);
			if(b){
				Cookies.addCookie("userid", UserUtil.getCurrentUserinfo().getUserid()+"", response);
			}else{
				Cookies.delCookie(request, response);
			}
			rs="1" ;
		} catch (AuthenticationException e) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			token.clear();
			rs ="用户名/密码不匹配";
		}
		    System.out.println("rs====" + rs);
		    response.setContentType("text/html; charset=utf-8");
		    response.getWriter().write(rs);
		    response.getWriter().flush();
	}
	
	/**
	 *  logout  interface 	
	 */	
	
	@RequestMapping(value ="/userlogout.do", method = RequestMethod.GET)
	public void userlogout(HttpSession session ,HttpServletResponse response,HttpServletRequest request)throws Exception{
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		Cookies.delCookie(request, response);
		response.setContentType("text/html; charset=utf-8");
	    response.getWriter().write("1");
	    response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value ="/module/usercenter/loginPage.do", method = RequestMethod.POST)
	public String lo1girn(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String username = request.getParameter("j_username");
		String password = request.getParameter("j_password");
		String url = request.getParameter("j_url");// login sucessfull  redirect page 
		if(username==null||username.equals("")){username="123";}
		if(password==null||password.equals("")){password="123";}
		password= EndecryptUtils.md5Password(username, password);
		String  rememberMe    = request.getParameter("rememberMe"); 
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		if(rememberMe.equals("true")){token.setRememberMe(true);}
		try {
			currentUser.login(token);
			System.out.println(SysInfoUtil.getSysInfo().getDefaultpage() + "2222" + SysInfoUtil.getSysInfo().getUrl());
			if (url == null || url.equals("")) {
			} else {
				return "redirect:" + url;
			}
		} catch (AuthenticationException e) {
			// 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
			token.clear();
			map.put("msg", "用户名/密码不匹配");
			return "module/usercenter/login";
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	 通过接口实现登录，此处已经忘记是否可用。 应该是可以的通过调用这个接口实现登录
	  @RequestMapping(value={"/module/usercenter/apptestindex.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void Apilogin(ModelMap map, HttpServletResponse response, HttpServletRequest request)
	    throws IOException
	  {
	    String rsstatus;
	    String message;
	    String username = request.getParameter("j_username");
	    String password = request.getParameter("j_password");

	    boolean LoginSuccess = false;
	    if ((username == null) || (username.equals("")))
	      username = "123";

	    if ((password == null) || (password.equals("")))
	      password = "123";

	    password = EndecryptUtils.md5Password(username, password);
	    String rememberMe = request.getParameter("rememberMe");
	    Subject currentUser = SecurityUtils.getSubject();
	    UsernamePasswordToken token = new UsernamePasswordToken(username, password);
	    if (rememberMe.equals("true"))
	      token.setRememberMe(true);
	    try
	    {
	      currentUser.login(token);
	      System.out.println("1111111" + SysInfoUtil.getSysInfo().getDefaultpage() + "2222" + SysInfoUtil.getSysInfo().getUrl());
	      LoginSuccess = true;
	    } catch (AuthenticationException e) {
	      token.clear();
	    }
	    if (LoginSuccess) {
	      rsstatus = "200";
	      message = "LoginSuccess";
	    } else {
	      rsstatus = "10001";
	      message = "LoginFaile";
	    }
	    String rs = ListFormatToString.StringFormatJsonString("1", rsstatus, message, "hello");
	    System.out.println("rs====" + rs);
	    response.setContentType("text/html; charset=utf-8");
	    response.getWriter().write(rs);
	    response.getWriter().flush();
	  }

	
	
	
	
//  logout  the site 	
	@RequestMapping(value ="/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletResponse response,HttpServletRequest request)throws Exception{
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		Cookies.delCookie(request, response);
		return "redirect:/loginPage.do";
	}
	
//   getUserName	
	@RequestMapping(value ="/module/admin/getUserName.do", method = RequestMethod.GET)
	public void Ad(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String  jsonstr=""; 
		   int userid = U.GetUserId(request);
			if(userid==0){
				jsonstr  = "  <div class='tougao'> <a href='/module/usercenter/login.jsp'  style='color:#FFFFFF' >登录</a> </div>   <div class='tougao'>   <a href='/module/usercenter/register.jsp' style='color:#FFFFFF' >注册</a>    </div>   <div style='clear:both'></div>  "; 
			}else{
				Member member =userService.GetMemberByUserId(userid);
				System.out.println("username===================================="+member.getUsername());
				jsonstr  = "  <div class='tou'> <a  href='/logout.do' >（退出）</a>  </div>  <div class='tou'><a href='/module/usercenter/personinfo.jsp'>个人中心</a></div> <div class='t' style='width:150px;'> <a href='/blog/"+userid+".do'  > "+member.getUsername() +"您好！  </a></div> ";
			}
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	

	@RequestMapping(value ="/module/admin/getUserJson.do", method = RequestMethod.GET)
	public void Adf(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String  jsonstr=""; 
		   int userid = U.GetUserId(request);
			if(userid==0){
				jsonstr  = "  <div class='tougao'> <a href='/module/usercenter/login.jsp'  style='color:#FFFFFF' >登录</a> </div>   <div class='tougao'>   <a href='/module/usercenter/register.jsp' style='color:#FFFFFF' >注册</a>    </div>   <div style='clear:both'></div>  "; 
			}else{
				Member member =userService.GetMemberByUserId(userid);
				System.out.println("username===================================="+member.getUsername());
				jsonstr  = "  <div class='tou'> <a  href='/logout.do' >（退出）</a>  </div>  <div class='tou'><a href='/module/usercenter/personinfo.jsp'>个人中心</a></div> <div class='t' style='width:150px;'> <a href='/blog/"+userid+".do'  > "+member.getUsername() +"您好！  </a></div> ";
			}
			
			
			
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
//  getUserName	
	@RequestMapping(value ="/module/adminn/getUserName.do", method = RequestMethod.GET)
	public void Addd(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		String  jsonstr=""; 
		   int userid = U.GetUserId(request);
			if(userid==0){
				jsonstr  = "  <a href='/module/usercenter/login.jsp'   >登录</a> | <a href='/module/usercenter/register.jsp'  >注册</a>     "; 
			}else{
				Member member =userService.GetMemberByUserId(userid);
				System.out.println("username===================================="+member.getUsername());
				jsonstr  = "  <a href='/blog/"+userid+".do'  > "+member.getUsername() +"您好！  </a>  | <a  href='/logout.do' >（退出）</a> |  <a href='/module/usercenter/personinfo.jsp'>个人中心</a>  ";
		
			}
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}	
	
	
	
	
//  judge this user is login  or  logout	
	@RequestMapping(value ="/module/admin/IsLogin.do", method = RequestMethod.GET)
	public void Aad(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		 System.out.println("IsLogin.do");
		String  jsonstr="";
		 Subject subject = SecurityUtils.getSubject();
	        //判断是否登录，如果未登录，则登录
	        if (!subject.isAuthenticated()) {
	        	jsonstr  ="0"; 
	        	System.out.println("没有登录");
	        }else{
	        	System.out.println("已经登录");
	        	jsonstr  ="1"; 
				System.out.println("userid==="+UserUtil.getCurrentUser().getUserid() );
	        }
	        
	    int userid=    U.GetUserId(request);
	     if(userid==0)  {
	    	 jsonstr="0";
	     } else{
	    	 jsonstr= "1" ;
	     }
	        
	        
		System.out.println("jsonstr"+jsonstr );
		response.getWriter().write(jsonstr);
		response.getWriter().flush();
	}
	
	
	
	@RequestMapping(value ="/module/admin/GetUserId.do", method = RequestMethod.GET)
	public void Aadd(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		int userid=0 ;
		 Subject subject = SecurityUtils.getSubject();
	        //判断是否登录，如果未登录，则登录
	        if (subject.isRemembered()) {
        		String  value= Cookies.showCookies("userid", request);
 	        	System.out.println("记住登录,userid="+value);
 	    		userid = Integer.parseInt(value);
 	        }else if (subject.isAuthenticated()){
 	        	System.out.println("已经登录");
 	    		int a=UserUtil.getCurrentUser().getUserid();
 				userid =UserUtil.getCurrentUserinfo().getUserid();
 	        }else{
 	        	userid  =0 ; 
	        	System.out.println("没有登录,没有记住密码");
 	        }
		response.getWriter().write(userid+"");
		response.getWriter().flush();
	}
	
	
	
	
	@RequestMapping(value ="/module/usercenter/index.do", method = RequestMethod.GET)
	public String usercenter(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		int userid=0 ;
		Subject subject = SecurityUtils.getSubject();
		if (subject.isRemembered()) {
    		String  value= Cookies.showCookies("userid", request);
	    		    userid = Integer.parseInt(value);
	        }else if (subject.isAuthenticated()){
	    		int a=UserUtil.getCurrentUser().getUserid();
				userid =UserUtil.getCurrentUserinfo().getUserid();
	        }else{
	        	userid  =0 ; 
	        }
		
		
		Member member =userService.GetMemberByUserId(userid);
		
		map.put("member", member);
		
		return "/module/usercenter/usercenter";
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="/user/GetUserData.do", method = RequestMethod.GET)
	public void Aadssssd(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{
		System.out.println("/user/GetUserData.do");
		Udate udate= new Udate();
		int userid=0 ;
	        userid =   U.GetUserId(request) ;
	        String bg ="/index/bg/win2.jpg";
			int islogin = 0;
			int picmodle = 0 ;
			String temp="";
			List lst = null ;
	    if(userid==0){
	    
	    }else{
	    	    islogin = 1 ;
	    	    temp= navService.GetIndexBackGround(userid);
				lst = navService.NavList(userid);
				udate =navService.GetUdate(userid) ;
				picmodle = navService.GetUdate(userid).getPicmodel();

	    }   
	    if(temp==null||temp.equals("")){
			
		}else{
			bg=temp ;
		}
	    
	    
	    
	    Map  mp =new HashMap();
	    mp.put("islogin", islogin);
	    mp.put("u", udate);
	    mp.put("picmodle", picmodle);
	    mp.put("lst", lst);
	    mp.put("bg", bg);
	    
	    ObjectMapper objectMapper = new ObjectMapper();
	    String json = objectMapper.writeValueAsString(mp);
		response.getWriter().write(json);
		response.getWriter().flush();
	}
	
	
	
	
	
	
	
	
	
	
	

	
	
	
}
