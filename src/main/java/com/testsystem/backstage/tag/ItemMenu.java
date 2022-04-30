package com.testsystem.backstage.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.testsystem.admin.utils.UserUtil;
import com.testsystem.article.service.CateService;
import com.testsystem.defect.service.BitsService;
import com.testsystem.defect.service.DefectService;
import com.testsystem.defect.service.TaskService;
import com.testsystem.helper.JsonAndString;

import net.sf.json.JSONObject;

public class ItemMenu extends TagSupport {

	String itemid ;
	
	private List moduleList ;
	private List task;;
	String  coo="";

	public String getItemid() {
		return itemid;
	}
	public void setItemid(String itemid) {
		this.itemid = itemid;
	}
	
	
	
	public ItemMenu() {   
        System.out.println("displayaddtags ���캯��");   
    }   
public int doStartTag() throws JspException {   
        System.out.println("doStartTag����");   
        return SKIP_BODY;  //��ʵ�ֱ�ǩ���壬�������ǩ��   
    }   


public int doEndTag() throws JspException {   
	String pro ="" ;
    System.out.println("doEndTag����");   
    JspWriter out=pageContext.getOut();   
    ApplicationContext ct = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    CateService cateService = (CateService) ct.getBean("cateServiceImpl");
    String  item_directorie =  itemid ;
	moduleList =cateService.GetItemCate(item_directorie);
	String html ="" ;
	for (int i = 0; i <JsonAndString.ListToJsonArray(moduleList).size(); i++){
		JSONObject ob = (JSONObject) JsonAndString.ListToJsonArray(moduleList).get(i);
//		html = html+"<a href='/wz/TL_"+ob.getString("cateid")+".html'>"+ob.getString("catename")+"</a>  ";
		html = html+"<li> <a href='/"+ob.getString("item_directorie")+"/"+ob.getString("catedirectory")+"/list.do'>"+ob.getString("catename")+"</a> </li> ";
}
	pro =html ;
    try { 
    out.println(pro);
    pro="" ;
    }catch (IOException e) {   
        e.printStackTrace();   
    }     
    return EVAL_PAGE;  
}  











}
