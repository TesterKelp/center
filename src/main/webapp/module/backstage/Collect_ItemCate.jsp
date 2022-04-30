<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>身在江湖</title>
</head>
<body>

<c:forEach items="${moduleList}" var="a" varStatus="status">
<a href="#"  onclick="showinfo('${a.id}','${a.url}','${a.start}','${a.end}')">${a.catename} </a> | 
 </c:forEach>
 

<br>

<input type="text" id="id" />
<input type="text" id="url" style="width:300px"/>
<input type="text" id="start" />
<input type="text" id="end" />
<input type="button"  onclick="GetPageUrl()" value="kaishi" />
<input type="text" id="cateid" />
<input type="button"  onclick="CollectToArticle()" value="kaishi" />








<table>
 <c:forEach items="${ articleList}" var="a" varStatus="status"    begin="1"  end="150" step="1">
    <c:if test="${status.index % 4 == 0 }"><Tr><td> <a href="/Collect_WenZhang.do?wid=${a.wid}"  style="font-size:12px;text-decoration:none" >${a.title} </a> | </Td> </c:if>
    <c:if test="${status.index % 4 != 0 }"><td><a href="/Collect_WenZhang.do?wid=${a.wid}" style="font-size:12px;text-decoration:none" >${a.title} </a> | </Td></c:if>
    <c:if test="${status.index % 4 == 3 }"></tr></c:if>
 </c:forEach>
 </table>
 
 
 







	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>



<script >
function  showinfo(id,url,start,end){
	//alert("ddd");
	document.getElementById("id").value = id ;
	document.getElementById("url").value = url ;
	document.getElementById("start").value = start ;
	document.getElementById("end").value =end ;   
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