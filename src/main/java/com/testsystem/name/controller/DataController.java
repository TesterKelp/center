package com.testsystem.name.controller;

import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testsystem.article.util.GetPicAddress;
import com.testsystem.name.service.DataService;
import com.testsystem.name.service.FamilyService;
import com.testsystem.name.tools.ShengXiao;

@Controller
public class DataController {

	
	@Autowired
	private DataService dataService ;
	
	@RequestMapping(value ="/name/Data11.do", method = RequestMethod.GET)
	public void FindNameBdddylikeName(ModelMap map, HttpServletResponse response,
			HttpServletRequest request) throws IOException{	
     
	for (int j = 1920; j < 2020; j++) {
		String sql="";
		int n = j;
		String shengxiao = ShengXiao.getYear(n);
		String title= n + "年出生属" + shengxiao + "年龄字典" ;
		System.out.println(title);
		int age = 1;
		String content = "" ;
		for (int i = j; i < n + 100; i++) {
			content=content+"<tr> <td style=\"border:1px solid \">属" + shengxiao + n + "年出生" + i + "年多少岁</td> " 
					+ " <td style=\"border:1px solid \"> 属" + shengxiao + n + "年出生" + i + "年多大 </td> <td style=\"border:1px solid \">"+ age + "岁"+" </td></tr>";
			age++;
		}
		System.out.println(content);
		sql="insert into life_content  (cateid,title,content,userid)  values('6','"+title+"','"+content+"','1')" ;
		dataService.insertSql(sql);
	}

	try {
	response.getWriter().write("ok");
	} catch (IOException e) {
	e.printStackTrace();
	}
	}
	
	
	@RequestMapping(value = "/name/setsesx.do", method = RequestMethod.GET)
	public void FindNameBdddylikddeName(ModelMap map, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		System.out.println("今年：" + year + "<br>");
		for (int j = 1920; j < 2026; j++) {
			String sql = "";
			int n = j;
			String shengxiao = ShengXiao.getYear(n);
			if (shengxiao.equals("马")) {
				String title = n + "年出生属" + shengxiao + "年龄字典<br>";
				String tle = n + "年出生" + shengxiao + "今年多大<br>";
				String le = n + "年出生" + shengxiao + "今年多大岁数（虚岁）<br>";
				String tit = "属" + shengxiao + j + "年出生今年多大岁数/" + "属" + shengxiao + j + "年出生今年多少岁";
				System.out.println(title);
				System.out.println(tle);
				System.out.println(le);
				String keyword = "属" + shengxiao + "今年多少岁";
				String adepict = "属" + shengxiao + "2020年多少岁";
				int age = 1;
				String content = "";
				for (int i = j; i < year + 6; i++) {
					content = content + "属" + shengxiao + n + "年出生" + i + "年多少岁, 属" + shengxiao + n + "年出生" + i
							+ "年多大------------" + age + "岁" + "<br> ";
					age++;
				}
				String inn = GetPicAddress.delHTMLTag(content);
				String articleitd;
				if (inn.length() <= 300) {
					articleitd = inn.substring(0, inn.length());
				} else {
					articleitd = inn.substring(0, 300);
				}
				Format format = new SimpleDateFormat("yyyy-MM-dd");
				String time = format.format(new Date());
				sql = "insert into article_content  (articletype,cateid,articletitle,articlecontent,userid, blogcateid,topicid ,creattime, articleitd,akeyword ,adepict)  values"
						+ "('1','156','" + tit + "','" + content + "','155','106','79','" + time + "','" + articleitd
						+ "','" + keyword + "','" + adepict + "')";
				System.out.println(sql);
				dataService.insertSql(sql);
				System.out.println(content);
			}
		}

		try {
			response.getWriter().write("ok");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
