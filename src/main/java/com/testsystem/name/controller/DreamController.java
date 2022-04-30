package com.testsystem.name.controller;

import java.io.IOException;
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

import com.testsystem.admin.service.UserService;
import com.testsystem.admin.vo.Member;
import com.testsystem.helper.U;
import com.testsystem.name.service.DreamService;
import com.testsystem.name.vo.Divin;
import com.testsystem.name.vo.Dream;
import com.testsystem.name.vo.Ques;

@Controller
public class DreamController {

	
	@Autowired
	private  DreamService dreamService ;
	@Autowired
	private UserService userService ;
	
	@RequestMapping(value ="/name/zgjm/index.do", method = RequestMethod.GET)
	public String FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");	
		List t =  dreamService.DreamList();
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("t", t);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
		return "/template/name/zgjm/indexdream";
	}
	
	
	
	@RequestMapping(value ="/name/zgjm/by.do", method = RequestMethod.GET)
	public String FindNameBddddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
		return "/template/name/zgjm/indexdream_cate";
	}
	
	
	@RequestMapping(value ="/name/zgjm/{id}/zm.do", method = RequestMethod.GET)
	public String FindNasmeBddddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int id) throws IOException{
		Dream dream = dreamService.GetDream(id);
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
		map.put("dream", dream.getZm());
		List lzm = dreamService.DreamByZm(id);	
		map.put("t", lzm);
		return "/template/name/zgjm/indexdream_cate";
	}
	
	
	@RequestMapping(value ="/name/zgjm/{id}/bx.do", method = RequestMethod.GET)
	public String FindNasmeBdddd4ylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int id) throws IOException{	
		Dream dream = dreamService.GetDream(id);
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);	
		map.put("dream", dream.getBiglx());
		List lbx = dreamService.DreamByBig(id);
		map.put("t", lbx);
		return "/template/name/zgjm/indexdream_cate";
	}
	
	
	@RequestMapping(value ="/name/zgjm/{id}/sx.do", method = RequestMethod.GET)
	public String FindNasmeBddd5dylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int id) throws IOException{	
		Dream dream = dreamService.GetDream(id);
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
		map.put("dream", dream.getSmalllx());
		List lsx = dreamService.DreamBySmall(id);	
		map.put("t", lsx);
		return "/template/name/zgjm/indexdream_cate";
	}
	
	
	@RequestMapping(value ="/name/zgjm/{id}.do", method = RequestMethod.GET)
	public String FindNdasmeBddd5dylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request,@PathVariable int id) throws IOException{	
		System.out.println("id======"+id);
		Dream dream  = dreamService.GetDream(id);
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
		map.put("dream", dream);
		return "/template/name/zgjm/indexdream_detail";
	}
	
	
	@RequestMapping(value ="/name/zgjm/search.do", method = RequestMethod.GET)
	public String FindNdasmeBdddd5dylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
		String word  = request.getParameter("word");
		System.out.println(word);
		word=word.replace("梦见", "");
		System.out.println(word);
		List se = dreamService.Search(word,"title");
		List me = dreamService.Search(word,"message");
		List zm = dreamService.DreamBy("zm");
		List sx = dreamService.DreamBy("smalllx");
		List bx = dreamService.DreamBy("biglx");	
		List t =  dreamService.DreamList();
		List qu =  dreamService.QuesList();
		map.put("qu", qu);
		map.put("word", word);
		map.put("t", t);
		map.put("se", se);
		map.put("me", me);
		map.put("zm", zm);
		map.put("sx", sx);
		map.put("bx", bx);
	
		return "/template/name/zgjm/indexdream_search";
	}
	
	
	
	
	
	@RequestMapping(value = "/name/zgjm/ques.do", method = RequestMethod.GET)
	public void SetCaseRunnileNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request,Ques ques)
			throws IOException {
		
		Member member ;
		int userid = U.GetUserId(request);
		if(userid==0){
			ques.setUsertype(0);
		}else{
			ques.setUsertype(1);
			 member =userService.GetMemberByUserId(userid);
			 ques.setUsername(member.getUsername());
		}
		int rs  =	dreamService.addQues(ques);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().write(rs+"");
		response.getWriter().flush();	
	}
	
	
	
	
		@RequestMapping(value ="/name/zgjm/q_{id}.do", method = RequestMethod.GET)
		public String FinddNdasmeBddd5dylikeName(ModelMap map, HttpServletResponse response,
				HttpServletRequest request,@PathVariable int id) throws IOException{	
			System.out.println("id======"+id);
			Ques ques = dreamService.GetQues(id) ;
			String  word = ques.getKeyword();
			String[] keyword  =word.split(" ");
			List  r ;
			List  temp ;
			String sql="";
			String str="";
			int first=0;
			int tempno=0 ;
//			根据  keyword 去数据库匹配,然后将匹配到的数据显示出来
		for (int i = 0; i < keyword.length; i++) {
			String w = keyword[i];
			System.out.println("=="+w);
			
			if(w == null || w.equals("")){
				
			}else{
			
			str = dreamService.GetSql(w);
			if (str == null || str.equals("")) {
			} else {
				if (first == 0) {
					tempno=Integer.parseInt(str.substring(0,1));
					sql = "("+str.substring(1)+")";
					first++;
				} else {
					int si=Integer.parseInt(str.substring(0,1));
					if(si>=tempno){
						sql = "("+str.substring(1)+")"+ " UNION " + sql ;
						tempno =si ;
					}else{
						sql = sql+ " UNION " +"("+str.substring(1)+")"  ;
					}
					
					
				}
			}
			}
			
		}
			System.out.println("sql=="+sql);
			List qu =  dreamService.QuesList();
			map.put("qu", qu);
			r = dreamService.GetDream(sql) ;
			List zm = dreamService.DreamBy("zm");
			List sx = dreamService.DreamBy("smalllx");
			List bx = dreamService.DreamBy("biglx");
			map.put("zm", zm);
			map.put("sx", sx);
			map.put("bx", bx);
			map.put("ques", ques);
			map.put("r", r);
			return "/template/name/zgjm/indexdream_ques_detail";
		}
	
	
	
		
		
		
		
		
		@RequestMapping(value = "/name/zgjm/datado.do", method = RequestMethod.GET)
		public void SetCaseRunnidleNumber(ModelMap map, HttpServletResponse response, HttpServletRequest request,Ques ques)
				throws IOException {
			List<Dream> bx = dreamService.GetDream();
			for(int i=0;i<bx.size();i++){
	//		for(int i=0;i<2;i++){
				System.out.println("i="+i);
				Dream  dream =	bx.get(i);
				String m = dream.getMessage();
				String temp = "";
				String  te="";
				String  tee="";
				System.out.println("mm="+m);
					int  st  =	m.indexOf(">",6);
				//	m.charAt('>') ;
					System.out.println(">"+st);
				if(st>0){				
					temp=m.substring(st+1,m.length());
				}
				System.out.println("temp=="+temp);
				int e =temp.indexOf('【');
				if(e>0){				
					te=temp.substring(0,e);
				}
				System.out.println("te=="+te);
				
			int n=	te.lastIndexOf("<p>");
				
				if(n>0){
					
					tee=te.substring(0,n);
					System.out.println("tee=="+tee);
					dream.setMessage(tee);
					dreamService.UpdateMessage(dream);
				}

				
			}
			
			
			
			
			
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write("dddd"+"");
			response.getWriter().flush();	
		}
		
		
		
		
		
		
		
		
	
}
