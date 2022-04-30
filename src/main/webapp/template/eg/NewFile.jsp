<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

/template/bo/

<auto:ItemMenu itemid="${item}"></auto:ItemMenu>
<auto:PortalMenu></auto:PortalMenu>

<c:forEach items="${tlst}" var="a" varStatus="status">
${a.articletitle}
${a.realname}
${a.articlecontent}
 </c:forEach>




  <c:forEach items="${lst}" var="a" varStatus="status">
		<a href="/${a.item_directorie}/${a.catedirectory}/${a.articleid}.${kuo}">
		${a.articletitle}
		<c:if test="${fn:length(a.articlesummary)>100 }">${ fn:substring( a.articlesummary ,0,100)} ...</c:if>
        <c:if test="${fn:length(a.articlesummary)<=100 }">${  a.articlesummary }</c:if>
		${a.realname}
   </c:forEach> 
   
   
   <c:if test="${a.catename == '晓红鞋' }">
   
   </c:if>









<c:forEach items="${menuList}" var="aa" varStatus="sta">
				
			
  <c:if test="${sta.index % 2 == 0 }">
  <div class="con">
      <div class="column">
        <div class="title4">
          <h1> <a href="/${item}/${aa.catedirectory}/list_1.${kuo}">${aa.catename}</a></h1>  
        </div>
        <ul class="list2">
        <c:forEach items="${clst}" var="a" varStatus="status">
        <c:if test="${aa.catename == a.catename }">
          <li><span>2014.06.05</span><a id="ellipsis"  style="width:290px;" href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
        </c:if>
        </c:forEach>
        </ul>
      </div>
    
     <c:if test="${sta.last}">
         </div>
     </c:if>
  </c:if>
    
    
    
  <c:if test="${sta.index % 2 == 1 }">
      <div class="column" style="float:right">
        <div class="title4">
          <h1><a href="/${item}/${aa.catedirectory}/list_1.${kuo}">${aa.catename}</a></h1>
        </div>
        <ul class="list2">
        <c:forEach items="${clst}" var="a" varStatus="status">
           <c:if test="${aa.catename == a.catename }">
          <li><span>2014.06.05</span><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
        </c:if>
         </c:forEach> 
        </ul>
      </div>
   
      </div>
  </c:if>
</c:forEach> 



<c:set var="index" value="1" />

<c:set var="index" value="${index+1}" />
<c:if test="${index<8}">
</c:if>

          <c:if test="${!(pageNum == 1)}">     
                    <a href="/${item}/${cate}/list_${(pageNum -1)}.${kuo}" class="fy1">上一页</a>
           </c:if>
              <c:forEach var="i" begin="1" end="${pages}" step="1">   
                <c:if test="${pageNum == i}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" class="fy2 on">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" class="fy2">${i}</a>
                 </c:if> 
    		  </c:forEach>  
          <c:if test="${!(pageNum == pages)}">     
                   <a href="/${item}/${cate}/list_${(pageNum +1)}.${kuo}" class="fy1">下一页</a>
           </c:if>







</body>
</html>