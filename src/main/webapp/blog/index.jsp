<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
说明：
<br><hr>
/blog/t2/

${username}
${userid}
/blog/{userid}.do

/blog/{userid}/{cateid}/{pagenum}.do
/blog/{userid}/{cateid}/b_{blogid}.do

/blog/${userid}.do
/blog/${userid}/${a.blogcateid}/1.do
/blog/${userid}/${a.blogcateid}/b_${p.articleid}.do
<br><hr>
			<c:forEach items="${ldt}" var="a" varStatus="status">
				<li><a
					href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">${a.blogcatename}</a>
				</li>
			</c:forEach>

<br><hr>

							<c:forEach items="${lst}" var="p" varStatus="status" begin="20"
								end="26" step="1">
								<c:if test="${not empty p.picaddress}">
									<div class="swiper-slide">
										<a href="Content.do?userid=${userid}&&blogid=${p.articleid}">
											<img src="${p.picaddress}"
											style="width: 748px; height: 299px" alt="${p.articletitle}">
											<p>${p.articletitle}</p>
										</a>
									</div>
								</c:if>
							</c:forEach>





	<c:if test="${fn:length(a.articlesummary)>100 }">${ fn:substring( a.articlesummary ,0,100)} ...</c:if>
        <c:if test="${fn:length(a.articlesummary)<=100 }">${  a.articlesummary }</c:if>






</body>
</html>