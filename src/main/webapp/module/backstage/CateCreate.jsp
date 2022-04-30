<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖</title>
    
    <link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/test/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/test/css/animate.css" rel="stylesheet">
    <link href="/test/css/style.css?v=4.1.0" rel="stylesheet">



	<link rel="stylesheet" href="/zTree_v3/css/demo.css" type="text/css">
	<link rel="stylesheet" href="/zTree_v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="/zTree_v3/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="/zTree_v3/js/jquery.ztree.core.js"></script>
	<SCRIPT type="text/javascript">
		

	
		var setting = {
			view: {
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeClick: beforeClick,
				onClick: onClick
			}
		};

		
		
		var zNodes =[{id:1, pId:0, name:"北京"},{id:64, pId:6, name:"三明"}];
		function beforeClick(treeId, treeNode) {
			var check = (treeNode && !treeNode.isParent);
		return (treeNode.click != false);;
		}

		
		
		
		
		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes(),
			v = "";
			vv = "" ;
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
				vv += nodes[i].id ;
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			var cityObj = $("#citySel");
			cityObj.attr("value", v);
			document.getElementById("cateid").value=vv ;
			//Tag(vv);
			document.getElementById("menuContent").style.display="none";
		}

		function showMenu() {
			var cityObj = $("#citySel");
			var cityOffset = $("#citySel").offset();
		//	$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
			$("#menuContent").slideDown("fast");
			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

		function  GetCateItem() {

			var tree=[];
			var dir  =  $("#item").val()  ;
			//var dir  =  "softtest";
			$.ajax({
				type : "GET",
				url : "/module/share/GetCateJsonByItem.do",
	    		data: {dir:dir},
				async : false,
				dataType : "json",
				success : function(result) {
				     var obj={id:0,pid:0,name:"0",open:false,sort:0,urll:"0",code:"0",icon:"0",type:0,state:0,desc:"0"} ;
				     for(var i=0;i<(result.length);i++){
				     obj.id   = eval('(' + result[i].cateid + ')');
				     obj.pid  = eval('(' + result[i].pid + ')');
				     obj.name = result[i].catename ;
				     obj.urll = result[i].url ;
				     obj.code = result[i].permissioncode ;
				     obj.icon = result[i].icon ;
				     obj.desc = result[i].descp ;
				     obj.state = eval('(' + result[i].state + ')');
				     obj.type = eval('(' + result[i].type + ')');
				     obj.sort=eval('(' + result[i].sort + ')');
				     obj2 ={id:obj.id,pId:obj.pid,name:obj.name,open:obj.open,sort:obj.sort,urll:obj.urll,code:obj.code,icon:obj.icon,type:obj.type,state:obj.state,desc:obj.desc};
				     tree.push(obj2);
				     }
				}
	    		
			});
	
	
			$(document).ready(function(){
				 console.log(zNodes);  
				$.fn.zTree.init($("#treeDemo"), setting, tree);
				
				<!-- 展开第一节点 -->
				
				　　　　//获得树形图对象            
				       var zTree = $.fn.zTree.getZTreeObj("treeDemo");            
				       //获取根节点个数,getNodes获取的是根节点的集合            
				       var nodeList = zTree.getNodes();　　　　　　
				       //展开第一个根节点           
				       zTree.expandNode(nodeList[0], true);　　　　　　
				       //当再次点击节点时条件不符合,直接跳出方法            
				<!-- 展开第一节点 -->
	            
				
		 	});	
			
		}
			
	</SCRIPT>
	
	<link href="/module/share/tag/tab.css" type="text/css" rel="stylesheet" /> 

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
  
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>创建栏目</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_basic.html#">选项1</a>
                                </li>
                                <li><a href="form_basic.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form method="get" class="form-horizontal">
                          
                            <div class="form-group">
                                <label class="col-sm-2 control-label">所属频道</label>
                                <div class="col-sm-2">
                                    <select class="form-control m-b" name="account" id="item"  onchange="initSpecial()">
                                         <c:forEach items="${tlst}" var="a" varStatus="status">
                                         <option value="${a.item_directorie}">${a.item_name}</option>  
                                         </c:forEach>
                                    </select>
                                    <span class="help-block m-b-none">最先选择频道</span>
                                </div>
                            </div>
                             <div class="hr-line-dashed"></div>
                             
                             
                             
                             <div class="form-group">
                             <label class="col-sm-2 control-label">所属栏目</label>
                                <div class="col-sm-2">
                             <div class="zTreeDemoBackground left">
		<ul class="list">
			
			<li class="title"><input id="citySel" type="text" readonly  class="form-control"   onclick="showMenu(); return false;" style="width:100px;"/>
<input id="cateid" type="hidden" readonly value="" class="form-control"  style="width:50px;"  />
		&nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;"  style="display:none; ">选择</a></li>
		</ul>
		<div id="menuContent" class="menuContent" style="display:none; position: absolute;"> 
	<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
</div>
		
	</div>
                             </div>
                               </div>
                             
                             
                             
                             
                             
                          <!--
                             
                            <div class="form-group">
                                <label class="col-sm-2 control-label">所属栏目</label>
                                <div class="col-sm-2">
                                    <select class="form-control m-b" name="account" id="special">
                                         
                                    </select>
                                     <span class="help-block m-b-none">父栏目</span>
                                </div>
                            </div>
                              -->   
                            
                            
                            
                            <div class="hr-line-dashed"></div>
                            
                            
                              <div class="form-group">
                                <label class="col-sm-2 control-label">栏目名称</label>

                                <div class="col-sm-4">
                                    <input type="text" id="specialname" class="form-control">
                                </div>
                                
                            </div>
                            

                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">栏目目录</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="specialdir"> <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
                                </div>
                            </div>
                         
                      <div class="hr-line-dashed"></div>
                        
                        
                                 <div class="form-group">
                                <label class="col-sm-2 control-label">keyword</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="keyword"> 
                                    <span class="help-block m-b-none">关键词设置，用于seo</span>
                                </div>
                            </div>
                           <div class="hr-line-dashed"></div>
                         	<div class="form-group">
                                <label class="col-sm-2 control-label">depict</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="depict"> 
                                    <span class="help-block m-b-none">关键词设置，用于seo</span>
                                </div>
                            </div>
                         
                         
                            <div class="hr-line-dashed"></div>
                        
                        
                        
                        
                            <div class="form-group">
                                <label class="col-sm-2 control-label">列表模板</label>
                                <div class="col-sm-2">
                                    <select class="form-control m-b" name="account" id="listtemplate">
                                        
                                    </select>
                                </div>
                            </div>
                             <div class="hr-line-dashed"></div>
                             <div class="form-group">
                                <label class="col-sm-2 control-label">内容页模板</label>
                                <div class="col-sm-2">
                                    <select class="form-control m-b" name="account" id="contemplate">
                                       
                                    </select>
                                </div>
                            </div>
                           
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button" onclick="CreateSpecial()">保存内容</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="modal-form" class="modal fade" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6 b-r">
                            <h3 class="m-t-none m-b">登录</h3>

                            <p>欢迎登录本站(⊙o⊙)</p>

                            <form role="form">
                                <div class="form-group">
                                    <label>用户名：</label>
                                    <input type="email" placeholder="请输入用户名" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>密码：</label>
                                    <input type="password" placeholder="请输入密码" class="form-control">
                                </div>
                                <div>
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>登录</strong>
                                    </button>
                                    <label>
                                        <input type="checkbox" class="i-checks">自动登录</label>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <h4>还不是会员？</h4>
                            <p>您可以注册一个账户</p>
                            <p class="text-center">
                                <a href="form_basic.html"><i class="fa fa-sign-in big-icon"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
  <!--  <script src="/test/js/jquery.min.js?v=2.1.4"></script> 于ztree  的jquery 冲突无法显示  -->
    <script src="/test/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="/test/js/content.js?v=1.0.0"></script>

    <!-- iCheck -->
    <script src="/test/js/plugins/iCheck/icheck.min.js"></script>
    
    
    
    
    <script>

    function  initSpecial(){
    	document.getElementById('citySel').value="";
    	GetCateItem() ;
    	
    //	alert("dd");
    	var dir  =  $("#item").val()  ;
    	$.ajax({
    		type : "GET",
    		url : "/backstage/SpecialCreateInitJs.do",
    		data: {dir:dir},
    		dataType : "text",
    		success : function(data) {
    		//	alert(data);	
       var a =eval("("+data+")") ;
		// alert(a.sp[0].pdir)  ;
		$("#special").empty();
    
		
		for (var i = 0; i < a.sp.length; i++) {
    	  $("#special").append("<option  value='"+a.sp[i].cateid+"'   >"+a.sp[i].catename+"</option>");
      		}
          $("#listtemplate").empty();
    	 for (var i = 0; i < a.lt.length; i++) {
       	   $("#listtemplate").append("<option value='"+a.lt[i]+"' >"+a.lt[i]+"</option>");
       	   }
    	    	
    	  $("#contemplate").empty();
    	   for (var i = 0; i < a.con.length; i++) {
       	   $("#contemplate").append("<option value='/"+a.con[i]+"'>"+a.con[i]+"</option>");
       	   }

    		},error:function(){
    			　　alertLayer("获取数据失败","error");
    		　　}
    		
    	});
    	
    	
    	
    }
    
    
    
    
 
    
    
    function CreateSpecial(){ 
    	
    	var pdir  	   	   =  $("#item").val()  ;
    //	var scateid  	   =  $("#special").val()  ;
    	var catename  	   =  $("#specialname").val()  ;
    	var catedirectory  =  $("#specialdir").val()  ;

    	var scateid  =  $("#cateid").val()  ;
    	var keyword  =  $("#keyword").val()  ;
    	var depict  =  $("#depict").val()  ;
    	var listtemplate  =  $("#listtemplate").val()  ;
    	var articletemplate  =  $("#contemplate").val()  ;

   	$.ajax({
		type : "POST",
		url : "/backstage/SpecialSave.do",
		data: {pdir:pdir, scateid:scateid, catename:catename ,catedirectory:catedirectory ,
			ckeyword:keyword, cdepict:depict, listtemplate:listtemplate ,articletemplate:articletemplate 		},
		async : false,
		dataType : "text",
		success : function(data) {
	     alert(data);
	   
		}
	});
} 
    
    
    
    
    
    
    
    
    
    
    

    
    </script>











</body>

</html>
