<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - 空白页</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../test/res/webuploader.css">

<style>  
    #filePicker div:nth-child(2){width:100%!important;height:100%!important;}  
</style>  

<style>
#win  {     
   /**
  background-position: center;     
   border: #ffffff 0px solid; 
   display:inline-block;
   float:left ;
   ***/
   
    }
  
lli{ 
width:66px;
height:72px  ; 
float: left;
}  
  #app  {  

   
   /**
      float: left; 
    text-align: center;    
    margin: -15px 0 0 -30px;    
    list-style: none; 
    
       ***/
    
    
     }    

#app a  {     
 text-decoration: none;     
 border: solid 1px transparent;      
 display: block;      
 padding: 3px;    
 margin: 20px 0 0 0;     
 color: #ffffff;     
 text-shadow: 0.2em 0.1em 0.3em #000000;  }   
#app a:hover  {      
border: solid 1px #bbd6ec;      
-webkit-border-radius: 3px;     
box-shadow: inset 0 0 1px #fff;     
-webkit-box-shadow: inset 0 0 1px #fff;     
background-color: #5caae8;  } 

.tt { width:45px; height:45px}  




</style>



</head>

<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
<div style="position:relative;width:100%;min-height:100%;">
	<div class="wrapper wrapper-content">
		<div class="row">



			<div class="col-sm-2">
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<div class="space-25"></div>
							<h5>个人中心</h5>
							<ul class="folder-list m-b-md" style="padding: 0" id="leftmenu"></ul>


							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>









			<div class="col-sm-10" >
				<div class="ibox float-e-margins" >
					<div class="ibox-title" >
						<h5>导航管理</h5> 
						
						<div class="ibox-tools">
					<h5><a href="javascript:void(0)"  style="color:#F00" onclick="addSite()"  >【创建图标】</a></h5>

				</div>
						
					</div>
					<div class="ibox-content" style="min-height: 800px;;padding-left: 0px ;margin-left:0px;padding-right: 0px ;margin-right:0px;">
				<!-- -->	 	<div class="col-sm-12" ;padding-left: 0px ;margin-left:0px;>
							<div class="example" style="height:100%;">
								<table id="t1" class="table table-striped table-bordered table-condensed"
									data-toggle="table" data-query-params="queryParams" data-mobile-responsive="true" 
									data-pagination="true" data-icon-size="outline">
								</table>
							</div>
						</div>	
						
							
							
		<div class="col-sm-12" style="background:url('/index/bg/win11.jpg');min-height: 350px;"  >		
		
					
							<div id="win" >
		<ul id="app" >
			<!-- <lli > <a href="javascript:void(0)"  onclick="mycomputer()"><img src="/index/images/computer.png" class="tt" ><br />我的电脑</a></lli>
			<lli > <a href="/softtest/portal.do" target="_blank"><img src="/index/images/bug.png" class="tt" ><br /> 软件测试</a></lli>
			<lli ><a href="/huaxue/portal.do" target="_blank"> <img src="/index/images/huaxue2.png" class="tt" alt="世间万物之 -化学世界"><br />化学世界</a></lli>
			<lli><a href="/simplie/index.do" target="_blank"><img src="/index/images/101.png" class="tt"><br />晓红鞋</a></lli>
			<lli><a href="/free/portal.do"  target="_blank"><img src="/index/images/541.png" class="tt" alt="世间万物之 -身在江湖"><br />免费福利</a></lli>
			<lli><a href="/nav/dh.do" target="_blank"><img src="/index/images/545.png" class="tt"><br />网址导航</a></lli>
			<lli><a href="/name/AllName.do" target="_blank"><img src="/index/images/1063728.png" class="tt"><br />免费起名</a></lli>
	        <lli><a href="javascript:void(0)" onclick="showwx()"><img src="/index/images/wx001.png" class="tt"><br />加我微信</a></lli>
		<lli><a href="/name/AllName.do" target="_blank"><img src="/index/images/1063728.png" class="tt"><br />免费起名</a></lli>
	    <lli><a href="javascript:void(0)" onclick="showwx()"><img src="/index/images/wx001.png" class="tt"><br />加我微信</a></lli>
	     -->
	    
	    <c:forEach items="${lst}" var="a" varStatus="status">
      <lli  ><a href="#"    onclick="showlink('${a.site_id}','${a.site_url}','${a.site_name}','${a.open_way}','${a.icon}','${a.sort}')"      ><img src="${a.icon}" class="tt"><br />${a.site_name}</a></lli>
      </c:forEach>
	    
	    
	    
		</ul>
	
	</div>
		</div>					
							
							
							
							
							
							
							
							
							
							
							
							
							
						
					</div>
		       </div>
	       </div>

	</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	  	<div id="nav" style="display: none">
		<div class="ibox-content">
		<form class="form-horizontal" method="get">
			   	<div class="form-group">
					<label class="col-sm-3 control-label">网址名称：</label>
					<div class="col-sm-9">
						<input type="text" id="sitename"   value="" class="form-control">
					</div>
				</div>
				
				 	<div class="form-group">
					<label class="col-sm-3 control-label">网址：</label>
					<div class="col-sm-9">
						<input type="text" id="siteurl" value=""   class="form-control">
					</div>
					</div>
					
				<div class="form-group">
				<div class="col-sm-7">
			
				<div class="form-group">
					<label class="col-sm-5 control-label">导航：</label>
					<div class="col-sm-7">
						<select class="form-control" id="openstyle">
							<option value="1">一级导航</option>
							<option value="2">二级导航</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">排序号：</label>
					<div class="col-sm-7">
						<input type="text" id="psort" value=""   class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-5 control-label">选择图标：</label>
					<div class="col-sm-7">
						<select class="form-control" id="picaddress"   onchange="ShowPic()">
							<option disabled value="">请选择图标</option>
							<c:forEach items="${ilst}" var="a" varStatus="status">
									<option value="${a.bg}"> ${fn:replace(a.bg, '/index/icon/', '')}    </option>
 						   </c:forEach>
						</select>
					</div>
				</div>
				
				
					</div>
					
				
				<div class="col-sm-5">	
				<br><br>
				   <c:forEach items="${ilst}" var="a" varStatus="status" begin="0" end ="0" step="1">
					<img height="100" width="100" id="picshow" src="${a.bg}">
					 </c:forEach>
					</div>
					
					
					
				</div>
<!--  
				<div class="form-group">
					<label class="col-sm-3 control-label">选择图标：</label>
					<div class="col-sm-5">
						<select class="form-control" id="picaddress"   onchange="ShowPic()">
							<option disabled value="">请选择图标</option>
							<c:forEach items="${ilst}" var="a" varStatus="status">
									<option value="${a.bg}">${a.bg}</option>
 						</c:forEach>
						</select>
					</div>
					<div class="col-sm-4">
					
					</div>
					
				</div>
-->

<!--

			<div class="form-group">
					<label class="col-sm-3 control-label">上传图标</label>
					<div class="col-sm-9">
					<input type="text" class="form-control"  id="av">
				<div id="uploader-demo">
					<!--用来存放item
					<div id="fileList" class="uploader-list">
						<div id="WU_FILE_0" class="file-item thumbnail upload-state-done">
							<img height="100" width="100" class="img-circle circle-border" id="avatar" src="">
							<p class="progress"><span style="width: 100%;"></span></p>
						</div>
					</div>
					<div id="upInfo"></div>
					<div id="filePicker">上传图标</div>
				</div>
					</div>
					</div>
-->





			<div class="form-group">
			<div class="col-sm-5">
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
					<label class="col-sm-3 control-label">网址名称:</label>
					<div class="col-sm-9">
						<input type="text" id="site_name"   value="" class="form-control">
					</div>
				</div>
				 	<div class="form-group">
					<label class="col-sm-3 control-label">网址:</label>
					<div class="col-sm-9">
						<input type="text" id="site_url" value=""   class="form-control">
					</div>
					</div>
			
					
					
					<div class="form-group">
					
						<div class="col-sm-8">
					
					<div class="form-group">
					<label class="col-sm-5 control-label">图标: </label>
					<div class="col-sm-7">
						<select class="form-control" id="newpic"   onchange="NewPic()">
							<option disabled value="">请选择图标</option>
							<c:forEach items="${ilst}" var="a" varStatus="status">
									<option value="${a.bg}"> ${fn:replace(a.bg, '/index/icon/', '')}    </option>
 						   </c:forEach>
						</select>
					</div>
					
					</div>
					
					
					
						<div class="form-group">
				
					<label class="col-sm-5 control-label">导航: </label>
					<div class="col-sm-7">
						<select class="form-control" id="open_style">
							<option value="1">一级导航</option>
							<option value="2">二级导航</option>
						</select>
					</div>
			
					</div>
					
					
					
					
					
					
					<div class="form-group">
					<label class="col-sm-5 control-label">排序: </label>
					<div class="col-sm-7">
						<input type="text" id="sort" value=""   class="form-control">
					</div>
					
					</div>
					
					
					</div>
					
					
					<div class="col-sm-4">
					<br><br>
					<img id="icon"  src=""  height="100px" width="100px"     />
					
					</div>
					
						</div>
					
					<div class="form-group">
					<label class="col-sm-4 control-label"></label>
					<div class="col-sm-5">
						<div onclick="UpdateNav()" class="btn btn-primary">修改</div>
					</div>
					<div class="col-sm-1">
						<input type="hidden" id="siteid" value=""   class="form-control">
					</div>
					
					</div>
				
			</form>
		</div>
	</div>
	
	
	 <%@ include file="/module/common/footer.jsp"%> 
	
	
	
</div>	
	
	
	
	









	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../layer/layer.js"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script type="text/javascript" src="../../test/res/webuploader.js"></script>
	<!-- Bootstrap table -->
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>


	
	
	







<script type="text/javascript">
	//加载项目数据
	    			var $table = $('#t1');
	    			$table.bootstrapTable({
	    			url: "/nav/NavList.do", 
	    			dataType: "json",
	    			pageSize: 7,
	    			      columns: [
	    			                
	    			              {
	    			                title: '序号',
	    			                  field: 'site_id',
	    			                  align: 'center',
	    			                  valign: 'middle',
	    			                	  width: '4%'
	    			              },
	    			              {
	    			                  title: '名称',
	    			                    field: 'site_name',
	    			                    align: 'center',
	    			                    valign: 'middle',
	    			                     width: '5%',
	    			                    	 
	    			                },{
	    			                    title: 'url',
	    			                      field: 'site_url',
	    			                      align: 'left',
	    			                      valign: 'middle',
	    			                      width: '39%'
	    			                  },
	    			                {
	    			                    title: '打开方式',
	    			                      align: 'center',
	    			                      valign: 'middle',
	    			                      width: '1%',
	    			                   formatter:function(value,row,index){  
	    	    			                var	f;
	    			                	   if(row.open_way ==1)
	    			                		   f = "新窗口";
	    	    			               if(row.open_way ==2)
		    			                		   f = "原窗口";
	    	    			                return f ;            
	    	    			           } 
	    			                  }, {
	    			                    title: '排序',
	    			                      field: 'sort',
	    			                      align: 'center',
	    			                      valign: 'middle',
	    			                      width: '4%'
	    			                  },

	    			              {
	    			                  title: '操作',
	    			                  align: 'center', 
	    			                  width: '4%' ,
	    			                  formatter:function(value,row,index){  
	    			                	  var a = '<a href="#" mce_href="#"   onclick="showModule(\''+row.projectid+'\')"> [编辑管理] </a> '; 
	    			                	  
	    			                	  var f = '<a href="#" mce_href="#" onclick="DelNav(\''+row.site_id+'\')"> [删除]</a> ';
	    			                           return f;  
	    			                       } 
	    			              }
	    			                  
	    			                  
	    			          ]
	    			  });
	  
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






<script type="text/javascript">

function showlink(a,b,c,d,e,f){
    
    	$("#siteid").val(a)    ;
    	$("#site_name").val(c)    ;
    	$("#site_url").val(b)    ;
    	
    	$("#icon").attr('src',e);
    	$("#sort").val(f) ;
    	$("#open_style  option[value='"+d+"'] ").attr("selected",true)
    	
    	 			layer.open({
    	 	    		title : '修改网址',
    	 	    		skin : 'layui-layer-molv',
    	 	    		type : 1,
    	 	    		area : [ '500px', '370px' ],
    	 	    		shadeClose : true, // 点击遮罩关闭
    	 	    		content : $('#setting'),
    	 	    	});
    	 		
}
  	</script>
<script type="text/javascript">
     function addSite(){
			layer.open({
	    		title : '添加网址',
	    		skin : 'layui-layer-molv',
	    		type : 1,
	    		area : [ '600px', '410px' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#nav'),
	    	});
     }
     
    function saveSite(){
     	var  sitename=	document.getElementById("sitename").value ;
    	var  siteurl=	document.getElementById("siteurl").value ;	
    	var projectSelect=document.getElementById("openstyle");  
    	var index=projectSelect.selectedIndex;
    	var openstyle=projectSelect.options[index].value ;
    	var psort = $("#psort").val()    ;
    	var pic =$("#picaddress").val();
    	
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
    		addNav(sitename,siteurl,openstyle,psort,pic);
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

    
    function addNav(sitename,siteurl,openway,psort,pic){
    	$.ajax({
    		type : "POST",
    		url : "/nav/addsite.do",
    		data: {sitename: sitename,siteurl:siteurl,openway:openway,psort:psort,pic:pic},
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
    
    function ShowPic(){
    	var checkValue=$("#picaddress").val();
    	$("#picshow").attr('src',checkValue);
    	
    }
    
    function NewPic(){
    	var checkValue=$("#newpic").val();
    	$("#icon").attr('src',checkValue);	
    }
    function  DelNav(id){
    	$.ajax({
    		type : "GET",
    		url : "/nav/DelNav.do",
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
    
    
    function  UpdateNav(){
    	
    	var  sitename=	document.getElementById("site_name").value ;
    	var  siteurl=	document.getElementById("site_url").value ;	
    	var projectSelect = document.getElementById("open_style");  
    	var index = projectSelect.selectedIndex;
    	var openstyle=projectSelect.options[index].value ;
    	var psort = $("#sort").val()    ;
    	var pic =$("#newpic").val();
    	var siteid =$("#siteid").val();
    	
    	var name = sitename.replace(" ","").length ;
  // 	alert(name);
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
    		$.ajax({
        		type : "POST",
        		url : "/nav/UpdateNav.do",
        		data: {sitename: sitename,siteurl:siteurl,openway:openstyle,psort:psort,pic:pic,siteid:siteid},
        		async : false,
        		dataType : "text",
        		success : function(data) {
        			 if(data=="ok"){
        				 alert(data);
        				 location.reload() ;
        			 }
        		}
        	});
    	}
    	
    	
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
       thumbnailWidth = 100 * ratio,
       thumbnailHeight = 100 * ratio,
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
    
       server: '/index/upicon.do',
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
    //   $("#upInfo").html(" ");
    
      // $("#topicimage").val("/module/usercenter/face/"+response._raw);
       
       $("#avatar").val("/module/usercenter/face/"+response._raw);
       $("#av").val("/module/usercenter/face/"+response._raw);
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








<script type="text/javascript" src="/module/common/leftmenu.js"></script>
</body>

</html>