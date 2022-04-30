<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>身在江湖</title>

<style type="text/css">

.test a{text-decoration: none;}

.tes{
width:50px;
line-height:25px;
border:1px solid #000 ;

}


</style>





</head>
<body>

<c:forEach items="${itemlist}" var="a" varStatus="status">
<a href="#"  onclick="showinfo('${a.item_directorie}','${a.item_name} ')">${a.item_name} </a> | 
 </c:forEach>
 <br>
 当前标签所属频道:<div id="pindao"></div>
<br>
<div id="tag"  class="test" style="text-decoration:none;"></div>

<table>
 <c:forEach items="${ articleList}" var="a" varStatus="status"    begin="1"  end="150" step="1">
    <c:if test="${status.index % 4 == 0 }"><Tr><td> <a href="/Collect_WenZhang.do?wid=${a.wid}"  style="font-size:12px;text-decoration:none" >${a.title} </a> | </Td> </c:if>
    <c:if test="${status.index % 4 != 0 }"><td><a href="/Collect_WenZhang.do?wid=${a.wid}" style="font-size:12px;text-decoration:none" >${a.title} </a> | </Td></c:if>
    <c:if test="${status.index % 4 == 3 }"></tr></c:if>
 </c:forEach>
 </table>
 
 
 







	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>



<script >
function  showinfo(dir,name){
 
	document.getElementById("pindao").innerHTML = name;
	
	$.ajax({
		type : "GET",
		url : "/TagItem.do",
		data: {dir: dir},
		dataType : "json",
		success : function(data) {
		var  s="" ;
			for(var i=0;i<data.length;i++){
				
				s = s + " <a class='tes' href='/"+data[i].item_directorie+"/tag/"+data[i].tagid+".do'    > "+  data[i].tagname +"("+ data[i].num +")</a> "  ;
				
			}
			
			document.getElementById("tag").innerHTML = s;
			
		}
	});	
	
	}
</script >



 

	
	


<script type="text/javascript">
function  GetPageUrl(){
	alert("dddd");
var id =	document.getElementById("id").value;
var url =	document.getElementById("url").value;
var	start = document.getElementById("start").value  ;
var end   = document.getElementById("end").value ; 
$.ajax({
	type : "GET",
	url : "/Collect_Start.do",
	data: {id: id,url:url,start:start,end:end},
	dataType : "text",
	success : function(data) {
		alert(data);
	}
});	

}
</script >
<script type="text/javascript">

function CollectToArticle(){
	var cid =	document.getElementById("id").value;
	var cateid =	document.getElementById("cateid").value;
	$.ajax({
		type : "GET",
		url : "/Collect_CateArticleToArticle.do",
		data: {cid: cid,cateid:cateid},
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});
	
	
}


</script >



</body>
</html>