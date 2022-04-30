package com.testsystem.wift.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.helper.DataFormat;
import com.testsystem.helper.JsonAndString;
import com.testsystem.utils.Constants;
import com.testsystem.wift.service.InterfaceService;
import com.testsystem.wift.vo.InterfaceIndex;
import com.testsystem.wift.vo.RequestHeader;
import com.testsystem.wift.vo.RequestParamete;
import com.testsystem.wift.vo.ResponseHeader;
import com.testsystem.wift.vo.ResponseParamete;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/wift")
public class WiftInterfaceController {

	  @Autowired
	  private InterfaceService faceService;
	  
	  private InterfaceIndex interfaceDoc = new InterfaceIndex();
	  private RequestParamete requestParamete = new RequestParamete();
	  private ResponseParamete responseParamete = new ResponseParamete();
	  private RequestHeader requestHeader = new RequestHeader();
	  private ResponseHeader responseHeader = new ResponseHeader();
	
	
	  private List moduleList ;
	  
	  
	  
	  
//	
//	新功能  新添加 
//	
	
	@RequestMapping(value ="/Wift_InterfaceStandardManage.do", method = RequestMethod.GET)
	public String GetTasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("jsonstr" );
		return  Constants.WIFTDIR+"Wift_InterfaceStandardManage";
	}
	
	
	@RequestMapping(value ="/Wift_TestJson.do", method = RequestMethod.GET)
	public String GetTaskdds(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("jsonstr" );
		return  Constants.WIFTDIR+"Wift_TestJson";
	}
	
	
	@RequestMapping(value ="/Wift_InterfaceStandardCreate.do", method = RequestMethod.GET)
	public String GetTrasks(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		System.out.println("jsonstr" );
		return  Constants.WIFTDIR+"Wift_InterfaceStandardCreate";
	}
	
/****
 * 	
 * @param map
 * @param response
 * @param request
 * @throws IOException
 * 
 * create interface document 
 */
	
	 @RequestMapping(value={"/CreateInterface.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
	  public void CreateFace(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException
	  {
//	    int i=0;
	    boolean HasRequestParameter = true;
	    boolean HasResponseParameter = true;
	    boolean HasRequestHeaderParameter = true;
	    boolean HasResponseHeaderParameter = true;

	    int projectid = Integer.parseInt(request.getParameter("projectid"));
	    int environmentid = Integer.parseInt(request.getParameter("environmentid"));
	    int moduleid = Integer.parseInt(request.getParameter("moduleid"));
	    String interfacename = request.getParameter("facename");
	    String interfacedesc = request.getParameter("content");
	    String requesttype = request.getParameter("requesttype");
	    String directories = request.getParameter("directories");
	    String createtime = DataFormat.DataTime();
	    String jsonstr = request.getParameter("jsonstr");
	    int userid = UserUtil.getCurrentUserinfo().getUserid();

	    this.interfaceDoc.setProjectid(projectid);
	    this.interfaceDoc.setModuleid(moduleid);
	    this.interfaceDoc.setInterfacename(interfacename);
	    this.interfaceDoc.setInterfacedesc(interfacedesc);
	    this.interfaceDoc.setRequesttype(requesttype);
	    this.interfaceDoc.setDirectories(directories);
	    this.interfaceDoc.setCreatetime(createtime);
	    this.interfaceDoc.setUserid(userid);
	    this.interfaceDoc.setEnvironmentid(environmentid);

	    int interfaceId = this.faceService.CreateInterfaceIndex(this.interfaceDoc);
	    this.faceService.SaveJson(interfaceId, jsonstr);

	    System.out.println("it  is   iioiiiiiiiiiiiiiiiiiiii" + interfaceId);
	    String[] a = request.getParameterValues("RequestParameterName");
	    if ((a == null) || (a[0] == null) || (a[0].equals(""))) {
	      HasRequestParameter = false;
	      System.out.println("HasRequestParameter =false ;");
	    }
	    String[] aa = request.getParameterValues("ResponseParameterName");
	    if ((aa == null) || (aa[0] == null) || (aa[0].equals(""))) {
	      HasResponseParameter = false;
	      System.out.println("HasResponseParameter =false");
	    }
	    String[] aaa = request.getParameterValues("RequestHeaderParameterName");
	    if ((aaa == null) || (aaa[0] == null) || (aaa[0].equals(""))) {
	      HasRequestHeaderParameter = false;
	      System.out.println("HasRequestHeaderParameter =false");
	    }

	    String[] aaaa = request.getParameterValues("ResponseHeaderParameterName");
	    if ((aaaa == null) || (aaaa[0] == null) || (aaaa[0].equals(""))) {
	      HasResponseHeaderParameter = false;
	      System.out.println("HasResponseHeaderParameter =false");
	    }

	    if (HasRequestParameter) {
	      String[] b = request.getParameterValues("RequestParameterRequired");
	      String[] c = request.getParameterValues("RequestParameterType");
	      String[] d = request.getParameterValues("RequestParameterDefaultValue");
	      String[] e = request.getParameterValues("RequestParameterDescription");
	      System.out.println("a.length=" + a.length + "b.length=" + b.length);
	      for (int i = 0; i < a.length; ++i) {
	        this.requestParamete.setInterfaceId(interfaceId);
	        this.requestParamete.setRquestParameterName(a[i]);
	        this.requestParamete.setRquestParameterRequired(Integer.parseInt(b[i]));
	        this.requestParamete.setRquestParameterType(Integer.parseInt(c[i]));
	        this.requestParamete.setRquestParameterDefaultValue(d[i]);
	        this.requestParamete.setRquestParameterDescription(e[i]);
	        this.requestParamete.setRquestParameterSort(i + 1);
	        System.out.println(a[i] + "-" + b[i] + "-" + c[i] + "-" + d[i] + "-" + e[i]);
	        this.faceService.CreateInterfaceRequest(this.requestParamete);
	      }

	    }

	    if (HasResponseParameter) {
	      String[] bb = request.getParameterValues("ResponseParameterRequired");
	      String[] cc = request.getParameterValues("ResponseParameterType");
	      String[] dd = request.getParameterValues("ResponseParameterDescription");
	      for (int i = 0; i < aa.length; ++i) {
	        System.out.println(aa[i] + "-" + bb[i] + "-" + cc[i] + "-" + dd[i]);
	        this.responseParamete.setInterfaceId(interfaceId);
	        this.responseParamete.setResponseParameterName(aa[i]);
	        this.responseParamete.setResponseParameterRequired(Integer.parseInt(bb[i]));
	        this.responseParamete.setResponseParameterType(Integer.parseInt(cc[i]));
	        this.responseParamete.setResponseParameterDescription(dd[i]);
	        this.responseParamete.setResponseParameterSort(i + 1);
	        this.faceService.CreateInterfaceResponse(this.responseParamete);
	      }
	    }

	    if (HasRequestHeaderParameter)
	    {
	      String[] bbb = request.getParameterValues("RequestHeaderParameterRequired");
	      String[] ccc = request.getParameterValues("RequestHeaderParameterDefaultValue");
	      String[] ddd = request.getParameterValues("RequestHeaderParameterDescription");
	      for (int i = 0; i < aaa.length; ++i) {
	        this.requestHeader.setInterfaceId(interfaceId);
	        this.requestHeader.setRequestHeaderParameterName(aaa[i]);
	        this.requestHeader.setRequestHeaderParameterRequired(Integer.parseInt(bbb[i]));
	        this.requestHeader.setRequestHeaderParameterDefaultValue(ccc[i]);
	        this.requestHeader.setRequestHeaderParameterDescription(ddd[i]);
	        this.requestHeader.setRequestHeaderParameterSort(i + 1);
	        System.out.println(aaa[i] + "-" + bbb[i] + "-" + ccc[i] + "-" + ddd[i]);
	        this.faceService.CreateInterfaceRequestHeader(this.requestHeader);
	      }

	    }

	    if (HasResponseHeaderParameter) {
	      String[] bbbb = request.getParameterValues("ResponseHeaderParameterRequired");
	      String[] cccc = request.getParameterValues("ResponseHeaderParameterDescription");
	      for (int i = 0; i < aaaa.length; ++i) {
	        this.responseHeader.setInterfaceId(interfaceId);
	        this.responseHeader.setResponseHeaderParameterName(aaaa[i]);
	        this.responseHeader.setResponseHeaderParameterRequired(Integer.parseInt(bbbb[i]));
	        this.responseHeader.setResponseHeaderParameterDescription(cccc[i]);
	        this.responseHeader.setResponseHeaderParameterSort(i + 1);
	        System.out.println(aaaa[i] + "-" + bbbb[i] + "-" + cccc[i]);
	        this.faceService.CreateInterfaceResponseHeader(this.responseHeader);
	      }

	    }

	    String html = "ok";
	    System.out.println("projcet" + html);
	    response.getWriter().write(html);
	    response.getWriter().flush();
	  }
	
	
	
/**
 *  
 * @param map
 * @param response
 * @param request
 * @return
 * @throws IOException
 * 
 * Get Inerface info
 */
	 
	 @RequestMapping(value ="/Wift_InterfaceStandardDetail.do", method = RequestMethod.GET)
		public String GetArticle(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
//			int interfaceid = 1 ;
			int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
			moduleList = faceService.GetInterfacDetailById(interfaceid);
			String  temp =faceService.GetJsonStr(interfaceid);
			JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(0);
			map.put("interfaceid", ob.getString("interfaceid"));
			map.put("interfacename", ob.getString("interfacename"));
			map.put("projectname", ob.getString("projectname"));
			map.put("modulename",ob.getString("modulename"));
			map.put("interfacedesc",ob.getString("interfacedesc"));
			map.put("username",ob.getString("username"));
			map.put("requesttype",ob.getString("requesttype"));
			map.put("directories",ob.getString("directories"));
		    map.put("environmentname", ob.getString("environmentname"));
		    map.put("jsonstr", temp);

		    List requestList = this.faceService.GetInterfaceRequestById(interfaceid);
		    List responseList = this.faceService.GetInterfaceResponseById(interfaceid);
		    List requestHeaderList = this.faceService.GetInterfaceRequestHeader(interfaceid);
		    List responseHeaderList = this.faceService.GetInterfaceResponseHeader(interfaceid);
		    map.put("requestList", requestList);
		    map.put("responseList", responseList);
		    map.put("requestHeaderList", requestHeaderList);
		    map.put("responseHeaderList", responseHeaderList);
		    return "/module/wift/Wift_InterfaceStandardDetail";

		}
	 
/**
 * 	 
 * @param map
 * @param response
 * @param request
 * @throws IOException
 * 
 * del interface document
 */
	 
	  @RequestMapping(value={"/Wift_DelInterfaceByInterfaceId.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
	  public void DelInterfaceByInterfaceId(ModelMap map, HttpServletResponse response, HttpServletRequest request) throws IOException {
	    String rs;
	    int interfaceid = Integer.parseInt(request.getParameter("interfaceid"));
	    System.out.println("==" + interfaceid);
	    if (this.faceService.InterfacHasCase(interfaceid)) {
	      rs = "delete failed  this interface has testcase";
	    } else {
	      this.faceService.DelInterfacById(interfaceid);
	      rs = "delete success .";
	    }
	    response.getWriter().write(rs);
	    response.getWriter().flush();
	  } 
	 
	
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
}
