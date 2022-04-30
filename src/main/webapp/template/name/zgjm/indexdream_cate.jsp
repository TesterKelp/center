<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖之_${m.item_name}_${c.catename}_主页</title>
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/name/css/animate.css" rel="stylesheet">
    <link href="/template/name/css/defect.css" rel="stylesheet">
    <link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="/template/name/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    
    <link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
    
    
    <link rel="stylesheet" type="text/css" href="/template/name/55/css/blue/index.css"/>
    <link rel="stylesheet" type="text/css" href="/template/name/55/css/blue/common.css"/>
</head>
<body>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
/*
a,a:visited{color:#5e5e5e; text-decoration:none;}
a:hover{color:#b52725;text-decoration:underline;}*/
.clear{display:block;overflow:hidden;clear:both;height:0;line-height:0;font-size:0;}
.demo{width:340px;margin:40px auto;}
/* ranklist */
.ranklist{border:solid 1px #ddd;padding:10px 10px 0 10px;background:#F9F9F9;}
.ranklist li{height:16px;line-height:16px;overflow:hidden;position:relative;padding:0 70px 0 30px;margin:0 0 10px 0;}
.ranklist li em{background:url(/template/name/6/images/mun.gif) no-repeat;width:20px;height:16px;overflow:hidden;display:block;position:absolute;left:0;top:0;text-align:center;font-style:normal;color:#333;}
.ranklist li em{background-position:0 -16px;}
.ranklist li.top em{background-position:0 0;color:#fff;}
.ranklist li .num{position:absolute;right:0;top:0;color:#999;}
</style>


<%@ include file="/template/name/htmlheader1.jsp"%><Br><br>
           
               
                       <div class="ibox-content" style="height: 100%;">


					<div class="col-lg-2"  style="border-right:1px solid #00a0e9;">

<style type="text/css">
ff{
border:1px solid #00a0e9;
width:30px;
margin:2px;
line-height:20px;
float:left;
text-align:center ;
}
fff{
border:1px solid #00a0e9;
width:60px;
margin:2px;
line-height:20px;
float:left;
text-align:center ;
}

ffff{

margin:2px;
line-height:30px;
float:left;
text-align:left ;
width:15%;
overflow: hidden;
text-overflow: ellipsis;white-space: nowrap;
}
</style>
<br>


	<div style="line-height:30px;">
	<form method="get" action="/name/zgjm/search.do">
	<input type="text" id="word" name="word"  class="form-control"  style="float:left;margin-bottom:20px;"  placeholder="请输梦的内容"    style="margin-top:10px;width:150px;" />
	
	<button type="submit"    class="btn btn-success" style="width:100%;font-size: 10px;">周公解梦</button>
	</form>
	</div>



<Br>
按首字母查找:
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">


  <c:forEach items="${zm}" var="a" varStatus="status">
     <c:if test="${not empty a.zm}"> <ff> <a href="/name/zgjm/${a.id}/zm.do">${a.zm}</a></ff></c:if> 
   </c:forEach>



<div style="clear:both"></div> 
<br><br>
分类:
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
  <c:forEach items="${bx}" var="a" varStatus="status">
      <c:if test="${not empty a.biglx}"> <fff><a href="/name/zgjm/${a.id}/bx.do">${a.biglx}篇</a></fff>  </c:if> 
   </c:forEach>
<div style="clear:both"></div> 
<br><br>
详细分类:
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
  <c:forEach items="${sx}" var="a" varStatus="status">
  <c:if test="${not empty a.smalllx}"><fff><a href="/name/zgjm/${a.id}/sx.do">${a.smalllx}</a></fff></c:if> 
   </c:forEach>

<div style="clear:both"></div> 

<div style="line-height:30px;">
周公解梦:
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
《周公解梦》是靠人的梦来卜吉凶的一本于民间流传的解梦书籍，共有七类梦境的解述。
古代周公，说的是周代的爵位，得爵者辅佐周王治理天下。历史上的第一代周公姓姬名旦（约公元前1100年），亦称叔旦，周文王姬昌第四子。因封地在周(今陕西岐山北)，故称周公或周公旦。是西周初期杰出的政治家、军事家和思想家，被尊为儒学奠基人，孔子一生最崇敬的古代圣人之一。历史上有很多周公之说。比较出名的是易经中提到的周公解梦。

</div>







                    </div>

					<div class="col-lg-8">
					<br><br><br>
					
					<h3 style="text-align:center">${dream}</h3>
					
					<hr style="border-top:1px dashed #A9A9A9;margin-bottom:20px;">

				  <c:forEach items="${t}" var="a" varStatus="status">
				 
   <ffff><a href="/name/zgjm/${a.id}.do">${a.title}</a></ffff>
				  
  
 
 
 
 
   </c:forEach>
				

				</div>



<div class="col-lg-2" style="border-left:1px solid #00a0e9;min-height:100%">
	<br>

	<div style="line-height:30px;">
	快速问梦
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
	<input type="text" id="d_title" name="word"  class="form-control"  placeholder="请输如梦的标题"    style="margin-bottom:10px;width:100%;" />
	<input type="text" id="d_word" name="word"  class="form-control"  placeholder="梦中事务如：老公  同学  (多个请用空格分隔)"    style="margin-bottom:10px;width:100%;" />
	<input type="text" id="d_username" name="word"  class="form-control"  placeholder="发布者名称"    style="margin-bottom:10px;width:100%;" />
	<textarea id="d_con" class="form-control" style="min-height:100px;margin-bottom:10px;width:100%;"   placeholder="请输入梦的内容"   name="notice"></textarea>
	<button type="button"   onclick="zgjm()"  class="btn btn-success" style="width:100%;font-size: 10px;">周公解梦</button>
	</div>
<Br>
最新在线解梦问答
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
	
<c:forEach items="${qu}" var="a" varStatus="status">
 <a href="/name/zgjm/q_${a.id}.do">【${status.index+1}】${a.title}</a><Br>
   </c:forEach>
	
</div>
       <div class="clear"></div>                        
                            </div>
 <div class="clear"></div> 
 <%@ include file="/template/name/footer.jsp"%>  

    <!-- 全局js -->
    <script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/template/name/kjs/common.js"></script>
	<script src="/template/name/zgjm/zgjm.js"></script>
</body>

</html>
