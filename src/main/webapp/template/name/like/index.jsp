<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
		<title>七彩情书</title>
	</head>
	<body>
		<article>
			<p class="text" id="text">
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			有什么话想对她/他说吗？，可以添加我微信呦，免费定制不一样的爱情情书。
			
			</p>
			<button id="btn" ele-range>放松一下</button>
		</article>
		<script src="js/text.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var resetbtn = document.getElementById("btn");
			var btn = new Neontext("btn");
			var neontext = new Neontext("text");
				neontext.render.run();
				btn.render.run();
			resetbtn.addEventListener("click",function(){
				neontext.render.killer();
				btn.render.killer();
			})
		</script>
	</body>
</html>