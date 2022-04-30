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

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
  
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>创建频道</h5>
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
                                <label class="col-sm-2 control-label">频道名称</label>

                                <div class="col-sm-4">
                                    <input type="text" id="itemname" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">频道目录</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="itemdir"> <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
                                </div>
                            </div>
                         
                            <div class="hr-line-dashed"></div>
                        
                          <div class="form-group">
                                <label class="col-sm-2 control-label">频道描述</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="itemdesc"> <span class="help-block m-b-none">帮助文本，可能会超过一行，以块级元素显示</span>
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
                                <label class="col-sm-2 control-label">频道模板</label>

                                <div class="col-sm-2">
                                    <select class="form-control m-b" name="account" id="template">
                                         <c:forEach items="${tlst}" var="a" varStatus="status">
                                         <option value="${a}">${a}</option>  
                                         </c:forEach>
                                    </select>

                                   
                                </div>
                            </div>
                            
                            
                           
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button" onclick="CreateItem()">保存内容</button>
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
    <script src="/test/js/jquery.min.js?v=2.1.4"></script>
    <script src="/test/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="/test/js/content.js?v=1.0.0"></script>

    <!-- iCheck -->
    <script src="/test/js/plugins/iCheck/icheck.min.js"></script>
    
    
    
    
    <script>
    
    
    function CreateItem(){
    	var item_name  =  $("#itemname").val()  ;	
    	var item_description  =  $("#itemdesc").val()  ;
    	var item_directorie  =  $("#itemdir").val()  ;
    	var keyword  =  $("#keyword").val()  ;
    	var depict  =  $("#depict").val()  ;
    	var item_template  =  $("#template").val()  ;
    	
    	
    	
    	$.ajax({
    		type : "POST",
    		url : "/backstage/SaveItem.do",
    		data: {item_name:item_name,item_description:item_description , item_directorie:item_directorie, keyword:keyword, depict:depict, item_template:item_template},
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
