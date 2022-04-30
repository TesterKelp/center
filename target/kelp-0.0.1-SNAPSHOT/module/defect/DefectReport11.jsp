<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
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
<script src="../../test/js/ichart.1.2.1.src.js"></script>
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
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<br>

								<div class="text-center article-title">
									<h1>XXXXXX系统缺陷统计报告</h1>
								</div>

								<a href="#" onclick="a()">dd</a> <a href="#" onclick="aa()">aa</a>

								<br>
								<br>
								<br>
								<br>
								<br>
								<hr>



								统计范围：


								<div id='ca'></div>


								<div id='caa'></div>

								<hr>


								<div id='canvasDiv'></div>

								2.
								<hr>
								<div id='canvas'></div>



								<Br> 3.
								<hr>
								创建者统计 select COUNT(createuserid),(SELECT realname from
								admin_user where admin_user.userid = defect_bug.createuserid) ,
								createuserid from defect_bug GROUP BY createuserid <Br> 4.
								<hr>
								按严重程度分类 select COUNT(severity), severity from defect_bug GROUP
								BY severity <Br> 5.
								<hr>
								按优先级分类 select COUNT(priority ), priority from defect_bug GROUP
								BY priority









							</div>
						</div>
						<!-- End Example Events -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other -->
	</div>










	<input type="hidden" class="span.col-xs-2" name="bugid" id="bugid"
		style="width: 30%; vertical-align: middle;">







	<script>
var  colo =["#a5c2d5","#cbab4f","#76a871","#a56f8f","#c12c44","#9f7961","#76a871","#6f83a5","#6f83a5","#a5aaaa","#97b3bc","#9d4a4a"];
var tree=[];
	function a() {
		$.ajax({
			type : "GET",
			url : "/module/defect/CreateDefectStatistics.do",
			cache : false,
			async : false,
			dataType : "json",
			success : function(data) {
	var obj = {
					name : '0',
					value : 0,
					color : '#a5c2d5'
				};
				for (var i = 0; i < (data.length); i++) {
					obj.value = eval('(' + data[i].num + ')');
					obj.name =  data[i].realname ;
					obj.color= colo[i] ;
					obj2 = {
						name : obj.name,
						value : obj.value,
						color : obj.color
					};
					tree.push(obj2);
				}
			}
		})
		var chart = new iChart.Column2D({
			render : 'ca',//渲染的Dom目标,canvasDiv为Dom的ID
			data : tree,//绑定数据
			title : '缺陷严重级别统计',//设置标题
			width : 800,//设置宽度，默认单位为px
			height : 400,//设置高度，默认单位为px
			shadow : true,//激活阴影
			shadow_color : '#c7c7c7',//设置阴影颜色
			coordinate : {//配置自定义坐标轴
				scale : [ {//配置自定义值轴
					position : 'left',//配置左值轴	
					start_scale : 0,//设置开始刻度为0
					end_scale : 15,//设置结束刻度为26
					scale_space : 1,//设置刻度间距
					listeners : {//配置事件
						parseText : function(t, x, y) {//设置解析值轴文本
							return {
								text : t + " g "
							}
						}
					}
				} ]
			}
		});
		//调用绘图方法开始绘图
		chart.draw();

	}
</script>



	<script>

function aa() {
	alert("ssdfdd");
	var  colo =["#a5c2d5","#cbab4f","#76a871","#a56f8f","#c12c44","#9f7961","#76a871","#6f83a5","#6f83a5","#a5aaaa","#97b3bc","#9d4a4a"];
	var tree=[];
	$.ajax({
		type : "GET",
		url : "/module/defect/CreateDefectStatistics.do",
		cache : false,
		async : false,
		dataType : "json",
		success : function(data) {
var obj = {
				name : '0',
				value : 0,
				color : '#a5c2d5'
			};
			for (var i = 0; i < (data.length); i++) {
				obj.value = eval('(' + data[i].num + ')');
				obj.name =  data[i].realname ;
				obj.color= colo[i] ;
				obj2 = {
					name : obj.name,
					value : obj.value,
					color : obj.color
				};
				tree.push(obj2);
			}
		}
	})
	new iChart.Pie2D({
		render : 'caa',
		data: tree,
		title : '兼容性缺陷统计汇总',
		legend : {enable : true},
		showpercent:true,
		decimalsnum:2,
		width : 800,
		height : 400,
		radius:140
	}).draw();
}			
</script>








	<script>

var data = [
    		{name : 'H',value : 7,color:'#a5c2d5'},
    	   	{name : 'E',value : 5,color:'#cbab4f'},
    	   	{name : 'L',value : 12,color:'#76a871'},
    	   	{name : 'L',value : 12,color:'#76a871'},
    	   	{name : 'O',value : 15,color:'#a56f8f'},
    	   	{name : 'W',value : 13,color:'#c12c44'},
    	   	{name : 'O',value : 15,color:'#a56f8f'},
    	   	{name : 'R',value : 18,color:'#9f7961'},
    	   	{name : 'L',value : 12,color:'#76a871'},
    	   	{name : 'D',value : 4,color:'#6f83a5'}
    	 ];
    	 $(function(){	
    		var chart = new iChart.Column2D({
    			render : 'canvasDiv',//渲染的Dom目标,canvasDiv为Dom的ID
    			data: data,//绑定数据
    			title : '缺陷严重级别统计',//设置标题
    			width : 800,//设置宽度，默认单位为px
    			height : 400,//设置高度，默认单位为px
    			shadow:true,//激活阴影
    			shadow_color:'#c7c7c7',//设置阴影颜色
    			coordinate:{//配置自定义坐标轴
    				scale:[{//配置自定义值轴
    					 position:'left',//配置左值轴	
    					 start_scale:0,//设置开始刻度为0
    					 end_scale:26,//设置结束刻度为26
    					 scale_space:2,//设置刻度间距
    					 listeners:{//配置事件
    						parseText:function(t,x,y){//设置解析值轴文本
    							return {text:t+" cm"}
    						}
    					}
    				}]
    			}
    		});
    		//调用绘图方法开始绘图
    		chart.draw();
    	});

    	 
    	 
    	 
    	 
			$(function(){
				var data = [
				        	{name : 'IE',value : 35.75,color:'#9d4a4a'},
				        	{name : 'Chrome',value : 29.84,color:'#5d7f97'},
				        	{name : 'Firefox',value : 24.88,color:'#97b3bc'},
				        	{name : 'Safari',value : 6.77,color:'#a5aaaa'},
				        	{name : 'Opera',value : 2.02,color:'#778088'},
				        	{name : 'Other',value : 0.73,color:'#6f83a5'}
			        	];
				new iChart.Pie2D({
					render : 'canvas',
					data: data,
					title : '兼容性缺陷统计汇总',
					legend : {enable : true},
					showpercent:true,
					decimalsnum:2,
					width : 800,
					height : 400,
					radius:140
				}).draw();
			});

  
    	 
</script>













































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














</body>

</html>
