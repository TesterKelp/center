 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

    <!--top-->
        <div class="header">
        <div class="frCont">
               <!-- <dl><a href="#"> 专 题  </a></dl>   -->
                    <a href="/index.do">网站首页</a>
                    <a href="/${item}/portal.do">频道首页</a>
                   <c:forEach items="${menuList}" var="a" varStatus="status">
				<a href="/${item}/${a.catedirectory}/index.do">${a.catename}</a>
			</c:forEach>
        </div>
 
    </div>
    <!--top End-->







