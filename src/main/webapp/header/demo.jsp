<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H+ 测试平台 - 空白页</title>
<meta name="keywords" content="">
<meta name="description"content="">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" type="text/css"href="../../test/res/webuploader.css">
<link href="../../test/css/defect.css" rel="stylesheet">
<script type="text/javascript" src="../../test/res/jquery.js"></script>
<script type="text/javascript" src="../../test/res/webuploader.js"></script>
</head>

<body class="gray-bg">
<script type="text/javascript">

function  A(){
	var json = {"username" : "imp", "password" : "123456"};
	document.getElementById("requestdata").innerHTML=JSON.stringify(json) ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("A").innerHTML
	$.ajax({
		type : "POST",
		url : "http://192.168.31.107:8080/json/A.do",
		dataType : "json",
		async : false,
		data: JSON.stringify(json),
		success : function(data) {	
			//alert(data.status); //由于dataType  为json 所以data无法直接输出
			document.getElementById("responsedata").innerHTML=data.status ;
		},error: function(){document.getElementById("responsedata").innerHTML="error" ;}
	});	
}
function  B(){
	var json={'username': 'year', 'password': 'qhdm'} ;
	document.getElementById("requestdata").innerHTML=JSON.stringify(json) ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("B").innerHTML
	 $.ajax({
         type: "POST",
         url: "http://192.168.31.107:8080/json/B.do",
         data:  JSON.stringify(json)  ,
         contentType:"application/x-www-form-urlencoded",
         dataType : "text",
     	async : false,
         success: function (data) {
        	//alert(data); //由于dataType  为text 所以data可以直接输出alert
        	document.getElementById("responsedata").innerHTML=data ;
         },error: function(){document.getElementById("responsedata").innerHTML="error" ;}
	});
}



function C(){
	document.getElementById("requestdata").innerHTML=JSON.stringify([{'username': 'year', 'passwd': 'qhdm'}])  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("C").innerHTML;
$.ajax({
	type : "POST",
	url : "http://192.168.31.107:8080/json/Person.do",
    contentType:"application/json; charset=UTF-8",
    data: JSON.stringify([{'username': 'year', 'passwd': 'qhdm'}]) ,
    async : false,
	dataType : "text",
	success : function(data) {
		 document.getElementById("responsedata").innerHTML=data ;
	}, error : function(data){document.getElementById("responsedata").innerHTML="error" ;}
});
}

function D(){
	var params =JSON.stringify([{
		username:"zhangsan",
		passwd:"123456"
		},{
			username:"lis",
			passwd:"888"
			}]);
	document.getElementById("requestdata").innerHTML=params  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("D").innerHTML;
	$.ajax({
		type : "POST",
		url : "http://192.168.31.107:8080/json/Person.do",
		contentType:"application/json",
		data: params,
		async : false,
		success : function(data) {
			 document.getElementById("responsedata").innerHTML=data ;
		},error : function(data){document.getElementById("responsedata").innerHTML="error" ;}
	});
}


	
	
    function E(){
    	var user={"username":"lisi","password":"123"};
    	document.getElementById("requestdata").innerHTML=JSON.stringify(user)  ;
    	document.getElementById("ajaxrequest").innerHTML=document.getElementById("E").innerHTML;
    	$.ajax({
 		   url: "http://192.168.31.107:8080/json/user.do",
 		   data:JSON.stringify(user),
 	 		 async : false,
 		  contentType:'application/json',
 		   type:'post',
 		   success: function(data){ document.getElementById("responsedata").innerHTML=data ;},
 		   error : function(data){document.getElementById("responsedata").innerHTML="error" ;}
 		});
    }

	



function  F(){
    var userList = new Array();  
    userList.push({name: "李四",pwd: "123",id: "100"});   
    userList.push({name: "张三",pwd: "332",id: "200"});   
	document.getElementById("requestdata").innerHTML=JSON.stringify(userList)  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("F").innerHTML;
    $.ajax({  
        type: "POST",  
        url: "http://192.168.31.107:8080/json/cate.do",  
        data: JSON.stringify(userList),//将对象序列化成JSON字符串  
        dataType:"json", 
        async : false,
        contentType : 'application/json;charset=utf-8', //设置请求头信息  
        success: function(data){  
        	document.getElementById("responsedata").innerHTML=data ;
        }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}  
    }); 
}

</script>


<script type="text/javascript">  
     function G(){
            var saveDataAry=[];  
            var data1={"name":"test"};  
            var data2={"name":"张三"};  
            saveDataAry.push(data1);  
            saveDataAry.push(data2);    
            var  params =JSON.stringify(saveDataAry)
        	document.getElementById("requestdata").innerHTML=params  ;
        	document.getElementById("ajaxrequest").innerHTML=document.getElementById("G").innerHTML;
            $.ajax({ 
                type:"POST", 
                url:"http://192.168.31.107:8080/json/student.do", 
                dataType:"text",   
                async : false,
                contentType:"application/json",               
                data:params, 
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}  
             }); 
      }
</script>


<script type="text/javascript">  
     function H(){
            var saveDataAry=[];  
            var data1={"carname":"jiaoche","carcolor":"red","carstyle":"A"};  
            var data2={"carname":"daba","carcolor":"green","carstyle":"B"};  
            saveDataAry.push(data1);  
            saveDataAry.push(data2);    
            var  params =JSON.stringify(saveDataAry)
        	document.getElementById("requestdata").innerHTML=params  ;
        	document.getElementById("ajaxrequest").innerHTML=document.getElementById("H").innerHTML;
            $.ajax({ 
                type:"POST", 
                url:"http://192.168.31.107:8080/json/Car.do", 
                dataType:"text",   
                async : false,
                contentType:"application/json",               
                data:params, 
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}   
             }); 
      }
</script>

<script type="text/javascript">  
function I(){
	
	var json = {"supplier_unique" : 13123123, "remark" : "这是订单备注" } 
	var remarks=JSON.stringify([ json,json,json ]) ;	
	var jsonRequest={"shop_unique":"111", "barcodes":[1,1,1,1], "remarks":remarks }
		document.getElementById("requestdata").innerHTML=JSON.stringify(jsonRequest)   ;				
}
</script>

<script type="text/javascript">
    function J() {
        $.ajax({
            url: "http://192.168.31.107:8080/json/People.do",
            type: "post",
            dataType: "text",
            contentType: 'application/json;charset=utf-8',
            async: false,
            data: JSON.stringify(
                [{name: '小红', age: 20, company: {name: '阿里', address:{location:'杭州',phoneNum:'88888'}}},
                 {name: '小王', age: 22, company: {name: '腾讯', address:{location:'深圳',phoneNum:'99999'}}}]
            ),
            success: function(data){  
            	document.getElementById("responsedata").innerHTML=data ;
            }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}   
            
        });
    }
</script>

<script type="text/javascript">
function K() {
var cmd =  [{"storeId":"0a1", "address":"西斗门路2号", "goods":[{"goodsId":"1"}, {"goodsId":"2"}, {"goodsId":"3"}]},
            {"storeId":"0a1", "address":"西斗门路2号", "goods":[{"goodsId":"4"}, {"goodsId":"4"}, {"goodsId":"5"}]}]  
              
$.ajax({  
                url : "http://192.168.31.107:8080/json/Ple.do",  
                type : "POST",  
                datatype:"text",  
                contentType: "application/json; charset=utf-8",  
                data : JSON.stringify(cmd),  
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}     
            }); 
}
</script>


<script type="text/javascript">
function L() {
	var test = {
		    "TaskID": "1",
		    "SkillID": "1",
		    "Equipment": [
		        {
		            "EquipmentDetailID": "1",
		            "Qty": "1"
		        },{
		            "EquipmentDetailID": "2",
		            "Qty": "2"
		        }
		    ]
		};
          alert(JSON.stringify(test))  ;  
$.ajax({  
                url : "http://192.168.31.107:8080/json/L.do",  
                type : "POST",  
                datatype:"text",  
                contentType: "application/json; charset=utf-8",  
                data : JSON.stringify(test),  
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}     
            }); 
}
</script>



	<div class="wrapper wrapper-content">
		<div class="row" style="min-height: 800px; 800px; margin: 0 200px 0 200px">
		<div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                          <!--    <a class="btn btn-block btn-primary compose-mail" href="#">个人中心</a>-->
                            <div class="space-25"></div>
                            <h5>个人中心</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
                                <li><a href="javascript:;" onclick="A()"> <i class="fa  fa-user"></i>A:dataType:json</a></li>
                                <li><a href="javascript:;" onclick="B()"> <i class="fa fa-file-text-o"></i>B:dataType:text</a></li>
                                <li><a href="javascript:;" onclick="C()"> <i class="fa fa-cog"></i>C:单数组</a></li>
                                <li><a href="javascript:;" onclick="D()"> <i class="fa fa-book"></i>D:多数组</a></li>
                                <li><a href="javascript:;" onclick="E()"> <i class="fa fa-send"></i>E:json</a></li>
                                <li><a href="javascript:;" onclick="F()"> <i class="fa fa-navicon"></i>F:专题管理</a></li>
                                <li><a href="javascript:;" onclick="G()"> <i class="fa fa-plus-square-o"></i>G创建专题</a> </li>
                                <li><a href="javascript:;" onclick="H()"> <i class="fa fa-inbox "></i> H应用首页                                     </a></li>
                                <li><a href="javascript:;" onclick="I()"> <i class="fa fa-home"></i>I 我的博客</a></li>
                                <li><a href="javascript:;" onclick="J()"> <i class="fa fa-home"></i>J 我的博客</a></li>
                                <li><a href="javascript:;" onclick="K()"> <i class="fa fa-home"></i>K 我的博客</a></li>
                                <li><a href="javascript:;" onclick="L()"> <i class="fa fa-home"></i>L 我的博客</a></li>
                                
                                <li><a href="javascript:;" onclick="h11()"> <i class="fa fa-send"></i>E:head</a></li>
                                <li><a href="javascript:;" onclick="h22()"> <i class="fa fa-send"></i>E:responsehead</a></li>
                                <li><a href="javascript:;" onclick="h33()"> <i class="fa fa-send"></i>E:responsehead</a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>



<script type="text/javascript">
function h11() {
//	https://blog.csdn.net/why15732625998/article/details/79348718?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-7&spm=1001.2101.3001.4242
// https://www.fity.cn/post/671.html   Response Headers
	$.ajax({  
		headers: {
	        Accept: "application/json; charset=utf-8",
	        	'Authorization': "haha" 
	    },
        url : "/eg/RequestHeader.do",  
        type : "GET",  
        datatype:"text",  
        contentType: "application/json; charset=utf-8",  
        success: function(data){  
        	document.getElementById("responsedata").innerHTML=data ;
        }, error: function(){ 
        	document.getElementById("responsedata").innerHTML="error" ;
        	}     
    }); 
}


function h22() {
//	https://blog.csdn.net/why15732625998/article/details/79348718?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-7&spm=1001.2101.3001.4242
// https://www.fity.cn/post/671.html   Response Headers
	$.ajax({  
        url : "/eg/ResponseHeader.do",  
        type : "GET",  
        datatype:"text",  
        contentType: "application/json; charset=utf-8",  
        success: function(data,status,xhr){  //alert(data);
        	document.getElementById("responsedata").innerHTML=data ;
        	alert(xhr.getAllResponseHeaders());
        	alert(xhr.getResponseHeader('test'));
        }, error: function(){ 
        	document.getElementById("responsedata").innerHTML="error" ;
        	}     
    }); 
}


function h33() {
//	https://blog.csdn.net/why15732625998/article/details/79348718?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-7&spm=1001.2101.3001.4242
// https://www.fity.cn/post/671.html   Response Headers
	$.ajax({ 
		headers: {
	             Accept: "application/json; charset=utf-8",
	        	'Authorization': "haha" 
	    },
        url : "/eg/Header.do",  
        type : "GET",  
        data:{"ids":"wo" ,"keys":"me"},
        datatype:"text",  
        contentType: "application/json; charset=utf-8",  
        success: function(data,status,xhr){  //alert(data);
        	document.getElementById("responsedata").innerHTML=data ;
        	alert(xhr.getAllResponseHeaders());
        	alert(xhr.getResponseHeader('test'));
        }, error: function(){ 
        	document.getElementById("responsedata").innerHTML="error" ;
        	}     
    }); 
}



</script>


			<div class="col-sm-10" >
				<div class="ibox float-e-margins">
					<div class="ibox-content" style="min-height: 800px;">
						<div class="row">
							
							<div class="col-sm-12" >
								<div class="col-sm-12">
								
								
								
								
	<xmp style="background-color:#F5F5DC;"  id="ajaxrequest"></xmp >
    <xmp  style="background-color:#C0C0C0;"  id="requestdata"></xmp>							
	<xmp  style="background-color:#7FFFD4;"  id="responsedata"></xmp>							
								</form>
								
			
			
			
			<hr>
			
		<xmp style="background-color:#F5F5DC;"  id="A">
	function  A(){
	var json = {"username" : "imp", "password" : "123456"};
	document.getElementById("requestdata").innerHTML=JSON.stringify(json) ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("A").innerHTML
	$.ajax({
		type : "POST",
		url : "http://192.168.31.107:8080/json/A.do",
		dataType : "json",
		async : false,
		data: JSON.stringify(json),
		success : function(data) {	
			//alert(data.status); //由于dataType  为json 所以data无法直接输出
			document.getElementById("responsedata").innerHTML=data.status ;
		},error: function(){document.getElementById("responsedata").innerHTML="error" ;}
	});	
}
		</xmp >
		
		<xmp style="background-color:#F5F5DC;"  id="B">
function  B(){
	var json={'username': 'year', 'password': 'qhdm'} ;
	document.getElementById("requestdata").innerHTML=JSON.stringify(json) ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("B").innerHTML
	 $.ajax({
         type: "POST",
         url: "http://192.168.31.107:8080/json/B.do",
         data:  JSON.stringify(json)  ,
         contentType:"application/x-www-form-urlencoded",
         dataType : "text",
     	async : false,
         success: function (data) {
        	//alert(data); //由于dataType  为text 所以data可以直接输出alert
        	document.getElementById("responsedata").innerHTML=data ;
         },error: function(){document.getElementById("responsedata").innerHTML="error" ;}
	});
}

		</xmp >

		<xmp style="background-color:#F5F5DC;"  id="C">
function C(){
	document.getElementById("requestdata").innerHTML=JSON.stringify([{'username': 'year', 'passwd': 'qhdm'}])  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("C").innerHTML
$.ajax({
	type : "POST",
	url : "http://192.168.31.107:8080/json/Person.do",
    contentType:"application/json; charset=UTF-8",
    data: JSON.stringify([{'username': 'year', 'passwd': 'qhdm'}]) ,
    async : false,
	dataType : "text",
	success : function(data) {
		// alert("dddssss");
		 document.getElementById("responsedata").innerHTML=data ;
	}, error : function(data){document.getElementById("responsedata").innerHTML="error" ;}
});

}
		</xmp >	
		
		<xmp style="background-color:#F5F5DC;"  id="D">
		function D(){
	var params =JSON.stringify([{
		username:"zhangsan",
		passwd:"123456"
		},{
			username:"lis",
			passwd:"888"
			}]);
	document.getElementById("requestdata").innerHTML=params  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("D").innerHTML;
	$.ajax({
		type : "POST",
		url : "http://192.168.31.107:8080/json/Person.do",
		contentType:"application/json",
		data: params,
		async : false,
		success : function(data) {
			 document.getElementById("responsedata").innerHTML=data ;
		},error : function(data){alert("system error");}
	});
}
		</xmp >
		
		
		
		
			
			
			<xmp style="background-color:#F5F5DC;"  id="E">
    function E(){
    	var user={"username":"lisi","password":"123"};
    	document.getElementById("requestdata").innerHTML=JSON.stringify(user)  ;
    	document.getElementById("ajaxrequest").innerHTML=document.getElementById("E").innerHTML;
    	$.ajax({
 		   url: "http://192.168.31.107:8080/json/user.do",
 		   data:JSON.stringify(user),
 	 		 async : false,
 		  contentType:'application/json',
 		   type:'post',
 		   success: function(data){ document.getElementById("responsedata").innerHTML=data ;},
 		   error : function(data){alert("系统错误");}
 		});
    }				
</xmp >
			<xmp style="background-color:#F5F5DC;"  id="F">
			function  F(){
    var userList = new Array();  
    userList.push({name: "李四",pwd: "123",id: "100"});   
    userList.push({name: "张三",pwd: "332",id: "200"});   
	document.getElementById("requestdata").innerHTML=JSON.stringify(userList)  ;
	document.getElementById("ajaxrequest").innerHTML=document.getElementById("F").innerHTML;
    $.ajax({  
        type: "POST",  
        url: "http://192.168.31.107:8080/json/cate.do",  
        data: JSON.stringify(userList),//将对象序列化成JSON字符串  
        dataType:"json", 
        async : false,
        contentType : 'application/json;charset=utf-8', //设置请求头信息  
        success: function(data){  
        	document.getElementById("responsedata").innerHTML=data ;
        }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}  
    }); 
}
			
			</xmp >
								
			<xmp style="background-color:#F5F5DC;"  id="G">
			<script type="text/javascript">  
     function G(){
            var saveDataAry=[];  
            var data1={"name":"test"};  
            var data2={"name":"张三"};  
            saveDataAry.push(data1);  
            saveDataAry.push(data2);    
            var  params =JSON.stringify(saveDataAry)
        	document.getElementById("requestdata").innerHTML=params  ;
        	document.getElementById("ajaxrequest").innerHTML=document.getElementById("G").innerHTML;
            $.ajax({ 
                type:"POST", 
                url:"http://192.168.31.107:8080/json/student.do", 
                dataType:"text",   
                async : false,
                contentType:"application/json",               
                data:params, 
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}  
             }); 
      }
</script>
			
			</xmp >
			
			<xmp style="background-color:#F5F5DC;"  id="H">
			<script type="text/javascript">  
     function H(){
            var saveDataAry=[];  
            var data1={"carname":"jiaoche","carcolor":"red","carstyle":"A"};  
            var data2={"carname":"daba","carcolor":"green","carstyle":"B"};  
            saveDataAry.push(data1);  
            saveDataAry.push(data2);    
            var  params =JSON.stringify(saveDataAry)
        	document.getElementById("requestdata").innerHTML=params  ;
        	document.getElementById("ajaxrequest").innerHTML=document.getElementById("H").innerHTML;
            $.ajax({ 
                type:"POST", 
                url:"http://192.168.31.107:8080/json/Car.do", 
                dataType:"text",   
                async : false,
                contentType:"application/json",               
                data:params, 
                success: function(data){  
                	document.getElementById("responsedata").innerHTML=data ;
                }, error: function(){ document.getElementById("responsedata").innerHTML="error" ;}   
             }); 
      }
</script>
			
			</xmp >					
								
								
								
				<xmp style="background-color:#F5F5DC;"  id="I"> 
				
				
				var jsonRequest={"shop_unique":"111", "barcodes":[1,1,1,1], "remarks":remarks }
				var remarks=JSON.stringify([ json,json,json ]) 
				var json = {"supplier_unique" : 13123123, "remark" : "这是订单备注" } 
				
				
				</xmp >				
								
								
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../test/js/content.js?v=1.0.0"></script>
</body>
</html>