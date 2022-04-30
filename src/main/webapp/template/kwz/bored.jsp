<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>无聊说</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="favicon.ico">
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
</head>

<body class="gray-bg">



<style type="text/css">

.box h5,  {
    color: #333;
    height: 35px;
    line-height: 40px;
    overflow: hidden;
    padding-left: 15px;
}
.lmtj {
    padding: 5px 15px 0 15px;
}

.box dl {
    margin: 0;
    word-wrap: break-word;
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}

.box ul, li{
	list-style: none;
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.box h5.title-2, .box h6.title-2 {
    background-position: right -100px;
    height: 35px;
    padding-left: 16px;
    padding-top:20px ;
}
.box .digg li {
    background: url("/template/name/love/li1.gif") no-repeat left 8px;
    padding-left: 16px;
    height: 28px;
    line-height: 28px;
    overflow: hidden;
    position: relative;
}
.box a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}

.bo {
   
    width:150px;
    height:50px;
    float:left;
    margin:10px;
    text-align:center ;
    background-color: #00a0e9; 
    border-radius: 6px;  
    padding-top:10px;
}
</style>



	<%@ include file="/template/kwz/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >
						<br>
						<div class="col-lg-12">
						<div class="col-lg-9"  id="col-lg-9" style="border-right:1px dashed #A9A9A9 ;word-wrap: break-word;word-break: break-all;min-height:800px" >
						
				

		<div class="box">
            <h5 class="title-2">今天您无聊了吗？</h5>
            <dl class="digg lmtj">
                 	
                 	<c:forEach items="${tt}" var="a" > ${a.bored}    </c:forEach> 
                 	
                 	
                 	
                 	
			</dl>
 	  </div>








						</div>
						<div class="col-lg-3">







		<div class="box">
            <h5 class="title-2">无聊说</h5>
            <dl class="digg lmtj">
											<div class="form-group">
												<textarea id="notice" class="form-control"
												aria-required="true"  style="min-height:130px"  ></textarea>
												
												<button style="width:100%"> 发布</button>
											</div> 
			</dl>
 	  </div>








</div>


						</div>




						<p></p>
						<p></p>
						<p></p>
						<p></p>
						<hr>

						
						</div>


					</div>
				</div>
			
		</div>

	</div>


 <%@ include file="/template/kwz/footer.jsp"%> 



	<!-- 全局js -->

	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/content.js?v=1.0.0"></script>
	<script src="/template/kwz/kjs/Comment.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>

<script>

//function tt(){
	
//	alert("ddd");
	var o = document.getElementById("col-lg-9");
//	alert(o.offsetWidth);
	var imgs = document.getElementById("col-lg-9").getElementsByTagName("img") ;
//	var imgs = document.getElementsByTagName("img");
	for(var i=0; i<imgs.length; i++){
//  alert(imgs[i].width);
    if(imgs[i].width > o.offsetWidth){
    	 imgs[i].style["max-width"] = o.offsetWidth - 20 + "px";
    }	
    }  
	
//}


</script>

</body>

</html>