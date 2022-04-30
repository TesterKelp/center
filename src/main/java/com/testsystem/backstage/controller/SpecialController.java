package com.testsystem.backstage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.article.service.CateService;
import com.testsystem.backstage.service.ItemService;
import com.testsystem.backstage.service.SpecialService;
import com.testsystem.backstage.vo.Item;
import com.testsystem.backstage.vo.Special;
import com.testsystem.helper.JsonAndString;


@Controller
@RequestMapping("/backstage")
public class SpecialController {

	
	
	@Autowired
	private ItemService itemService ;
	
	
	@Autowired
	private CateService cateService ;
	
	@Autowired
	private SpecialService specialService ;
	
	@RequestMapping(value ="/SpecialCreate.do", method = RequestMethod.GET)
	public String SpecialCreate(ModelMap map, HttpServletResponse response,HttpServletRequest request) throws IOException{	
		List itemst=itemService.ItemList();
		map.put("tlst", itemst) ;
		return  "/module/backstage/CateCreate";
	}
	
	
	@RequestMapping(value ="/SpecialSave.do", method = RequestMethod.POST)
	public void SpecialSave(ModelMap map, HttpServletResponse response,HttpServletRequest request ,Special special) throws IOException{	
		
		Item it =itemService.GetItem(special.getPdir());
		System.out.println("it.getItem_id()="+it.getItem_id()) ;
		special.setItemid(it.getItem_id());
		special.setLogicorder(100);
		special.setTop(0);
		special.setPagesize(15);
		Special sp =	specialService.GetSpecialById(special.getScateid());
		System.out.println("catename="+sp.getCatename()) ;
		
		if(sp.getCatetype()==3){
			special.setScateid(sp.getCateid());
			
		}else {
			special.setScateid(sp.getCateid());
			special.setPdir(sp.getCatedirectory());
		}
		special.setCatetype(0);
		special.setIsshow(1);
		System.out.println("pdir="+special.getPdir()) ;
		System.out.println("s="+special.getScateid()) ;
		String temp= special.getListtemplate() ;
		temp=temp.replace(".jsp", "");
		special.setListtemplate(temp);
		
		temp =special.getArticletemplate();
		temp=temp.replace(".jsp", "");
		special.setArticletemplate(temp);
		
		
		specialService.SpecialSave(special);


		response.getWriter().write("ok");
		response.getWriter().flush();

	}
	
	
	@RequestMapping(value ="/SpecialCreateInitJs.do", method = RequestMethod.GET)
	public void MyArticle(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{
		String dir=request.getParameter("dir");
		List splst =this.specialService.GetItemSpecial(dir);
		String template =this.itemService.ItemList(dir);
		List ltlst = this.GetListTemplate(template);
		List conlst= this.GetContentTemplate(template) ;
		
		String  j1 =  JsonAndString.ListToJsonToString(splst);	
		String  j2 =  JsonAndString.ListToJsonToString(ltlst);
		String  j3 =  JsonAndString.ListToJsonToString(conlst);
		
		String  j="{sp:"+j1+",lt:"+j2+",con:"+j3+"}" ;

		System.out.println(j);
		response.getWriter().write(j);
		response.getWriter().flush();
	}
	
	
	
	
	public List  GetListTemplate(String template){
		List<String> files = new ArrayList<String>();
		List<String> directorys = new ArrayList<String>();
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");		
		String path=webappRoot+"/template"+"/"+template ;
        File file = new File(path);
        File[] tempList = file.listFiles();
        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {
            	if(tempList[i].getName().contains(".jsp")&&tempList[i].getName().contains("list")){
          		  files.add(tempList[i].getName());
          	   }
            	
               // files.add(tempList[i].toString());
                //文件名，不包含路径
                //String fileName = tempList[i].getName();
            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            	System.out.println(tempList[i].getName());
            	directorys.add(tempList[i].getName());
            }
        }
		return files;
	}
	
	
	public List  GetContentTemplate(String template){
		
		List<String> files = new ArrayList<String>();
		List<String> directorys = new ArrayList<String>();
		String classpath =this.getClass().getResource("/").getPath().replaceFirst("/", "");
		String webappRoot = classpath.replaceAll("WEB-INF/classes/", "");		
		String path=webappRoot+"/template"+"/"+template ;
        File file = new File(path);
        File[] tempList = file.listFiles();
        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {
            	if(tempList[i].getName().contains(".jsp")){
            		  files.add(tempList[i].getName());
            	}
              
                //文件名，不包含路径
                //String fileName = tempList[i].getName();
            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            	System.out.println(tempList[i].getName());
            	directorys.add(tempList[i].getName());
            }
        }
		return files;
	}
	
	
	
	
}
