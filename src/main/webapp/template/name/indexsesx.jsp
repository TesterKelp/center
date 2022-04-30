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
     <meta name="keywords" content="${c.ckeyword}" />
     <meta name="description" content="${c.cdepict}" />
    <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/name/css/animate.css" rel="stylesheet">
    <link href="/template/name/css/defect.css" rel="stylesheet">
    <link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="/template/name/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    
    <link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
    
    
    <link rel="stylesheet" type="text/css" href="/template/kwz/55/css/blue/index.css"/>
    <link rel="stylesheet" type="text/css" href="/template/kwz/55/css/blue/common.css"/>
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
.ranklist li em{background:url(/template/kwz/6/images/mun.gif) no-repeat;width:20px;height:16px;overflow:hidden;display:block;position:absolute;left:0;top:0;text-align:center;font-style:normal;color:#333;}
.ranklist li em{background-position:0 -16px;}
.ranklist li.top em{background-position:0 0;color:#fff;}
.ranklist li .num{position:absolute;right:0;top:0;color:#999;}
</style>


<%@ include file="/template/name/htmlheader.jsp"%><Br><br>
           
               
                       <div class="ibox-content" style="height: 100%;">


					<div class="col-lg-2">





<div style="width:50%;margin:0 auto;text-align:center;float:left">
<a href="/name/topiccover_73.do" ><img src="/module/name/12/4361.png" style="width:100px;height:100px">子鼠</a>
<a href="/name/topiccover_74.do" ><img src="/module/name/12/4362.png" style="width:100px;height:100px">丑牛</a>
<a href="/name/topiccover_75.do" ><img src="/module/name/12/4363.png" style="width:100px;height:100px">寅虎</a>
<a href="/name/topiccover_76.do" ><img src="/module/name/12/4364.png" style="width:100px;height:100px">卯兔</a>
<a href="/name/topiccover_77.do" ><img src="/module/name/12/4365.png" style="width:100px;height:100px">辰龙</a>
<a href="/name/topiccover_78.do" ><img src="/module/name/12/4366.png" style="width:100px;height:100px">巳蛇</a>
</div>





<div style="width:50%;margin:0 auto;text-align:center;float:left">
<a href="/name/topiccover_79.do" ><img src="/module/name/12/4367.png" style="width:100px;height:100px">午马</a>
<a href="/name/topiccover_80.do" ><img src="/module/name/12/4368.png" style="width:100px;height:100px">未羊</a>
<a href="/name/topiccover_81.do" ><img src="/module/name/12/4369.png" style="width:100px;height:100px">申猴</a>
<a href="/name/topiccover_82.do" ><img src="/module/name/12/43610.png" style="width:100px;height:100px">酉鸡</a>
<a href="/name/topiccover_83.do" ><img src="/module/name/12/43611.png" style="width:100px;height:100px">戌狗</a>
<a href="/name/topiccover_84.do" ><img src="/module/name/12/43612.png" style="width:100px;height:100px">亥猪</a>
</div> 




                    </div>

					<div class="col-lg-8">

					<c:forEach items="${mList}" var="aa" varStatus="sta">
						<c:set var="index" value="1" />
						<div class="H_hospitalNews">
							<h4 class="H_title02">
								<a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}"
									class="more"></a><b>${aa.catename}</b>
							</h4>
							<ul>
								<c:forEach items="${clst}" var="a" varStatus="status">
									<c:if test="${index<11}">
										<c:if test="${aa.catename == a.catename }">

											<li><span>${a.creattime}</span><a
												href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
											<c:set var="index" value="${index+1}" />
										</c:if>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</c:forEach>

				</div>



<div class="col-lg-2">
	<br><br><br><br><br><br><br>
	<a href="/name/sesx.do">生肖计算器</a>
	
	
	
	
</div>
       <div class="clear"></div>                        
                            </div>
 <div class="clear"></div> 
 <%@ include file="/template/name/footer.jsp"%>  

    <!-- 全局js -->
    <script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/kwz/js/content.js?v=1.0.0"></script>
	<script src="/template/kwz/kjs/common.js"></script>
</body>

</html>
