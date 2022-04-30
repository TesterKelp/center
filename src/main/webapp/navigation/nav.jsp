<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>列表页-杨青青个人博客模板主题《今夕何夕》</title>
<meta name="keywords" content="blog" />
<meta name="description" content="blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/navigation/css/bas.css" rel="stylesheet">
<link href="/navigation/css/m.css" rel="stylesheet">
<script src="/navigation/js/jquery-1.8.3.min.js" ></script>
<script src="/navigation/js/comm.js"></script>




<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">






<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<!--top begin-->

<header id="header">
  <div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="#">杨青青个人博客</a></div>
    <nav>
      <ul id="starlist">
        <li><a href="index.html">首页</a></li>
        <li><a href="list.html">个人博客日记</a></li>
        <li class="menu"><a href="list2.html">博客网站制作</a>
          <ul class="sub">
            <li><a href="/6">推荐工具</a></li>
            <li><a href="/7">JS经典实例</a></li>
            <li><a href="/8">网站建设</a></li>
            <li><a href="/7">CSS3|Html5</a></li>
            <li><a href="/8">心得笔记</a></li>
          </ul>
          <span></span></li>
        <li><a href="list3.html">网页设计心得</a></li>
        <li><a href="daohang.html">优秀个人博客</a></li>
        <li><a href="about.html">关于我</a></li>
      </ul>
    </nav>
    <div class="searchico"></div>
  </div>
</header>
<div class="searchbox">
  <div class="search">
    <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
      <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onFocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onBlur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
      <input name="show" value="title" type="hidden">
      <input name="tempid" value="1" type="hidden">
      <input name="tbname" value="news" type="hidden">
      <input name="Submit" class="input_submit" value="搜索" type="submit">
    </form>
  </div>
  <div class="searchclose"></div>
</div>

<!--top end-->
<article>
 
  <div class="whitebg">
    <h2 class="htitle"><span class="hnav"><a href="javascript:void(0)"  onclick="addSite()"  >添加链接</a><a href="javascript:void(0)"  onclick="setting()"  >设置</a></span>我的网址导航</h2>
    <ul class="site_tj site_yx" style="min-height:700px">
    
    <c:forEach items="${lst}" var="a" varStatus="status" begin="0" end="96" step="1">
					 <li>     <a href="${a.site_url}" target="_blank" title="id=11 LinkNemo博客"  sytle="color:#000">${a.site_name}  </a></li>
				</c:forEach>
    



   


    
    
     
    </ul>
  </div>
</article>
<footer>
  <div class="box">
    <div class="wxbox">
      <ul>
        <li><img src="/navigation/images/wxgzh.jpg"><span>微信公众号</span></li>
        <li><img src="/navigation/images/wx.png"><span>我的微信</span></li>
      </ul>
    </div>
    <div class="endnav">
      <p><b>站点声明：</b></p>
      <p>1、本站个人博客模板，均为杨青青本人设计，个人可以使用，但是未经许可不得用于任何商业目的。</p>
      <p>2、所有文章未经授权禁止转载、摘编、复制或建立镜像，如有违反，追究法律责任。举报邮箱：<a href="http://www.51qianduan.com//cgi-bin/qm_share?t=qm_mailme&email=HHh9cn95b3F1cHVye1xtbTJ-c3E" target="_blank">dacesmiling@qq.com</a></p>
      <p>Copyright © <a href="http://www.51qianduan.com/" target="_blank">www.yangqq.com</a> All Rights Reserved. 备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank">蜀ICP备11002373号-1</a></p>
    </div>
  </div>
  <a href="#">
  <div class="top"></div>
  </a> </footer>
  
  
  
  	<div id="nav" style="display: none">
		<div class="ibox-content">
		<form class="form-horizontal" method="get">
			   	<div class="form-group">
					<label class="col-sm-3 control-label">网址名称：</label>
					<div class="col-sm-9">
						<input type="text" id="sitename"   value="ssss" class="form-control">
					</div>
				</div>
				 	<div class="form-group">
					<label class="col-sm-3 control-label">网址：</label>
					<div class="col-sm-9">
						<input type="text" id="siteurl" value="http://www.004.la"   class="form-control">
					</div>
					</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">打开方式：</label>
					<div class="col-sm-9">
						<select class="form-control" id="openstyle">
							<option value="1">新窗口</option>
							<option value="2">原窗口</option>
							<option value="3">新页面</option>
						</select>
					</div>
					<div class="col-sm-5">
						<div onclick="saveSite()" class="btn btn-primary">添加</div>
					</div>
				</div>
			</form>
		</div>
	</div>
  
    	<div id="setting" style="display: none">
		<div class="ibox-content">
		<form class="form-horizontal" method="get">
			   	<div class="form-group">
					<label class="col-sm-3 control-label">网址名称：</label>
					<div class="col-sm-9">
						<input type="text" id="sitename"   value="ssss" class="form-control">
					</div>
				</div>
				 	<div class="form-group">
					<label class="col-sm-3 control-label">网址：</label>
					<div class="col-sm-9">
						<input type="text" id="siteurl" value="http://www.004.la"   class="form-control">
					</div>
					</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">打开方式：</label>
					<div class="col-sm-9">
						<select class="form-control" id="openstyle">
							<option value="1">极简样式</option>
							<option value="2">精简样式</option>
							<option value="3">图标样式</option>
							<option value="4">图文样式</option>
						</select>
					</div>
					<div class="col-sm-5">
						<div onclick="saveSite()" class="btn btn-primary">添加</div>
					</div>
				</div>
			</form>
		</div>
	</div>
  
  
  
  
  
  	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../layer/layer.js"></script>
  	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
  		<script src="../../test/js/content.js?v=1.0.0"></script>
  	 <script type="text/javascript">
  	
  	 
  	 
  	 
     function setting(){
    	 $.ajax({
    	 	type : "GET",
    	 	url : "/module/admin/IsLogin.do",
    	 	dataType : "text",
    	 	success : function(data) {
    	 		if(data=="0"){
    	 			alert("please login system")
    	 			window.navigate("/module/usercenter/login.jsp");
    	 		}else{
    	 			//alert("login is ok")
    	 			layer.open({
    	 	    		title : '添加网址',
    	 	    		skin : 'layui-layer-molv',
    	 	    		type : 1,
    	 	    		area : [ '500px', '300px' ],
    	 	    		shadeClose : true, // 点击遮罩关闭
    	 	    		content : $('#setting'),
    	 	    	});
    	 		}

    	 	}
    	 });	
    	      }
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	 
  	</script>
     <script type="text/javascript">
     function addSite(){
$.ajax({
	type : "GET",
	url : "/module/admin/IsLogin.do",
	dataType : "text",
	success : function(data) {
		if(data=="0"){
			alert("please login system")
			window.navigate("/module/usercenter/login.jsp");
		}else{
			//alert("login is ok")
			layer.open({
	    		title : '添加网址',
	    		skin : 'layui-layer-molv',
	    		type : 1,
	    		area : [ '500px', '300px' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#nav'),
	    	});
		}

	}
});	
     }
     
    function saveSite(){
     	var  sitename=	document.getElementById("sitename").value ;
    	var  siteurl=	document.getElementById("siteurl").value ;	
    	var projectSelect=document.getElementById("openstyle");  
    	var index=projectSelect.selectedIndex;
    	var openstyle=projectSelect.options[index].value ;
    	var name = sitename.replace(" ","").length ;
    	alert(name);
    	if(name==0){
    		alert("请填写网站名称");
    		return false ;
    	}
    	var isok=checkurl(siteurl) ;
    	if(!isok){
    		alert("请正确填写网址");
    		return false ;
    	}
    	if(isok&&name>0){	
    		addNav(sitename,siteurl,openstyle);
    	}
    } 
     
    
    function checkurl(url){
		//alert(url);
    	 var str=url;
    	//判断URL地址的正则表达式为:http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?
    	//下面的代码中应用了转义字符"\"输出一个字符"/"
    	var Expression=/http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/;
    	var objExp=new RegExp(Expression);
    	if(objExp.test(str)==true){
    	return true;
    	}else{
    	return false;
    	}
    }	 

    
    function addNav(sitename,siteurl,openway){
    	$.ajax({
    		type : "POST",
    		url : "/nav/addsite.do",
    		data: {sitename: sitename,siteurl:siteurl,openway:openway},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			//
    			 if(data=="ok"){
    				 alert(data);
    				 location.reload() ;
    			 }
    		}
    	});
    }
</script>
  
  
  
  
  
</body>
</html>
