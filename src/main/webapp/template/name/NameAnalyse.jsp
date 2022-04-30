<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
<head>
<title>${name}姓名测试_${name}姓名测试祥解_${name}这个名字好吗?_免费起名_免费取名</title>
<meta name="description" content="${name}名字解析测试，${name}姓名的好坏"/>
<meta name="Keywords" Content="${name}这名字怎样，${name}五格解析，${name}五格测试，${name}姓名五格解析测试，${name}名字好不好，${name}测名字" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body >
	<%@ include file="/template/name/htmlheader.jsp"%><br>
		<div class="row"><div class="ibox-content"  >  
						<div class="article-title" ><h2>${name}姓名测试总概</h2></div>
				<div class="col-sm-7"   > <div class="alert alert-info tttt"   >
            <div>  
            <div style="float:left">测试姓名：${name} <Br>姓名拼音：${pin}<Br>字意五行：${wwxx}<Br>康熙笔画：${BiHua}<Br></div>
			<div id="wxl" style="float:right;"></div><div id="wx" style="float:right;"></div>
			</div>
			<div style="clear:both"> </div>
			姓名五格：天格${tian}，人格${ren}，地格${di}，外格${wai}，总格${zong}。<Br>
			<b>[${name}五格解析]</b><Br>
			天格 :${ttian}<Br>人格 :${rren}<Br>地格 :${ddi}<Br>外格 :${wwai}<Br>总格 :${zzong}<Br>
			<b>[${name}三才配置]</b> &nbsp;&nbsp;&nbsp;&nbsp; ${sc}   <Br>
			<b>[${name}三才详解]</b><Br>${scdetail}   <strong  class="sc"  >(${rs})</strong><Br>
			<b>[${name}总格详解]</b><Br>${zzzong}<Br>
			<b>[${name}性格解析]</b><Br>${xingge}<Br>
			<b>[${name}天生丽质]</b><Br>${beautfully}<Br><Br><hr>	
			<b>${name}天格-></b><Br>${tttian}
			<b>${name}人格-></b><Br>${rrren}
			<b>${name}地格-></b><Br>${dddi}
			<b>${name}外格-></b><Br>${wwwai}
            </div></div>
				<div class="col-sm-5">
				    <div class="alert alert-danger ">
									<table width="99%"><tr><td align="center">${name}名字含义/名字现代解释</td></tr>
										<c:forEach items="${allname}" var="m"><tr><td>${m}</td></tr></c:forEach>
									</table>
								</div>
					<div class="alert alert-danger "  id="20252"></div>		
					<a href="/name/nameword/qiming/article_2398.do" >五格重要性说明</a>						
				</div>
			</div></div>		
	<%@ include file="/template/name/footer.jsp"%> 
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>	
	<script src="/template/name/kjs/NameAnalyse.js"></script>
</body></html>