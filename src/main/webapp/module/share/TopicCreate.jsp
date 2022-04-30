<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	                                         <%@ taglib uri="/displaytags" prefix="auto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/test/res/webuploader.css">
<link href="/test/css/defect.css" rel="stylesheet">
<script type="text/javascript" src="/test/res/jquery.js"></script>
<script type="text/javascript" src="/test/res/webuploader.js"></script>
</head>
<body class="gray-bg" >

	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content animated fadeInRight" >
		<div class="row">
		<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0" id="leftmenu"> </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>

			<div class="col-sm-10">
				<div class="ibox float-e-margins">
					<div class="ibox-content" style="min-height:950px">
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<br> <br> <br> <br>
								<form class="form-horizontal m-t" id="topicForm">
								    <div class="form-group">
                                <label class="col-sm-3 control-label">所属频道</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="account" id="item"       onchange="inittemplate()" >
                                       <option value="0" selected>请选择频道</option>
                                         <c:forEach items="${tlst}" var="a" varStatus="status">
                                         <option value="${a.item_id}">${a.item_name}</option>  
                                         </c:forEach>
                                    </select>
                                    <span class="help-block m-b-none">最先选择频道</span>
                                </div>
                            </div>
								
								<div class="form-group">
                                <label class="col-sm-3 control-label">选择模板</label>
                                <div class="col-sm-8">
                                    <select class="form-control m-b" name="account" id="template"  >
                                         
                                    </select>
                                    <span class="help-block m-b-none">选择频道后显示模板</span>
                                </div>
                            </div>
								
								
									<div class="form-group">
										<label class="col-sm-3 control-label">专题名称：</label>
										<div class="col-sm-8">
											<input id="topicname" name="topicname" class="form-control"
												type="text" aria-required="true" aria-invalid="true"
												class="error">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">专题介绍：</label>
										<div class="col-sm-8">
											<textarea id="topicintro" class="form-control"
												aria-required="true" required="" name="topicintro">${notice}</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">专题封面：</label>
										<div class="col-sm-8">
											<input id="topicimage" name="topicimage" class="form-control"
												value="http://192.168.1.105:8080/defectsystem/module/usercenter/face/a2.jpg"
												type="hidden"> <input name="imgAddress"
												type="hidden">
											<div id="uploader-demo">
												<!--用来存放item-->
												<div id="fileList" class="uploader-list"></div>
												<div id="upInfo">
													<!--  <img src="/test/res/image.png" width="150" hight="150">-->
												</div>
												<div id="filePicker">选 择 图 片</div>
												<span class="help-block m-b-none"><i
													class="fa fa-info-circle"></i> 请上传专题封面 200 * 200</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-8 col-sm-offset-3">
											<button class="btn btn-primary" type="submit">创建专题</button>
										</div>
									</div>
								</form>
								<br> <br> <br>
							</div>
						</div>
					</div>
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
       thumbnailWidth = 150 * ratio,
       thumbnailHeight = 150 * ratio,
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
    
       server: baseUrl+'/module/share/uptopic.do',
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
               '<div id="' + file.id + '" class="file-item thumbnail">' +
                   '<img>' +
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
    //   $("#upInfo").html(" ");
       $("#topicimage").val(response._raw);
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

    </script>
	<!-- 全局js -->
	<script src="/test/js/jquery-form.js"></script>
	<script src="/test/js/jquery.Jcrop.min.js"></script>
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>
	<script src="/test/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="/test/js/plugins/validate/messages_zh.min.js"></script>
	<script src="/test/js/demo/form-validate-topic.js"></script>
	
	
	
	
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


function setitemid(){
	
	var se = document.getElementById("item").selectedIndex;
	var itemid = document.getElementById("item").options[se].value;
	
	document.getElementById("itemid").value = itemid ;
	
	
}







</script>
	
	 <script>

    function  inittemplate(){
    	//alert("dd");
    	var dir  =  $("#item").val()  ;
    	//alert(dir);
    	$.ajax({
    		type : "GET",
    		url : "/backstage/TopicCreateInitTemplateJs.do",
    		data: {dir:dir},
    		dataType : "text",
    		success : function(data) {
    		//	alert(data);	
       var a =eval("("+data+")") ;
		
          $("#template").empty();
    	 for (var i = 0; i < a.lt.length; i++) {
       	   $("#template").append("<option value='"+(i+1)+"' >皮肤"+(i+1)+"</option>");
       	   }
    	    	
    	 
    		},error:function(){
    			　　alertLayer("获取数据失败","error");
    		　　}
    		
    	});
    	
    	
    	
    }
    
    
    </script>
	
	<script type="text/javascript" src="/module/common/leftmenu.js"></script>
	
</body>
</html>