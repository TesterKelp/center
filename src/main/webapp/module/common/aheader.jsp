<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<div id="defect">
		<div class="defect_top">
			<auto:Menus  typeid="1"></auto:Menus>
		</div>

		 <div class="tou"> 
		<a href="/logout.do">（退出q）</a>
		 </div>

	<div class="dropdown nav navbar-nav  navbar-right tou">
		<a aria-expanded="false" role="button" href="#"
			class="dropdown-toggle" data-toggle="dropdown">项目 <span
			class="caret"></span></a>
		<ul role="menu" class="dropdown-menu"  style="background-color: #8C4040;border-radius:20" id="project"> 
			<li><a href="javascript:;" onclick="ResetProject('2')">广告前台</a></li>
			<c:forEach items="${plst}" var="a" varStatus="status">
				<li><a href="javascript:;" onclick="ResetProject('${a.projectid}')">${a.projectname}</a></li>
			</c:forEach>
		</ul>
	</div>




	  <div class="t"> <auto:LoginInfo></auto:LoginInfo> </div>
	</div>
	<br>
	<br>
 
 
 
 <script>
 
 
	$.ajax({
		type : "GET",
		url : "/module/defect/JsProjectList.do",
		async : false,
		dataType : "json",
		success : function(data) {
var con="" ;
			
			for(var i=0;i<data.length;i++){
			//	alert(data[i].projectname);
				
				con = con +"<li><a href=\"javascript:;\" onclick=\"ResetProject('"+data[i].projectid+"')\">"+data[i].projectname+"</a></li>" ;
			}
			
			 document.getElementById("project").innerHTML=con ;
			
			
		}
	})
 
 
 
 
 
 
 
 
 function ResetProject(projectId){
	$.ajax({
		type : "GET",
		url : "/module/defect/resetProjectId.do",
		data: {projectId:projectId},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
	
}
 </script>
 
