<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>${username}博客分类页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../blog/t4/style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="t4/js/cufon-yui.js"></script>
<script type="text/javascript" src="t4/js/arial.js"></script>
<script type="text/javascript" src="12312js/cuf_run.js"></script>
<!-- CuFon ends -->
<style type="text/css">
.box {
	height: 20px;
	line-height: 30px;
	overflow: hidden;
	display: block;
}
</style>
</head>
<body>
	<div class="main">

		<div class="header">
			<div class="header_resize">
				<div class="menu_nav">
					<ul>
						<li><a href="Blog.do?userid=${userid}"> 首頁 </a></li>
						<c:forEach items="${ldt}" var="a">
							<c:if test="${a.blogcateid==blogcateid}">
								<li class="active">
							</c:if>
							<c:if test="${a.blogcateid!=blogcateid }">
								<li>
							</c:if>
							<a
								href="Cate.do?userid=${userid}&&cateid=${a.blogcateid}&&pageno=1">
								${a.blogcatename} </a>
							</li>
						</c:forEach>


					</ul>

				</div>


				<div class="clr"></div>

			</div>
		</div>

		<div class="content">
			<div class="content_resize">
				<div class="content_resize2">
					<br>
					<div class="mainbar">


						<c:forEach items="${cl}" var="p">

							<div class="article">
								<span> <a
									href="Content.do?userid=${userid}&&blogid=${p.articleid}">
										${p.articletitle} </a></span> <br>
								<hr
									style="height: 1px; border: none; margin-top: 15px; border-top: 1px solid #787460;" />
								<div class="clr"></div>
							</div>
						</c:forEach>






						<!--  <p class="pages"><small>Page 1 of 2 &nbsp;&nbsp;&nbsp;</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>   -->
					</div>
					<div class="sidebar">
						<div class="gadget">
							<h2 class="star">
								<span>Personal </span>Profile
							</h2>
							<div class="clr"></div>
							<ul class="sb_menu">
								<!--  
            
            <li><a href="#">帮助人数：10025</a></li>
            <li><a href="#">分享博文：125</a></li>
            <li><a href="#">Blog Url：</a></li>-->
								<li><a href="#"><img src="${useravatar}" width="88"
										height="88" alt="pix" /></a></li>
								<li><a href="#">创建时间：${blogtime}</a></li>
								<li><a href="#">博主昵称：${username}</a></li>
								<li><a href="/index.do">管理博客：进入</a></li>
							</ul>
						</div>






						<div class="gadget">
							<h2 class="star">
								<span>阅读排行榜</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">
								<c:forEach items="${ltt}" var="t">
									<li class="box"><a
										href="Content.do?userid=${userid}&&blogid=${t.articleid}"
										title="${t.articletitle}">${t.articletitle}</li>

								</c:forEach>
							</ul>
						</div>

						<div class="gadget">
							<h2 class="star">
								<span>自我介绍</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">${introduce}
							</ul>
						</div>


						<div class="gadget">
							<h2 class="star">
								<span>站点公告</span>
							</h2>
							<div class="clr"></div>
							<ul class="ex_menu">${notice}
							</ul>
						</div>












					</div>
					<div class="clr"></div>
				</div>
			</div>
		</div>
		<!-- 
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="t4/images/pix1.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix2.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix3.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix4.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix5.jpg" width="58" height="58" alt="pix" /></a>
        <a href="#"><img src="t4/images/pix6.jpg" width="58" height="58" alt="pix" /></a>
      </div>
      <div class="col c2">
        <h2><span>自我介绍</span></h2>
        <p>
               ${introduce}
        </p>
      </div>
      <div class="col c3">
        <h2><span>联系方式：</span></h2>
        <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue.</p>
        <p><a href="mailto:support@yoursite.com">support@yoursite.com</a></p>

      </div>
      <div class="clr"></div>
    </div>
  </div>
 -->
	</div>
</body>
</html>