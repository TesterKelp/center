<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo>
		</div>
	</div>
	<br>
	<br>


	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row" id="user">
			<div class="col-sm-3">
				<div class="contact-box">
					<a href="#" onclick="se()">
						<div class="col-sm-3">
							<div class="text-center">
								<img alt="image" class="img-circle m-t-xs img-responsive"
									src="../usercenter/face/a2.jpg">
								<div class="m-t-xs font-bold">嘿嘿</div>
							</div>
						</div>
						
						
						<div class="col-sm-8" style="height: 165px; line-height: 25px; overflow: hidden">
						
						
						
				点我
<!--  
							<p>
								<i class="fa fa-map-marker"></i> 人生·
							</p>
							-->
							<!-- 
							<address
								style="height: 120px; line-height: 25px; overflow: hidden">
								
								 
								工作？<br> <strong>生活？？ 学习？？？</strong><br>
								<h3>
									<strong>添加记事本</strong>
								</h3>
								全不误！！！
									
								
								
								
								
								
							</address>
							
							-->
						</div>
						<div class="clearfix"></div>
					</a>
				</div>
			</div>

			<c:forEach items="${moduleList}" var="a" varStatus="status">
				<div class="col-sm-3">
					<div class="contact-box">

						<div class="col-sm-4">
							<div class="text-center">
								<img alt="image" class="img-circle m-t-xs img-responsive"
									src="/pic/time.jpg">
								<div class="m-t-xs font-bold">${a.ctime}</div>
							</div>
						</div>
						<div class="col-sm-8">
							<p>
								<i class="fa fa-map-marker"></i> ${a.ptime} <a
									onclick="DelNote(${a.notesid})"> | 删除 </a>
							</p>
							<a href="#" onclick="note(${a.notesid})">
								<address
									style="height: 120px; line-height: 25px; overflow: hidden">
									<strong> ${a.notename}</strong><br> ${a.notescontent}
								</address>
							</a>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
			</c:forEach>




<!--    
			<c:forEach items="${moduleList}" var="a" varStatus="status">



	 <div class="col-sm-3">
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                      ${a.notename}
                                    </div>
                                    <div class="panel-body">
                                        <p>通过 .panel-heading 可以很简单地为面板加入一个标题容器。你也可以通过添加设置了 .panel-title 类的标签，添加一个预定义样式的标题。 为了给链接设置合适的颜色，务必将链接放到带有 .panel-title 类的标题标签内。${a.notescontent}</p>
                                    </div>
                                </div>
                            </div>


			</c:forEach>


-->

















		</div>
	</div>



	<div id="ShowNotes" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group" style="width: 100%; height: 100%;">
					<input type="text" class="form-control" placeholder="请输入标题"
						aria-required="true" id="noticename" required>
					<textarea id="notice" class="form-control" name="notice" required
						aria-required="true" cols="35" rows="30" placeholder="请输入标题"></textarea>
						
					
				</div>
			</form>
			<button type="input" class="btn btn-primary" onclick="SaveNote()">保存</button>
				<input type="hidden" class="form-control" placeholder="请输入标题"
						aria-required="true" id="noteid" required>
		</div>
	</div>
	<!-- 

             <div class="form-group">
                            <div class="col-sm-8 col-sm-offset-2">
                                 <button type="input" class="btn btn-primary" onclick ="RefuseOperation(5)">保存</button>
                                   <button type="input" class="btn btn-primary" onclick ="RefuseOperation(5)">最大化</button>
                                   <button type="input" class="btn btn-primary" onclick ="RefuseOperation(5)">还原</button>
                             </div>
                         </div>
                     </div> 


 -->


	<!-- 全局js -->



	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!--  <script src="js/defectlist.js"></script> -->
	<!-- Bootstrap table -->
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- Peity -->
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>







	<script>
	function se() {
		//alert("455");
				 document.getElementById("notice").value="" ;
		 document.getElementById("noticename").value="";
		 document.getElementById("noteid").value="0";
		layer.open({
			title : '添加记事',
			//skin : 'layui-layer-molv',
			type : 1,
			area : [ '90%', '90%' ],
			content : $('#ShowNotes'),
		});
	}
	
	
	
	function  note(noteid){
//alert(noteid);
	$.ajax({
		type : "GET",
		url : "GetNoteDetail.do",
		data: {noteid: noteid},
		async : false,
		dataType : "json",
		success : function(data) {
//	 alert(data.notescontent);
		 document.getElementById("notice").value=data.notescontent ;
		 document.getElementById("noticename").value=data.notename;
		 document.getElementById("noteid").value=noteid ;
		  	layer.open({
	    	//	title : '亲，太爱你了，你又消灭一个bug！',
	    	//	skin : 'layui-layer-molv',
	    		 skin: 'layui-layer-lan',
	    		type : 1,
				area : [ '90%', '90%' ],
	    		shadeClose : true, // 点击遮罩关闭
	    		content : $('#ShowNotes'),
	    	});
		}
	});	
	
	}
	
	
	function  SaveNote(){
		var  note=document.getElementById("notice").value ;
		var  notename =document.getElementById("noticename").value ;
		var  noteid =document.getElementById("noteid").value ;
		var url = "saveNote.do";
		if(noteid!=0){
			url="editNote.do";
		}
		
	//	alert(url);
		$.ajax({
			type : "POST",
			url : url,
			async : false,
			data : {notescontent:note,notename:notename,notesid:noteid},
		    dataType : "text",
			success : function(result) {
				alert(result);
				window.location.reload(true);
			}
			
		});
	}
	
	
	
	function  DelNote(noteid){
		var url = "delNote.do";
	//	alert(url);
		$.ajax({
			type : "POST",
			url : url,
			async : false,
			data : {notesid:noteid},
		    dataType : "text",
			success : function(result) {
				alert(result);
				window.location.reload(true);
				//window.location.href=window.location.href ;
			}
			
		});
	}
	
	
	
	
	
	
	
	
	
	
</script>















</body>

</html>
