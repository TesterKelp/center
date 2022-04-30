<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - 空白页</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/test/res/webuploader.css">
<link href="/test/css/defect.css" rel="stylesheet">
<script type="text/javascript" src="/test/res/jquery.js"></script>
<script type="text/javascript" src="/test/res/webuploader.js"></script>

<style>
.wrap{ margin-top:10px;}
.wrap li{ width:260px; height:200px; margin-left:8px; margin-top:10px; margin-bottom:10px; float:left; text-align:center; display:inline;}
.wrap li h1{ font-size:12px; color:#005eac; line-height:22px; text-align:center; margin-top:5px; font-weight:normal;}
.wrap li p{ color:#666; line-height:22px; text-align:center;}

</style>




</head>

<body class="gray-bg" >
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
                            <ul class="folder-list m-b-md" style="padding: 0" id="leftmenu"></ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
			<div class="col-sm-10" >
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>首页设置</h5>
					</div>
					<div class="ibox-content" style="min-height: 800px;">
						<div class="row">
							<div class="col-sm-1"></div>
							<div class="col-sm-10" >
                           <div class="col-sm-11" style="min-height: 30px;">
								<form role="form" method="get" class="form-horizontal"> 
								
									<div class="form-group">
										<label class="col-sm-2 control-label">上传背景：</label>
										<div class="col-sm-4">
									<c:if test="${lst== null || fn:length(lst) == 0}"></c:if>		
									
									
									<div id="filePicker">上传背景</div>
										</div>
										<div class="col-sm-6">
											上传图片建议：<br>
											每人可以上传10张自定义背景图。
										</div>
									</div>
									
									
									<div class="form-group">
									   <label class="col-sm-2 control-label">图片模式：</label>
										<div class="col-sm-4 " style="padding-top:8px;">
										                                                             
											<c:if test="${udate.picmodel != 1 }">覆盖模式    <a href="#" onclick="SetPicModle('1')" >切换</a></c:if>
											<c:if test="${udate.picmodel == 1 }">平铺模式    <a href="#" onclick="SetPicModle('2')" >切换</a></c:if>
										</div>
										<div class="col-sm-6">
											1.平铺模式，指重复图像覆盖整个页面。<br>
											2.覆盖模式，一张图片覆盖到整个页面。	
										</div>
									</div>
									
									<div class="form-group">
									   <label class="col-sm-2 control-label">二级导航：</label>
										<div class="col-sm-4 " style="padding-top:8px;">
										                                                               
											<c:if test="${udate.fileon != 1 }">当前关闭    <a href="#" onclick="Setfileon('1')" > 开启</a></c:if>
											<c:if test="${udate.fileon == 1 }">当前开启    <a href="#" onclick="Setfileon('0')" > 关闭</a></c:if>
										</div>
										<div class="col-sm-6">
											1.关闭，指首页二级导航窗口关闭。<br>
											2.开启，指首页二级导航窗口打开。	
										</div>
									</div>
									
									
									
									
								</form>
							</div>
						

						<div class="col-sm-1">

												<input type="hidden" class="form-control"  id="av">
											<div id="uploader-demo">
												<!--用来存放item-->
												<div id="fileList" class="uploader-list" style="DISPLAY: none;">


											<div id="WU_FILE_0" class="file-item thumbnail upload-state-done"   >
												<img   height="1" width="1"  id="avatar"  
													src=""    >
												<p class="progress">
													<span style="width: 100%;"></span>
												</p>
											</div>


										</div>
												<div id="upInfo" style="visibility: hidden">
													<!--  <img src="/test/res/image.png" width="150" hight="150">-->
												</div>
												
											
								</div>
							
						</div>
					</div>
					
					
					
					
					
					
					<div class="col-sm-12" >
									<div class="wrap">
										<ul id="c">
											<c:forEach items="${lst}" var="a" varStatus="status">
												<li><a href="#"><img src="${a.bg}" width="260" height="180" /></a>
													<h1>
														<c:if test="${a.piccate == 2}">
															<a   onclick="SetBg('${a.bg}')"   href="#"> 设置为桌面背景 </a>
														</c:if>
														<c:if test="${a.piccate == 5}">
															<a href="#" onclick="SetBg('${a.bg}')"> 设置为桌面背景 </a><a href="#" onclick="DelBg('${a.id}')">---删除该背景 </a>
														</c:if>
													</h1></li>
											</c:forEach>
										</ul>
									</div>
							</div>
					
					
				</div>   <!--this  "<div class="ibox-content""  is  end  --> 

			</div>
		</div>
	</div>
</div>


 <%@ include file="/module/common/footer.jsp"%> 


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
    
       server: '/index/upBg.do',
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
                   '<img       class="img-circle circle-border" >' +
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
 
       $percent.css( 'width', percentage * 100 + '%' );
   });
 
   // 文件上传成功，给item添加成功class, 用样式标记上传成功。
   //注意我写样式了啊response:服务端返回的数据
   uploader.on( 'uploadSuccess', function( file,response) {
       $( '#'+file.id ).addClass('upload-state-done');
       //console.info(response);
       $("#upInfo").html("<font color='red'>"+response._raw+"</font>");
       $("#avatar").val("/module/usercenter/face/"+response._raw);
       $("#av").val("/module/usercenter/face/"+response._raw);
       
       var pic = "/index/bg/"+response._raw ;
       $.ajax({
    		type : "GET",
    		url : "/nav/SaveBg.do",
    		data: {pic: pic },
    		dataType : "text",
    		success : function(data) {	
    			if(data=="1"){
    				alert("上传成功");
    				
   				 location.reload()    ;
   			   }else{
   				   alert(data);
   			   }
    		}
    	});	
       
       
       
       
       
       
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













	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>
	<script src="js/persioninfo.js"></script>

	
	
	
	
	
	<script type="text/javascript">
function  SetBg(pic){
	
$.ajax({
	type : "GET",
	url : "/nav/SetBg.do",
	data: {pic: pic },
	dataType : "text",
	success : function(data) {	
		if(data=="1"){
			alert("设置成功");
			 location.reload()    ;
		   }else{
			   alert(data);
		   }
	}
});	}



function  DelBg(id){
	$.ajax({
		type : "GET",
		url : "/nav/DelBg.do",
		data: {id: id },
		dataType : "text",
		success : function(data) {	
			if(data=="1"){
				alert("删除成功");
				 location.reload()    ;
			   }else{
				   alert(data);
			   }
		}
	});	}



</script>
	
	
	
<script type="text/javascript">	
function	SetPicModle(value){

	$.ajax({
		type : "GET",
		url : "/nav/SetPicModle.do",
		data: {value: value },
		dataType : "text",
		success : function(data) {	
			if(data=="1"){
				alert("切换成功");
				 location.reload()    ;
			   }else{
				   alert(data);
			   }
		}
	});	
}



function Setfileon(value){
	
	
	$.ajax({
		type : "GET",
		url : "/nav/Setfileon.do",
		data: {value: value },
		dataType : "text",
		success : function(data) {	
			if(data=="1"){
				alert("切换成功");
				 location.reload()    ;
			   }else{
				   alert(data);
			   }
		}
	});
	
	
	
}









</script>
	
	
	
	
<script type="text/javascript">

$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {	
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
		
		
	}
});	
</script>
<script type="text/javascript" src="/module/common/leftmenu.js"></script>
</body>

</html>