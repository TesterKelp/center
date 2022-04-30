package com.testsystem.name.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.name.service.DivineService;
import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Divine;
import com.testsystem.name.vo.Wxl;
import com.testsystem.site.service.SiteService;
@Controller
public class DivineController {

	
	
	
	@Autowired
	private DivineService divineService ;
	
	@Autowired
	private SiteService siteService ;
	
	@RequestMapping(value ="/name/divine/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		
		int n = siteService.GetSite().getHtml();
		String  suffix="html";
		String  hhtml="";
		if(n==1){
			suffix="html";
			hhtml="1" ;
		}else{
			suffix="do";
			hhtml="0" ;
		}
		map.put("hhtml", hhtml);
		map.put("suffix", suffix);
		
	   List  divine  =	divineService.DivineList() ;
		map.put("ltt", divine) ;	
		return "/template/name/divine/indexdivine";
	}
	
	
	
	
	@RequestMapping(value ="/name/divine/{id}/index.do", method = RequestMethod.GET)
	public String FiameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int id) throws IOException{	
		Divin divin =divineService.GetDivineBy(id);
		map.put("divin", divin);
		List  d  =	divineService.DivineDetailAll(id);
		map.put("d", d);
		   List  divine  =	divineService.DivineList() ;
			map.put("ltt", divine) ;
		return "/template/name/divine/indexdivine_"+divin.getPage();
	}
	
	
	@RequestMapping(value ="/name/divine/{divineid}/{qianid}.do", method = RequestMethod.GET)
	public String FiameBdddyldikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int divineid,@PathVariable int qianid) throws IOException{	
	//	Divine divine  = divineService.GetDivineDetailBy(id);
		
		Divine divine  = divineService.GetDivineDetailBy(divineid, qianid);
		map.put("divine", divine);
		Divin divin =divineService.GetDivineBy(divineid);
		map.put("divin", divin);
		 List  ine  =	divineService.DivineList() ;
			map.put("ltt", ine) ;
		return "/template/name/divine/indexdivine_"+divin.getPage()+"_detail";
	}
	
	

	
		@RequestMapping(value = "/name/divine/zhuge_js.do", method = RequestMethod.GET)
		public void SetCaseRunnildeNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request)
				throws IOException {
			String word  =request.getParameter("word");		
//			            String str1 = "java判断是否quan为汉字";
//                        str2 = "全为汉字";
					    String reg = "[\\u4e00-\\u9fa5]+";
//			            boolean result1 = str1.matches(reg) ;   //false  
			            boolean result2 = word.matches(reg)  ;//true 
			            int t =0;               
			if(result2){
				
				System.out.println("zichangdu:"+word.length());
				String w1 =word.substring(0,1);
				String w2 =word.substring(1,2);
				String w3 =word.substring(2);
			int n1=Integer.parseInt(divineService.GetJtBh(w1));
			int n2=Integer.parseInt(divineService.GetJtBh(w2));
			int n3=Integer.parseInt(divineService.GetJtBh(w3));
			System.out.println(n1+"--"+n2+"--"+n3);
			if(n1>10){
				n1= (n1%10);
				if(n1==0){n1=1 ;}
			}
			if(n2>10){
				n2= (n2%10);
				if(n2==0){n2=1 ;}
			}
			if(n3>10){
				n3= (n3%10);
				if(n3==0){n3=1 ;}
			}
			
		 t = n1 *100 +n2 *10 +n3 ;	
			
			if(t>384){
				t=t-384 ;
			}
			if(t>384){
				t=t-384 ;
			}
			
			
			
				
			}
			            
			       
			            
			
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(t+"");
			response.getWriter().flush();	
		}
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/name/divine/{id}/suanming.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response,@PathVariable int id, HttpServletRequest request)
			throws IOException {
		
		Divin divin =divineService.GetDivineBy(id);
		map.put("divin", divin);

		    Integer min = divin.getMin();
		    Integer max = divin.getMax();
		    Random random = new  Random();
		 
		    /**
		     * random.nextInt(max) % (max-min+1)  ->  [0, 499] % 301 == [0, 300]
		     * [0, 300] + 200 = [200, 500]
		     */
		    int result = random.nextInt(max) % (max-min+1) + min;
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(result+"");
		response.getWriter().flush();	
	}
	
	
	
	
	
	
	
}
