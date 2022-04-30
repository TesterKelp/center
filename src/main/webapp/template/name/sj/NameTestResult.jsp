<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${name}姓名测试_${name}五格分析测试_姓名大全_免费起名</title>
<meta name="keywords" content="${name}名字好坏，${name}名字好不好，${name}五格姓名分析">
<meta name="description" content="${name}姓名分析，通过三才五格姓名分析，分析其五格好坏，三才配置如何，好不好。">
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />

<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
<style type="text/css">body {font-size:13px !important;}</style>
</head>

<body class="gray-bg">
	<div id="defect" > 
	<div class="defect_top"  id="menu" >
	
		<a href="/name/sj/index.do"  style="float:left;  font-size:19px;">首页</a>    
	 <a href="/name/sj/NameFree.do" style="float:left;  font-size:19px;">免费起名</a> 
	  <a href="/name/sj/NameTest.do" style="float:left;  font-size:19px;">名字测试</a>        
	  </div>  
 </div>
<br><br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		
						<div class="text-center article-title" style="margin-top:10px">
							<h2> <b> ${name} 姓名测试 </b></h2>
						</div>
						
						            

                        <div class="alert alert-info">
                           
			<table width="100%" >		
			<tr><td style="line-height:30px">
		
			<div align="center">${name}姓名测试总概</div><Br>
			<div style="float:left;">
			测试姓名：${name} <Br>
			姓名拼音：${pin}<Br>
			字意五行：${wwxx}<Br>
			康熙笔画：${BiHua}<Br>
			</div>          
               <div style="float:right;">         
                     <img src='/pic/wx/wxszjh.jpg' width='100' height='100'>   
                        
 				</div> 
			
			<div style="float:left"  >
 				<hr>
 				本站纯免费不收取任何费用，请关注公众号支持本站，谢谢！<Br>
 				也可搜索公众号：laiyaleyile  来呀乐一乐关注支持我们。<Br>
 				欢迎加入千人QQ群名字世界：814811960
 				<hr>
 				</div>  
 				
 				
 				
 			<div style="float:left"  >
			
			
			姓名五格：天格${tian}，人格${ren}，地格${di}，外格${wai}，总格${zong}。<Br>
			
			<strong>[${name}的五格解析]</strong><Br>
			天格 :${ttian}<Br>${tiann} <hr>
			地格 :${ddi}<Br> ${dii} <hr>
			人格 :${rren}<Br> ${renn} <hr>
			外格 :${wwai}<Br> ${waii} <hr>
			总格 :${zzong}<Br>${zongg}<hr>
			<strong>[${name}三才配置]</strong> &nbsp;&nbsp;&nbsp;&nbsp; ${sc}   <Br>
			<strong>[${name}三才详解]</strong><Br>${scdetail}   <strong align="right"  style="margin-left:100px;color:red;">(${rs})</strong><Br>
			<strong>[${name}总格详解]</strong><Br>${zzzong}<Br>
			<strong>[${name}性格解析]</strong><Br>${xingge}<Br>
			<strong>[天生丽质]</strong><Br>${beautfully}<Br><Br>
			<div><strong>[${name}数理暗示]：</strong></div>
			<strong>天格(${tian})-></strong>${tttian}
			<strong>人格(${ren})-></strong>${rrren}
			<strong>地格(${di})-></strong>${dddi}
			<strong>外格(${wai})-></strong>${wwwai}
			</td></tr>

 			 </table>  	
 			 
 			 
 			 
 			 
 			 
 			 
 			<table width="99%">
										<c:forEach items="${ltttt}" var="m">
											<tr><td>${m.jtz}</td><td>${m.xmxjs}</td></tr>
										</c:forEach>
									</table> 
 			 
 			 
 			 
 			 <table width="99%">
										<c:forEach items="${mp}" var="m">
											<tr><td>${m.value }</td></tr>
										</c:forEach>
									</table>
 			 
 			 
 			 
 			 
									说明：<hr>
									<table width="99%">
										<tr>
											<td  style="line-height: 30px">
												天格数是先祖留传下来的，其数理对人影响不大。（不重要） <br>
												人格数又称主运，是整个姓名的中心点，影响人的一生命运。（重要） <br>
												地格数又称前运，影响人中年（36岁）以前的活动力。（不重要） <br>
												外格代表36-48岁的中年运势以及社交、朋友、工作环境等，影响后天的机遇（不重要） <br>
												总格（代表48岁后的中晚年运势以及财富、收入，影响人生最终的成就）（重要） <br>
												(笔画为康熙词典非现在的新华字典)以康熙词典笔画为依据，
											</td>
										</tr>
									</table>
 			 
 			 
 			 
 			 
			
                        </div>
                   
					</div>	
						
			 <div class="clear"></div>			

</div>


	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>

<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body>

</html>