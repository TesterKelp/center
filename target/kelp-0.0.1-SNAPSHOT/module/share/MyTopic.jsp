<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="/displaytags" prefix="auto"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - 联系人</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
</head>

<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>

	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row" id="user">
		
		
		
		<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
                                          
                                <li>
                                    <a href="/module/usercenter/personinfo.jsp"> <i class="fa  fa-user"></i> 个人信息</a>
                                </li>
                                <li>
                                    <a href="/module/boke/BlogCate.jsp"> <i class="fa fa-file-text-o"></i> 博客分类                                    </a>
                                </li>
                                <li>
                                    <a href="/module/boke/BlogSettingPage.do"> <i class="fa fa-cog"></i>博客设置</a>
                                </li>
                                  <li>
                                    <a href="/module/share/MyArticleManage.jsp"> <i class="fa fa-book"></i>我的分享</a>
                                </li>
                                <li>
                                    <a href="/module/share/ArticleCreate.jsp"> <i class="fa fa-send"></i>发布分享</a>
                                </li>
                                 <li>
                                    <a href="/module/share/MyTopic.do"> <i class="fa fa-navicon"></i>专题管理</a>
                                </li>
                                <li>
                                    <a href="/module/share/TopicCreate.jsp"> <i class="fa fa-plus-square-o"></i>创建专题</a>
                                </li>
                                        <li>
                                    <a href="/"> <i class="fa fa-inbox "></i> 应用首页                                     </a>
                                </li>
                                <li>
                                    <a href="<auto:BlogLink></auto:BlogLink>"> <i class="fa fa-home"></i> 我的博客</a>
                                </li>
                            </ul>
                            
                      <!--      
                            
                            <h5>分类</h5>
                            <ul class="category-list" style="padding: 0">
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-navy"></i> 工作</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-danger"></i> 文档</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-primary"></i> 社交</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-info"></i> 广告</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-warning"></i> 客户端</a>
                                </li>
                            </ul>

                            <h5 class="tag-title">标签</h5>
                            <ul class="tag-list" style="padding: 0">
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 朋友</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 工作</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 家庭</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 孩子</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 假期</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 音乐</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 照片</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 电影</a>
                                </li>
                            </ul>
                            
                            -->
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
		
		
		
		<div class="col-sm-10">

			<br> <br>
			
			<c:if test="${topicList.size()==0}">
		<center> 暂无专题，创建专题；</center>	 
			</c:if>
			
			<c:forEach items="${topicList}" var="a">
				<div class="col-sm-4">
					<div class="contact-box">
						<a href="${a.topicid}.html">
							<div class="col-sm-4">
								<div class="text-center">
									<img alt="image" class="img-circle m-t-xs img-responsive"
										src="${a.topicimage}">
									<div class="m-t-xs font-bold">CTO</div>
									<div class="m-t-xs font-bold">
										<a href="/module/share/deltopic.do?topicid=${a.topicid}">删除</a>
										| <a href="/module/share/edittopic.do?topicid=${a.topicid}"">编辑</a>
									</div>
								</div>
							</div>
							<div class="col-sm-8">
								<h3>
									<strong>${a.topicname}</strong>
								</h3>
								<address style="text-overflow: ellipsis">


									<c:if test="${fn:length(a.topicintro)<=100}">${a.topicintro} </c:if>
									<c:if test="${fn:length(a.topicintro)>100}">${fn:substring(a.topicintro,0,100)}</c:if>

								</address>
							</div>
							<div class="clearfix"></div>
						</a>
					</div>
				</div>

			</c:forEach>

</div>
			<!--  
            
            <div class="col-sm-4">
                <div class="contact-box">
                    <a href="profile.html">
                        <div class="col-sm-4">
                            <div class="text-center">
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="../usercenter/face/a2.jpg">
                                <div class="m-t-xs font-bold">射鸡师</div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3><strong>高圆圆</strong></h3>
                            <p><i class="fa fa-map-marker"></i> 上海市闵行区绿地科技岛广场A座2606室</p>
                            <address>
                            <strong>Baidu, Inc.</strong><br>
                            E-mail:xxx@baidu.com<br>
                            Weibo:<a href="">http://weibo.com/xxx</a><br>
                            <abbr title="Phone">Tel:</abbr> (123) 456-7890
                        </address>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </div>
            </div>
        
      -->


		</div>
	</div>

	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>

	<script src="js/user.js"></script>

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>



	<script>
        $(document).ready(function () {
            $('.contact-box').each(function () {
                animationHover(this, 'pulse');
            });
        });
    </script>






<script type="text/javascript">
$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {
	//	var  a=	document.getElementById("menu").innerHTML;
	//	var  b= document.getElementById("menu");
	//	b.innerHTML=a+data ;
		
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
		
		
	}
});	
</script>








</body>

</html>
