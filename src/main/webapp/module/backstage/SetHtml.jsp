<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>身在江湖</title>
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="/test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">


</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">

		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>生成HTML</h5>
				<div class="ibox-tools">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> </a>

				</div>
			</div>
			<div class="ibox-content" style="min-height:800px;display: flex; " >


<div style="width:600px;float:left;">
			<!-- <a href="S_PageHtml.do" style="float:left;min-width:100px;" >生成分类内容页</a> <a href="makeCate.do" style="float:left;min-width:100px;" >生成分类页</a> <a href="makeContent.do" style="float:left;min-width:100px;" >生成内容页</a> <Br>
				<Br>
				<a style="float:left;min-width:60px;" href="makeindex.do">生成首页</a> 
				<a style="float:left;min-width:60px;"  href="makeTopic.do">专题首页</a> 
				<a style="float:left;min-width:60px;"  href="makeCover.do">专题封面</a> 				
				<a style="float:left;min-width:60px;"  href="/backstage/Html_Portal.do"  >站点首页</a>
				<a href="javascript:void(0)"  onclick="ttag()"      style="float:left;min-width:100px;">标签列表页实时</a>
				<a href="/backstage/Html_Item_taglist_js.do"   onclick="document.frames('tt').location=this.href;return false"  target="tt"  style="float:left;min-width:100px;"    >预道</a>
				<a href="/backstage/Html_Item_taglist_js3.do"      style="float:left;min-width:100px;"  >222预道</a>
				 -->	
				 
	<!--  <a href="/backstage/Html_Item_NameList.do?dir='name'">生成姓名列表</a>-----<a href="/backstage/Html_Item_NameDetail.do">生成姓名内容页</a>--  -->
	
	<a href="/backstage/Html_Item_NameList.do?dir='name'"   id="9983" target="tt"  style="float:left;min-width:120px;">姓名列表页</a>
	<a href="/backstage/Html_Item_NameAnalyse.do"  target="tt"  style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail.do?id=202" target="tt" id="9981"  style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail2.do?id=6" target="tt" id="8881"  style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail3.do?id=0" target="tt" id="8882"  style="float:left;min-width:100px;">按id分析页3</a>
	<Br>	 <Br>
	<a href="/backstage/Html_Item_NameAnalyse.do"  target="tt"            style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail.do"   target="tt" id="9981"  style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail2.do"  target="tt" id="8881"  style="float:left;min-width:100px;">一键分析页</a>
	<a href="/backstage/Html_Item_NameDetail3.do"  target="tt" id="8882"  style="float:left;min-width:100px;">按id分析页3</a>
	<Br>	 <Br>	
	
	<a href="/backstage/Html_Item_NameDetailA.do"  target="tt"  style="float:left;min-width:70px;">分析页A</a>
	<a href="/backstage/Html_Item_NameDetailB.do"  target="tt"  style="float:left;min-width:70px;">分析页B</a>
	<a href="/backstage/Html_Item_NameDetailC.do"  target="tt"  style="float:left;min-width:70px;">分析页C</a>
	<a href="/backstage/Html_Item_NameDetailD.do"  target="tt"  style="float:left;min-width:70px;">分析页D</a>
	<a href="/backstage/Html_Item_NameDetailE.do"  target="tt"  style="float:left;min-width:70px;">分析页E</a>
	<a href="/backstage/Html_Item_NameDetailF.do"  target="tt"  style="float:left;min-width:70px;">分析页F</a>
	
	<Br>	 <Br>
	
	 <input type="text" id="9982" class="form-control" style="width:50px;float:left;">    
	 <button class="btn btn-primary" type="button" onclick="tb()" style="float:left;margin-left:5px;">设置</button>	
	 <!-- 
	 <button class="btn btn-primary" type="button" onclick="tbb()" style="float:left;margin-left:5px;">设置2</button>
	  -->
	 <button class="btn btn-primary" type="button" onclick="tbbb()" style="float:left;margin-left:5px;">设置2</button>			
	 <Br>	<Br>
	 <hr style="margin-bottom:20px;" >
	 
	 <a href="/sitemap/ccc.do" style="float:left;min-width:100px;"   target="tt">sitemapindex_xml</a>	
	 <a href="/sitemap/c.do" style="float:left;min-width:80px;" target="tt" >sitemap_xingzuo</a>
	 <a href="/sitemap/cc.do" style="float:left;min-width:100px;"  target="tt">姓名sitemap</a>
	 <a href="/backstage/sitemaphtml.do" style="float:left;min-width:100px;" target="tt"  >sitemap.do_html</a>
	 <a href="/sitemap/itemmap.do" style="float:left;min-width:100px;" target="tt" >itemsitemap</a>
	 <a href="/sitemap/sjmap.do" style="float:left;min-width:10px;" target="tt" >手机端sitemap</a>
	  
		 <Br>	 <Br> 	

				<hr style="margin-bottom:20px;" >
		单频道首页	就是讲该频道首页生成为站点首页。//	本来是站点首页 + 多频道首页  当只有一个频道时站点首页 和单频道首页有些不适宜，所以讲站点首页 和 单频道首页一样。	
				<hr style="margin-bottom:20px;" >
	<c:forEach items="${lst}" var="a" varStatus="status">
		<a href="/${a.item_directorie}/portal.html" style="float:left;min-width:90px;" >${a.item_name}</a>  
		<a href="/backstage/Html_Item.do?dir=${a.item_directorie}" style="float:left;min-width:60px;" >频道首页</a> 
		<a href="/backstage/Html_Item_Cate.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none" >栏目页</a>
		<a href="/backstage/Html_Item_Cate.do?dir=${a.item_directorie}" style="float:left;min-width:60px;"  target="tt">栏目页</a>

		<a href="/backstage/Html_Item_Content.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none">内容页</a>
		<a href="/backstage/Html_Item_Content.do?dir=${a.item_directorie}" style="float:left;min-width:60px;" target="tt">内容页</a>
		
		<a href="/backstage/Html_Item_Topic.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none">专题页</a> 
		<a href="/backstage/Html_Item_Topic.do?dir=${a.item_directorie}" style="float:left;min-width:60px;" target="tt">专题页</a> 
		
		<a href="/backstage/Html_Item_Cover.do?dir=${a.item_directorie}" style="float:left;min-width:75px;display:none">专题封面页</a>
		<a href="/backstage/Html_Item_Cover.do?dir=${a.item_directorie}" style="float:left;min-width:75px;" target="tt">专题封面页</a>
		
		<a href="/backstage/Html_Item_CoverDetail.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none">专题详情</a>
		<a href="/backstage/Html_Item_CoverDetail.do?dir=${a.item_directorie}" style="float:left;min-width:60px;" target="tt">专题详情</a>
		
		<a href="/backstage/Html_Item_tag.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none">标签页</a>
		<a href="/backstage/Html_Item_tag.do?dir=${a.item_directorie}" style="float:left;min-width:60px;" target="tt" >标签页</a>
		
		<a href="/backstage/Html_Item_taglist.do?dir=${a.item_directorie}" style="float:left;min-width:60px;display:none">标签列表</a>
		<a href="/backstage/Html_Item_taglist.do?dir=${a.item_directorie}" target="tt" style="float:left;min-width:60px;">标签列表</a>
		<Br> 
     </c:forEach> 
				${info}
    <hr style="margin-bottom:20px;" >
	<a href="/backstage/Html_SingleItemIndex.do"  style="float:left;min-width:100px;">多/单频道首页</a>
	<a href="/backstage/Html_MultipleItemIndex.do"  style="float:left;min-width:100px;">windows模式</a>

</div>	
	
	<div style="float:left;flex: 1;" ><iframe id="tt"  width="100%"   name="tt" scrolling="yes" frameborder="0" src="" height="700px" ></iframe></div>
	
	
	
	
	
	
			</div>
		</div>
		
		<hr>
	
		
		<!-- End Panel Other -->


	</div>
















	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/layer/layer.js"></script>



	<script type="text/javascript">
	
		function tb() {
		var b=	document.getElementById("9982").value ;
		var a =	"/backstage/Html_Item_NameDetail.do";
		document.getElementById("9981").attributes["href"].value=a+"?id="+b ;
		document.getElementById("9981").innerHTML += b;
		
		var aa="/backstage/Html_Item_NameList.do?dir='name'";
		document.getElementById("9983").attributes["href"].value=aa+"&id="+b ;
		document.getElementById("9983").innerHTML += b;
		}
		
		function tbb() {
			var b=	document.getElementById("9982").value ;
			var a =	"/backstage/Html_Item_NameDetail2.do";
			document.getElementById("8881").attributes["href"].value=a+"?id="+b ;
			document.getElementById("8881").innerHTML += b;

			}	
		function tbbb() {
			var b=	document.getElementById("9982").value ;
			var a =	"/backstage/Html_Item_NameDetail3.do";
			document.getElementById("8882").attributes["href"].value=a+"?id="+b ;
			document.getElementById("8882").innerHTML += b;

			}	
		
</script>




	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>


	<!-- Bootstrap table -->
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

	<!-- Peity      -->
	<script src="/test/js/demo/bootstrap-table-demo.js"></script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->

</body>

</html>