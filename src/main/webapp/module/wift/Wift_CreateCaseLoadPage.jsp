<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>H+ 测试平台 - 空白页</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

<!--
ul input {
	border: 1px solid #ccc;
	margin: 2px;
}

-->
ul input {
	color: rgb(255, 0, 0);
	border-left: medium none;
	border-right: medium none;
	border-top: medium none;
	border-bottom: 1px solid rgb(192, 192, 192);
}
</style>
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/json/s.css" type="text/css" rel="stylesheet">
<script src="../../test/json/c.js" type="text/javascript"></script>
<script src="http://cdn.staticfile.org/Mock.js/1.0.0/mock-min.js"></script>
</head>

<body class="gray-bg">


	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="col-sm-12">




				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>创建用例</h5>

							</div>
							<div class="ibox-content">
								<div class="row">
								
									<div class="col-sm-12">
										<form role="form" method="get" class="form-horizontal">
											<div class="form-group">
											
											
											<input type="hidden" class="form-control"  value="${interfaceid}"    id="interfaceid">
											
											
											
											
												<label class="col-sm-1 control-label">所属项目:</label>
												
												
												
												
												
												<div class="col-sm-2">
												<!-- 
													<select class="form-control" id="project" onchange='getmodule()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
													 -->
													
													<select class="form-control"onchange='getmodule()'>
													<c:forEach items="${projectList}" var="a" varStatus="status">
														<c:if test="${ a.projectid==projectid }">   
       														<option value="${a.projectid}" selected = "selected">${ a.projectname}</option>
       													</c:if>
														<c:if test="${ a.projectid!=projectid }">   
       														<option value="${a.projectid}">${ a.projectname}</option>
       													</c:if>
													</c:forEach>
													</select>
													
													
													
													
												</div>
												<label class="col-sm-1 control-label">所属模块:</label>
												<div class="col-sm-2">
													
													<!--  
													<select class="form-control" id="module"
														onchange='getInterface()'>
														<option value="0">系统分类</option>
														<option value="1">分享分类</option>
													</select>
													-->
												<select class="form-control"onchange='getmodule()'>
													<c:forEach items="${moduleList}" var="a" varStatus="status">
														<c:if test="${ a.moduleid==moduleid }">   
       														<option value="${a.moduleid}" selected = "selected">${ a.modulename}</option>
       													</c:if>
														<c:if test="${ a.moduleid!=moduleid  }">   
       														<option value="${a.moduleid}" >${ a.modulename}</option>
       													</c:if>
													</c:forEach>
													</select>
													
												</div>
												
												
												<label class="col-sm-1 control-label">所属接口:</label>
												<div class="col-sm-2">
												
												<!--  
													<select class="form-control" id="InterfaceSelect"  onchange='getInterfaceInfo()'>
														<option value="0">全部</option>
													</select>-->
													
														<select class="form-control"onchange='getmodule()' id="InterfaceSelect">
													<c:forEach items="${interfaceList}" var="a" varStatus="status">
														<c:if test="${ a.interfaceid==interfaceid }">   
       														<option value="${a.interfaceid}" selected = "selected">${ a.interfacename}</option>
       													</c:if>
														<c:if test="${ a.interfaceid!=interfaceid }">   
       														<option value="${a.interfaceid}">${ a.interfacename}</option>
       													</c:if>
													</c:forEach>
													</select>
												</div>
											
												<label class="col-sm-1 control-label">请求方式:</label>
												<div class="col-sm-2">
													<select class="form-control" id="type" name="type">
														<option value="GET"  <c:if test="${requesttype=='GET' }"> selected = "selected" </c:if>>GET</option>
														<option value="POST" <c:if test="${requesttype=='POST'}"> selected = "selected" </c:if>>POST</option>
													</select>
												</div>
											
											
											
											
											
												
											</div>
									

											<div class="form-group">
												<label class="col-sm-1 control-label">接口地址:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control"  value="${directories}"    id="interfaceaddress">
												</div>

												<label class="col-sm-1 control-label">服务器地址:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control"  value="${environmentname}"    id="interfaceaddress">
												</div>
											</div>





											<div class="form-group">
												<label class="col-sm-1 control-label">用例名称:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="casename" value="用例名称" >
												</div>
												<label class="col-sm-1 control-label">用例描述:</label>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="casedesc" value="用例名称">
												</div>
											</div>

<!-- 
											<div class="form-group">
												<label class="col-sm-1 control-label">header:</label>
												<div class="col-sm-9">
													<textarea required="" aria-required="true"
														class="form-control" id="header">  </textarea>
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-1 control-label">URL参1数:</label>
												<div class="col-sm-8" id="url">
													<ul id="demo2"></ul>
													<a href="#">+ 添加（最多5项）</a>
												</div>

											</div>

 -->

<!--  
											<div class="form-group">
												<label class="col-sm-1 control-label">期望结果:</label>
												<div class="col-sm-6">
													<textarea required="" aria-required="true" class="form-control" id="hwwader"></textarea>
												</div>
											</div>
-->





<!--  
											<div class="form-group">
												<label class="col-sm-4 control-label"> </label>
												<div class="col-sm-6">
													<div class="btn btn-primary">
														<a href="#" onclick="SaveIfCase()">保存</a>
													</div>
													<div class="btn btn-primary">
														<a href="#" onclick='GetValue()'>调试</a>
													</div>
													<div class="btn btn-primary">
														<a href="#" onclick="AddFace()">返回</a>
													</div>
												</div>
											</div>
											
				-->							
								<div class="form-group">
				   <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Request parameter(body)</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="table_basic.html#">选项1</a>
                                </li>
                                <li><a href="table_basic.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="vertical-align: middle; width:50px;">序号</th>
                                    <th style="vertical-align: middle; width:50px;">参数名</th>
                                    <th style="vertical-align: middle; width:50px;">参数值</th>
                                    <th style="vertical-align: middle; width:50px;">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestList}" var="a" varStatus="status">
										<tr data-index="4">
											<td style="text-align: center; vertical-align: middle; width:50px;">${a.parametersort}</td>
											<td style="text-align: left; vertical-align: middle; width: 10%;">
												<input type="text" name="RequestParameterName" id="RequestParameterName" value="${a.parametername}" style="width: 250px" class="input-text">
											</td>
											<td tyle="text-align: center; vertical-align: middle; width: 10%;">
												<input type="text" name="RequestParameterValue" id="RequestParameterValue" placeholder="value" style="width: 250px" class="input-text" value="11">
											</td>
														<td
															style="text-align: center; vertical-align: middle; width: 10%;">
														 <a href="javascript:;" onclick='{if(confirm("确定要删除该数据吗?")) {deleteCurrentRow(this); }else {}}'>删除</a>
														</td>
													</tr>

												</c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
	
			
				   <div class="col-sm-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Request header</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="table_basic.html#">选项1</a>
                                </li>
                                <li><a href="table_basic.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="vertical-align: middle; width:50px;">序号</th>
                                    <th style="vertical-align: middle; width:50px;">参数名</th>
                                    <th style="vertical-align: middle; width:50px;">参数值</th>
                                    <th style="vertical-align: middle; width:50px;">操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                 <c:forEach items="${requestHeaderList}" var="a" varStatus="status">
													<tr data-index="4">
														<td style="text-align: center; vertical-align: middle; width:50px;">${a.parametersort}</td>
														<td style="text-align: left; vertical-align: middle; width: 10%;">
															<input type="text" name="RequestHeaderParameterName" id="RequestHeaderParameterName" value="${a.parametername}" style="width: 250px" class="input-text">
														</td>
														<td style="text-align: center; vertical-align: middle; width: 10%;">
															<input type="text" name="RequestHeaderParameterValue" id="RequestHeaderParameterValue" placeholder="值" style="width: 250px" class="input-text" value="3">
														</td>
														<td style="text-align: center; vertical-align: middle; width: 10%;"> 删除 
														</td>
													</tr>

												</c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
	
				</div>
				
				
				
				
				<div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>断言</h5>
                        <div class="ibox-tools">
                          <a  onclick="document.getElementById('5000').style.display='none'">隐藏</a>
                          <a  onclick="document.getElementById('5000').style.display='block'">显示</a>
                           <a class="close-link"> 关闭</a>
                        </div>
                    </div>
                    <div  id="5000" >

														<table id="Assertion" class="table table-bordered"
															width="100%">
															<tbody>
																<tr id="c5">
																	<td style="background-color: #F5F5F6;" width="100px">
																		<a href="javascript:;"onclick="AssertionAfterInsertRow(this)">添加断言</a>
																	</td>
																	<td style="background-color: #F5F5F6;" width="100px">断言模型</td>
																	<td style="background-color: #F5F5F6;" width="100px">断言模型</td>
																	<td style="background-color: #F5F5F6;" width="300px">断言说明</td>
																	<td style="background-color: #F5F5F6;" width="300px">断言内容</td>
																	<td style="background-color: #F5F5F6;" width="100px">断言类型</td>
																	<td style="background-color: #F5F5F6;">期望结果</td>
																</tr>
															</tbody>
														</table>


							<table style="display:none">
								<tr id="AssertionSource" style="visibility: hidden">
									<td><a href="javascript:;" onclick="AssertionBeforeInsertRow(this)"><i class="fa fa-backward"></i></a> 
										<a href="javascript:;" onclick="AssertionAfterInsertRow(this)"><i class="fa fa-forward"></i></a> 
										<a href="javascript:;" onclick="AssertionDeleteRow(this)"><i class="fa fa-remove"></i></a></td>
									<td>
									<select class="select" id="AssertionModel" name="AssertionModel" onchange="load_json_first_param(this)" style="width: 100px">
													<option value="no" selected='selected'>P模型</option>
													<option value="1">S模型</option>
													<option value="3">D模型</option>
											</select>
										</td><td><select id="3000" name="3000"  onchange="load_json_other_param(this)"  style="width: 100px"></select></td><td>
										<textarea aria-required="true" style="width: 340px" id="AssertionContent" name="AssertionContent"></textarea>	</td><td>
										<textarea aria-required="true" style="width: 340px" id="AssertionDesc" name="AssertionDesc"></textarea>	</td>
										
											
									<td><select class="select" id="AssertionType" name="AssertionType" style="width: 100px">
											<option value="0" selected='selected'>等于</option>
											<option value="1">包含</option>
											<option value="3">不包含</option>
										</select></td>
									<td>
									 <textarea aria-required="true" required=""class="form-control" name="ExpectedResult" id="ExpectedResult">rr</textarea>			
										</td>
								</tr>
							</table>

													</div>

                </div>
            </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
					<div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Response Header</h5>
                        <div class="ibox-tools">
                          <a  onclick="document.getElementById('50000').style.display='none'">隐藏</a>
                          <a  onclick="document.getElementById('50000').style.display='block'">显示</a>
                           <a class="close-link"> 关闭</a>
                        </div>
                    </div>
                    <div  id="50000" >

														<table id="AssertionHeader" class="table table-bordered"
															width="100%">
															<tbody>
																<tr id="c55">
																	<td style="background-color: #F5F5F6;" width="100px">
																		<a href="javascript:;"onclick="AssertionHeaderAfterInsertRow(this)">添加断言</a>
																	</td>
																	<td style="background-color: #F5F5F6;" width="300px">断言说明</td>
																	<td style="background-color: #F5F5F6;" width="300px">断言内容</td>
																	<td style="background-color: #F5F5F6;" width="100px">断言类型</td>
																	<td style="background-color: #F5F5F6;">期望结果</td>
																</tr>
															</tbody>
														</table>


							<table style="display:none" ><!-- display:none   visibility: hidden -->
								<tr id="AssertionHeaderSource" style="">
									<td>
									<a href="javascript:;" onclick="AssertionHeaderBeforeInsertRow(this)"><i class="fa fa-backward"></i></a> 
										<a href="javascript:;" onclick="AssertionHeaderAfterInsertRow(this)"><i class="fa fa-forward"></i></a> 
										<a href="javascript:;" onclick="AssertionHeaderDeleteRow(this)"><i class="fa fa-remove"></i></a></td>
									<td>
										<textarea aria-required="true" style="width: 340px" id="AssertionHeaderContent" name="AssertionHeaderContent"></textarea>	</td><td>
										<textarea aria-required="true" style="width: 340px" id="AssertionHeaderDesc" name="AssertionHeaderDesc"></textarea>	</td>
									<td><select class="select" id="AssertionHeaderType" name="AssertionHeaderType" style="width: 100px">
											<option value="0" selected='selected'>等于</option>
											<option value="1">包含</option>
											<option value="3">不包含</option>
										</select></td>
									<td>
									 <textarea aria-required="true" required=""class="form-control" name="ExpectedHeaderResult" id="ExpectedHeaderResult">rr</textarea>			
										</td>
								</tr>
							</table>

													</div>

                </div>
            </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
				</div>
				
				
				
				
				
				
				
				
				
				
				
				<div class="form-group" style="text-align:center">
				                                <div class="btn btn-primary"><a href="#" onclick="SaveIfCase()">保存</a></div>
				                                <!-- 
												<div class="btn btn-primary"><a href="#" onclick='GetValue()'>调试</a></div>
												<div class="btn btn-primary"><a href="#" onclick='Satre()'>返回</a></div>
												<div class="btn btn-primary"><a href="#" onclick="format(true)">json</a></div>
												 -->
												<div class="btn btn-primary"><a href="javascript:void(0)" onclick="SaveInterfaceCase()">new保存</a></div>
				
				</div>
				
				
				
		<!--		
				<div class="form-group">
				 <div class="panel blank-panel">
                    <div class="panel-heading">
                        <div class="panel-title m-b-md">
                            <h4>图标选项卡</h4>
                        </div>
                        <div class="panel-options">

                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="tabs_panels.html#tab-4"><i class="fa fa-laptop"></i>Response Header</a></li>
                                <li class=""><a data-toggle="tab" href="tabs_panels.html#tab-5"><i class="fa fa-desktop"></i>Response Body</a></li>
                                <li class=""><a data-toggle="tab" href="tabs_panels.html#tab-6"><i class="fa fa-signal"></i>Expected Result</a> </li>
                                <li class=""><a data-toggle="tab" href="tabs_panels.html#tab-7"><i class="fa fa-bar-chart-o"></i>Help Information</a></li>
                                				<div class="btn btn-primary"><a href="#" onclick="SaveIfCase()">保存</a></div>
												<div class="btn btn-primary"><a href="#" onclick='GetValue()'>调试</a></div>
												<div class="btn btn-primary"><a href="#" onclick='Satre()'>返回</a></div>
												<div class="btn btn-primary"><a href="#" onclick="format(true)">json</a></div>
												<div class="btn btn-primary"><a href="#" onclick="SaveInterfaceCase()">new保存</a></div>
                                
                                
                            </ul>
                        </div>
                    </div>
 
                    <div class="panel-body">
                        <div class="tab-content">
    <div id="tab-4" class="tab-pane active"><textarea aria-required="true"  class="form-control" name="comment" id="ccomment"></textarea></div>
    <div id="tab-5" class="tab-pane"> <textarea aria-required="true" class="form-control" name="comment" id="Raw1Json"></textarea></div>
    <div id="tab-6" class="tab-pane"><textarea required="" aria-required="true" class="form-control" id="hwwader"></textarea></div>
    <div id="tab-7" class="tab-pane"><p>Bootstrap 提供了一套响应式、移动设备优先的流式栅格系统，随着屏幕或视口（viewport）尺寸的增加，系统会自动分为最多12列。。</p></div>
                        </div>

                    </div>

                </div>
				</div>
				
	-->			

				

									<div class="form-group">
										<div class="col-sm-12">
											<div id="ControlsRow">
											
											
											<input type="Button" value="模拟json" onclick="demojson()" />
											<input type="Button" value="加载json" onclick="getjson()" />
												<input type="Button" value="格式化" onclick="Process()" /> <span
													id="TabSizeHolder"> 缩进量 <select id="TabSize"
													onchange="TabSizeChanged()">
														<option value="1">1</option>
														<option value="2" selected="true">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
												</select>
												</span> <label for="QuoteKeys"> <input type="checkbox"
													id="QuoteKeys" onclick="QuoteKeysClicked()" checked="true" />
													引号
												</label>&nbsp; <a href="javascript:void(0);"
													onclick="SelectAllClicked()">全选</a> &nbsp; <span
													id="CollapsibleViewHolder"> <label
													for="CollapsibleView"> <input type="checkbox"
														id="CollapsibleView" onclick="CollapsibleViewClicked()"
														checked="true" /> 显示控制
												</label>
												</span> <span id="CollapsibleViewDetail"> <a
													href="javascript:void(0);" onclick="ExpandAllClicked()">展开</a>
													<a href="javascript:void(0);"
													onclick="CollapseAllClicked()">叠起</a> <a
													href="javascript:void(0);" onclick="CollapseLevel(3)">2级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(4)">3级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(5)">4级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(6)">5级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(7)">6级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(8)">7级</a>
													<a href="javascript:void(0);" onclick="CollapseLevel(9)">8级</a>
													<a href="javascript:void(0);" onclick="Pr()">去转义</a>
													<a href="javascript:void(0);" onclick="Pr()">转义</a>
													<a href="javascript:void(0);" onclick="Pr()">压缩一行</a>
												</span>
											</div>
											<textarea id="RawJson"   autoHeight="true"    class="RawJson" > ${jsonstr}</textarea>
											<div id="Canvas" class="Canvas"></div>
										</div>
									</div>




							<div class="form-group">
							<div class="col-sm-4" id="120"><select id="200"  onchange="firstloadjson(this)" ></select> </div>
							<div class="col-sm-4" id="120"><select id="300"  onchange="loadjson(this)"  ></select></div>
							<div class="col-sm-4" id="120"><input type="text" name="dat" id="dat" value="" style="width: 250px" class="input-text"></div>
							</div><a href="#"  onclick="SelectDataDo('AssertionType')">hahahahah</a>

									</form>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>









	

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
<script type="text/javascript" src="../../test/json/m.js"></script>


	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="/module/wift/js/facecreate2.js"></script>
	<script src="/module/wift/js/Wift_CreateCaseLoadPage2.js"></script>
 <!--自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>

	<script type="text/javascript">

    function GetValue(){
    	var els =document.getElementsByName("demo2");
    	var elv =document.getElementsByName("demo22");
    	var aa="";
    	var bb="";
    	for (var i = 0, j = els.length; i < j; i++){
    	alert(els[i].value);
    	aa=aa+","+els[i].value ;
    	}
    	//for (var i = 0, j = elv.length; i < j; i++){
        //	alert(elv[i].value);
        //	bb=bb+","+elv[i].value ;
   //     	}
    	document.getElementById("dd").value=aa ;
    	document.getElementById("v").value=bb ;
    }
    
    
    
    
    function SaveIfCase(){
    	
    	var els =document.getElementsByName("demo2");
       	var elv =document.getElementsByName("demo22");
    	var _list = [];  
 	    var _val =[];
    	for (var i = 0; i < els.length; i++) {  
    	    _list[i] = els[i].value;  
    	    _val[i] = elv[i].value;  
    	}  
    	
    	
    	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
    	var projectid = document.getElementById("project").options[selectIndex].value;
    	
    	var selectI = document.getElementById("module").selectedIndex;//获得是第几个被选中了
    	var moduleid = document.getElementById("module").options[selectI].value;

    	
    	var  casename =	document.getElementById("casename").value ;
    	var  casedesc =	document.getElementById("casedesc").value ;
    	var directories=	document.getElementById("interfaceaddress").value ;
    	
    	var  type1 =	document.getElementById("type") ;
 		var index=type1.selectedIndex ;   
 		var type = type1.options[index].value;
    	var  header =	document.getElementById("header").value ;  
    	var  InterfaceSelect  =	document.getElementById("InterfaceSelect") ;
    	var index=InterfaceSelect.selectedIndex ; 
    	var Interfaceid = InterfaceSelect.options[index].value;
 		alert(els);
        alert("1223"); 
    	alert(Interfaceid );
    	alert(casename);
    	$.ajax({
    		type : "POST",
    		url : "/wift/SaveIfCase.do",
		data : {
					"els" : _list,
					"elv" : _val,
					"casename" : casename,
					"casedesc" : casedesc,
					"type" : type,
					"header" : header,
					"Interfaceid" : Interfaceid,
					"projectid" : projectid,
					"moduleid" : moduleid,
					"directories" : directories
				},
				async : false,
				dataType : "json",
				traditional : true,
				success : function(data) {
					alert(data);
				}
			});
		}
    
 
    
    function InputDataDo(biaoshi) {
    	var _list = [];
    	var els = document.getElementsByName(biaoshi);
    	for (var i = 0; i < els.length; i++) {
    		alert(els[i].value);
    		_list[i] = els[i].value;
    	}
    	return _list ;
    }

    
    function AssertionInputDataDo(biaoshi) {
    	var _list = [];
    	var els = document.getElementsByName(biaoshi);
    	for (var i = 0; i < els.length; i++) {
    		alert(els[i].value);
    		_list[i] = els[i].value;
    	}
    	return _list ;
    }
    
    
    
	function SelectDataDo(biaoshi) {
		var _list = [];
		var objs =	document.getElementsByName(biaoshi);
		for (var i = 0; i < objs.length; i++) {
			var  index = objs[i].selectedIndex ;
			var name = objs[i].options[index].value;
			_list[i] = name ;
               alert("===="+ _list[i]);
            }	
		return _list ;
    }
    
    //  保存用例操作
    
    function  SaveInterfaceCase(){
    	
    	
    	var _RequestParameterName = [];
    	var _RequestParameterValue = [];
    	var _RequestHeaderParameterName = [];
    	var _RequestHeaderParameterValue = [];
    	
    	var _AssertionTypeParameter = [];
    	var _AssertionResultParameter = [];
    	var _AssertionContentParameter = [];
    	var _AssertionDescParameter = [] ;
    	
    	var _AssertionHeaderTypeParameter = [];
    	var _AssertionHeaderResultParameter = [];
    	var _AssertionHeaderContentParameter = [];
    	var _AssertionHeaderDescParameter = [] ;
    	
    	//alert("11111111111A");
    	_RequestParameterName = InputDataDo("RequestParameterName") ;
    	_RequestParameterValue = InputDataDo("RequestParameterValue") ;
    	_RequestHeaderParameterName = InputDataDo("RequestHeaderParameterName") ;
    	_RequestHeaderParameterValue = InputDataDo("RequestHeaderParameterValue") ;
    	//alert("11111111111B");
    	_AssertionTypeParameter =    SelectDataDo("AssertionType") ;
    	_AssertionResultParameter =  AssertionInputDataDo("ExpectedResult") ;
    	_AssertionContentParameter = AssertionInputDataDo("AssertionContent") ;
    	_AssertionDescParameter  =   AssertionInputDataDo("AssertionDesc") ;
    	
    	
    	_AssertionHeaderTypeParameter =    SelectDataDo("AssertionHeaderType") ;
    	_AssertionHeaderResultParameter =  AssertionInputDataDo("ExpectedHeaderResult") ;
    	_AssertionHeaderContentParameter = AssertionInputDataDo("AssertionHeaderContent") ;
    	_AssertionHeaderDescParameter  =   AssertionInputDataDo("AssertionHeaderDesc") ;
    	
    	
    	alert(_AssertionTypeParameter.length);
    	alert(_AssertionResultParameter.length);
    	alert(_AssertionResultParameter[0]);
    	alert("11111111111C");
    	var  casename =	document.getElementById("casename").value ;
    	var  casedesc =	document.getElementById("casedesc").value ;
    	var  InterfaceSelect  =	document.getElementById("InterfaceSelect") ;
    	var  index=InterfaceSelect.selectedIndex ; 
    	var  Interfaceid = InterfaceSelect.options[index].value;
    	var  serverid=1 ;
    	
    	$.ajax({
    		type : "POST",
    		url : "/wift/SaveInterfaceCase.do",
		data : {
					"CaseName" : casename,
					"CaseDesc" : casedesc,
					"InterfaceId" : Interfaceid,
					"ServerId" : serverid,
					"RequestParameterName" : _RequestParameterName  ,
    				"RequestParameterValue": _RequestParameterValue  ,
    				"RequestHeaderParameterName": _RequestHeaderParameterName ,
    				"RequestHeaderParameterValue": _RequestHeaderParameterValue , 
    				
    				"AssertionTypeParameter"    :  _AssertionTypeParameter,
    				"AssertionResultParameter" :  _AssertionResultParameter,
    	            "AssertionContentParameter" :  _AssertionContentParameter,
    	            "AssertionDescParameter"  : _AssertionDescParameter ,
    	            
    	            "AssertionHeaderTypeParameter"  : _AssertionHeaderTypeParameter  ,
    				"AssertionHeaderResultParameter"  :_AssertionHeaderResultParameter  ,
    				"AssertionHeaderContentParameter"  :_AssertionHeaderContentParameter  ,
    				"AssertionHeaderDescParameter"  :_AssertionHeaderDescParameter  
 
				},
				async : false,
				dataType : "json",
				traditional : true,
				success : function(data) {
					alert(data);
				}
			});
    }
    

    
	</script>
	
	  <script type="text/javascript">
        function deleteCurrentRow(obj){
            var tr=obj.parentNode.parentNode;
            var tbody=tr.parentNode;
            tbody.removeChild(tr);
            //只剩行首时删除表格
         //   if(tbody.rows.length==1) {
         //       tbody.parentNode.removeChild(tbody);
           // }
        }
    </script>






	<script type="text/javascript">
		function Pr() {
			var json = document.getElementById('RawJson').value;
			alert(json);
		//	JSON.stringify(d).toString().replace(new RegExp("\\\\\"","gm"),"\"")
		// https://blog.csdn.net/cainiao0589/article/details/101264853	
			// https://www.sojson.com/   
			    	document.getElementById("Canvas").innerHTML =  json.replace(new RegExp("\\\\\"","gm"),"\"") ;
		}
	</script>
	
	
<script type="text/javascript">
		function getjson() {
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json.do",
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
			//		var 	d = data.replaceAll("\"","\\\"");
			//	var 	d = data.repalceAll("\"","&quot;");
			//		alert(d);
					document.getElementById("200").innerHTML = data ;
				}
			});	
		}
	</script>
	
		<script type="text/javascript">
		function firstloadjson(a) {
		//	var  InterfaceSelect  =	document.getElementById("200") ;
		//	var index=InterfaceSelect.selectedIndex ; 
		//	var name = InterfaceSelect.options[index].value;
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
			var  datvalue= document.getElementById("dat").value ;
		document.getElementById("dat").value= a.options[index].text;
		
			alert("--name--"+name);
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json_load.do",
				data : {
					"Name" : name	
				},
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
					document.getElementById("300").innerHTML = data ;
				}
			});	
		}
	</script>
	
	<script type="text/javascript">
		function loadjson(a) {
		//	var  InterfaceSelect  =	document.getElementById("200") ;
		//	var index=InterfaceSelect.selectedIndex ; 
		//	var name = InterfaceSelect.options[index].value;
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
			var  datvalue= document.getElementById("dat").value ;
		document.getElementById("dat").value= datvalue +" -- "+ a.options[index].text;
		
			alert("--name--"+name);
			$.ajax({
				type : "GET",
				url : "/wift/Wift_Json_load.do",
				data : {
					"Name" : name	
				},
				async : false,
				dataType : "text",
				success : function(data) {
					alert(data);
					document.getElementById("300").innerHTML = data ;
				}
			});	
		}
	</script>
	
	<script type="text/javascript">
		function demojson() {
			let Random = Mock.Random;
			Random.date();
			let dataMock = Mock.mock(/\/api\/test/, 'get',{
			      'dataList|10': [{
			        'id|1000001-200000': 666666,
			        'name': '@cname',
			        'email': '@email',
			        'date': '@date',
			        'str': '@csentence'
			    }]
			});
			console.log(dataMock);	

		$.ajax({
			type : "GET",
			url : "/api/test",
			dataType : "json",
			success : function(data) {
				alert("hahah"+data.dataList[0].id);
			}
		});		
		// 请求的 /api/test  会被mock拦截返回数据  dataMock
		}
	</script>
	
	
	
	
	
	<script type="text/javascript">
	
	$(function(){
        $.fn.autoHeight = function(){    
        function autoHeight(elem){
            elem.style.height = 'auto';
            elem.scrollTop = 0; //防抖动
            elem.style.height = elem.scrollHeight + 'px';
        }
        this.each(function(){
            autoHeight(this);
            $(this).on('keyup', function(){
                autoHeight(this);
            });
        });    
    }                
    $('textarea[autoHeight]').autoHeight();    
})
	
	</script>
	

	
	<script type="text/javascript">
	//  加载json 1级参数数据
	init_json();
	function init_json(){
	var  interfaceid= document.getElementById("interfaceid").value ;
	var  rs= document.getElementById("RawJson").value ;
	rs="-"+rs ;
	$.ajax({
		type : "GET",
		url : "/wift/Wift_default_load_json.do",
		data : {"rs" : rs},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("AssertionModel").innerHTML = data ;
		}
	});
	}
	
	
	// 加载出2级参数数据
	function load_json_first_param(a){
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
	    var text = a.options[index].text  ;
	  //   alert(text);
	//	  alert(a.parentNode.innerHTML) ;
		//  alert(a.parentNode.nextSibling.innerHTML) ;
		//  alert("==="+a.parentNode.nextSibling.nextSibling.firstElementChild.value) ;
		  a.parentNode.nextSibling.nextSibling.firstElementChild.value=text  ;
		$.ajax({
			type : "GET",
			url : "/wift/Wift_default_load_json.do",
			data : {"rs" : name	},
			async : false,
			dataType : "text",
			success : function(data) {
			//	alert("qingqiu"+data);
				a.parentNode.nextSibling.firstElementChild.innerHTML=data ;	
			}
		});	
	}
	// 加载出其他级别数据
	function load_json_other_param(a){
		var index=a.selectedIndex ; 
		var name = a.options[index].value;
	    var text = a.options[index].text  ;
//		  alert(a.parentNode.innerHTML) ;
//		  alert(a.parentNode.nextSibling.innerHTML) ;
//		  alert("==="+a.parentNode.nextSibling.nextSibling.firstElementChild.value) ;  
		  var v = a.parentNode.nextSibling.firstElementChild.value
		  a.parentNode.nextSibling.firstElementChild.value= v +"---"+ text  ;
		$.ajax({
			type : "GET",
			url : "/wift/Wift_default_load_json.do",
			data : {"rs" : name	},
			async : false,
			dataType : "text",
			success : function(data) {
				a.innerHTML=data ;	
			}
		});	
	}
	
	</script>
	
	
</body>

</html>
