<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
<head>
<title>${name}姓名测试祥解_${name}的五行_${name}这个名字好吗?_免费起名</title>
<meta name="description" content="${name}名字解析测试，${name}姓名的好坏,${name}姓名五行"/>
<meta name="Keywords" Content="${name}五格解析，${name}五格测试，${name}姓名五格解析测试，${name}名字好不好，${name}测名字" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />

<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body >
<div id="defect" > 
	<div class="defect_top"  id="menu" >
		<a href="/name/sj/index.do"  style="float:left;  font-size:19px;">首页</a>    
	 <a href="/name/sj/NameFree.do" style="float:left;  font-size:19px;">免费起名</a> 
	  <a href="/name/sj/NameTest.do" style="float:left;  font-size:19px;">名字测试</a>      
	  </div>  
 </div>

			<div class="row"> 	
					<div class="ibox-content"  >  
						<div class="article-title" ><h2><b>${name}姓名测试总概 </b></h2></div>
			
                        <div class="alert alert-info "  style="line-height:28px;"  >	
                        
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
			<b>[五格解析]</b><Br>
			天格 :${ttian}<Br>
			人格 :${rren}<Br>
			地格 :${ddi}<Br>
			外格 :${wwai}<Br>
			总格 :${zzong}<Br>
			<b>[三才配置]</b> &nbsp;&nbsp;&nbsp;&nbsp; ${sc}   <Br>
			<b>[三才详解]</b><Br>${scdetail}   <strong  class="sc"  >(${rs})</strong><Br>
			<b>[总格详解]</b><Br>${zzzong}<Br>
			<b>[性格解析]</b><Br>${xingge}<Br>
			<b>[天生丽质]</b><Br>${beautfully}<Br><Br>
			<hr>
			<div id="wx">
			</div>
			<hr>
			<b>天格-></b><Br>${tttian}
			<b>人格-></b><Br>${rrren}
			<b>地格-></b><Br>${dddi}
			<b>外格-></b><Br>${wwwai}
			
			
			</div> 
			
			
			          
         <table width="99%">
										<c:forEach items="${allname}" var="m">
											<tr>
												<td>${m}</td>
											</tr>
										</c:forEach>
									</table>   
            
			
			
			
			
			<div id="sm" ></div>
			
			
			
			
			
            </div>
            
            
            
            
            
            
            
  
            
            
            
            
            
            
            
           
				
					</div>
				</div>	

	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>	
	<script src="/template/name/sj/NameAnalyse.js"></script>
	<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body></html>