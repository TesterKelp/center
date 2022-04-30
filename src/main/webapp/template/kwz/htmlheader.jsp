<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>



<div id="defect" > 
	<div class="defect_top"  id="menu" >

	<a href="/index.do">首页</a> 
	<c:if test="${site.singleitem =='100'}"> <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
	<c:if test="${site.singleitem =='200'}"> <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
	<c:forEach items="${menuList}" var="a" varStatus="status"><a href="/${m.item_directorie}/${a.catedirectory}/index.do">${a.catename}</a></c:forEach>
	<c:if test="${m.topic == 1 }"><a href="/${m.item_directorie}/topic.do">专题</a></c:if><a href="/${m.item_directorie}/tag/index.do">tag标签</a>
	<a href="/sitemap.do">站点导航</a>
	</div>
 </div>

 
