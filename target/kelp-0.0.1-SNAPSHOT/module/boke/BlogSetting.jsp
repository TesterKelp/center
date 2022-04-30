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
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../../test/res/webuploader.css">
<script type="text/javascript" src="../../test/res/jquery.js"></script>
<script type="text/javascript" src="../../test/res/webuploader.js"></script>


</head>
<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content">
		<div class="row">
		
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
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>博客设置</h5>
					</div>
					<div class="ibox-content">
						<div class="row">
			<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<form role="form" method="get" class="form-horizontal">
									<div class="form-group">
										<label class="col-sm-3 control-label">个人介绍：</label>
										<div class="col-sm-8">
											<textarea id="introduce" class="form-control"
												aria-required="true" required="" name="introduce">${introduce}</textarea>
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">站点公告：</label>
										<div class="col-sm-8">
											<textarea id="notice" class="form-control"
												aria-required="true" required="" name="notice">${notice}</textarea>
										</div>
									</div>


									<div class="form-group">
										<label class="col-sm-3 control-label">模板设置：</label>
										<div class="col-sm-4">
											<select class="form-control m-b" id="template">
												<option value="t10">模板1</option>
												<option value="t4">模板2</option>
												<option value="t5">模板3</option>
											</select>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label">博客logo：</label>
										<div class="col-sm-3">
						
                                              <input id="piclogo" name="topicimage" class="form-control"  > 
												<input name="imgAddress" type="hidden">
											<div id="uploader-demo">
												<!--用来存放item-->
												<div id="fileList" class="uploader-list">


											<div id="WU_FILE_0"   >
												<img   height="200" width="200" class="img-circle circle-border" id="avatar"  
													src=""    >
												<p class="progress">
													<span style="width: 100%;"></span>
												</p>
											</div>


										</div>
												<div id="upInfo">
													<!--  <img src="../../test/res/image.png" width="150" hight="150">-->
												</div>
												<div id="filePicker">上传logo</div>
											
			

						</div>
										</div>
									</div>
									
									
									<div class="form-group">
										<label class="col-sm-3 control-label">博客地址：</label>
										<div class="col-sm-6">

											<a target="_blank" href="/blog/Blog.do?userid=${userid}">/blog/Blog.do?userid=${userid}
												查看</a>
										</div>
									</div>




								</form>

								<div class="form-group">

									<label class="col-sm-3 control-label"></label>
									<div class="col-sm-3">
										<div id="test1" class="btn btn-primary"
											onclick="EditBlogSetting()">保存信息</div>
										<!--   <div id="test1" class="btn btn-primary">取消设置</div> -->
									</div>
								</div>
							</div>





						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="js/persioninfo.js"></script>

	<script type="text/javascript">
		function  EditBlogSetting(){
		var introduce =	document.getElementById("introduce").value  ;
		var	notice = document.getElementById("notice").value  ;
		var	template= document.getElementById("template").value  ;		
		var	piclogo= document.getElementById("piclogo").value  ;	
		$.ajax({
			type : "POST",
			url : "/module/boke/saveBlogSetting.do",
			data : {introduce : introduce,notice : notice,template :template,logo:piclogo},
				async : false,
			dataType : "json",
			success : function(result) {
				if(result.msg =="ok")		{
					alert("修改成功");
				}		  
			}
		});
		}


</script>


<script>
  var baseUrl = '${pageContext.request.contextPath }';

//图片上传demo
jQuery(function() {
   var $ = jQuery,
       $list = $('#fileList'),
       // 优化retina, 在retina下这个值是2
       ratio = window.devicePixelRatio || 1,
 
       // 缩略图大小
       thumbnailWidth = 200 * ratio,
       thumbnailHeight = 200 * ratio,
       // Web Uploader实例
       uploader;
   // 初始化Web Uploader
   uploader = WebUploader.create({
       // 自动上传。
       auto: true,
       // swf文件路径
      // swf:  baseUrl+'js/Uploader.swf',
      swf:  baseUrl+'js/Uploader.swf',
       // 文件接收服务端。
       //server: baseUrl+'/files/addImg',
    
       server: '/module/share/uploadlogo.do',
       // 选择文件的按钮。可选。
       // 内部根据当前运行是创建，可能是input元素，也可能是flash.
       pick: '#filePicker',
    // 图片质量，只有type为`image/jpeg`的时候才有效。
       quality: 90,
       // 只允许选择文件，可选。
       fileNumLimit: 1,
       accept: {
           title: 'Images',
           extensions: 'gif,jpg,jpeg,bmp,png',
           mimeTypes: 'image/*'
       }
   });
 
 
// 当有文件添加进来的时候
   uploader.on( 'fileQueued', function( file ) {
	
	
	   
       var $li = $(
               '<div id="' + file.id + '" class="file-item thumbnail"     >' +
                   '<img        >' +
       //            '<img       class="img-circle circle-border" >' +
     //              '<div class="info">' + file.name + '</div>' +
               '</div>'
               ),
           $img = $li.find('img');
       // $list为容器jQuery实例
       $list.html("");
       $list.append( $li );
 
       // 创建缩略图
       // 如果为非图片文件，可以不用调用此方法。
       // thumbnailWidth x thumbnailHeight 为 100 x 100
       uploader.makeThumb( file, function( error, src ) {
           if ( error ) {
               $img.replaceWith('<span>不能预览</span>');
               return;
           }
 
           $img.attr( 'src', src );
       }, thumbnailWidth, thumbnailHeight );
       
       $("#filePicker").on('click',function(){
    	   uploader.removeFile(file);
       });
    
   });
 
// 文件上传过程中创建进度条实时显示。
   uploader.on( 'uploadProgress', function( file, percentage ) {
       var $li = $( '#'+file.id ),
           $percent = $li.find('.progress span');
 
       // 避免重复创建
       if ( !$percent.length ) {
           $percent = $('<p class="progress"><span></span></p>')
                   .appendTo( $li )
                   .find('span');
       }
 
   //   $percent.css( 'width', percentage * 100 + '%' );
   });
 
   // 文件上传成功，给item添加成功class, 用样式标记上传成功。
   //注意我写样式了啊response:服务端返回的数据
   uploader.on( 'uploadSuccess', function( file,response) {
       $( '#'+file.id ).addClass('upload-state-done');
       //console.info(response);
       $("#upInfo").html("<font color='red'>"+response._raw+"</font>");
    //   $("#upInfo").html(" ");
    
      // $("#topicimage").val("/module/usercenter/face/"+response._raw);
            $("#piclogo").val("/pic/logo/"+response._raw);
       $("#avatar").val("/pic/logo/"+response._raw);
       $("#av").val("/pic/logo/"+response._raw);
   });
   // 文件上传失败
   uploader.on( 'uploadError', function(file) {
       var $li = $( '#'+file.id ),
           $error = $li.find('div.error');
       alert(reson);
       // 避免重复创建
       if ( !$error.length ) {
           $error = $('<div class="error"></div>').appendTo( $li );
       }
       $error.text('上传失败!');
   });
   // 完成上传完了，成功或者失败，先删除进度条。
   uploader.on( 'uploadComplete', function( file ) {
       $( '#'+file.id ).find('.progress').remove();
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
