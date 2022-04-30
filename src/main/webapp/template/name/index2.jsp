<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>世间万物之_${m.item_name}_${c.catename}_主页</title>
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


<%@ include file="/template/name/htmlheader.jsp"%><Br><br>
           
                    <div class="row">
                       <div class="ibox-content" style="min-height: 800px;">

					<div class="col-lg-9">

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

<div class="col-lg-3">




	<div class="ranklist" style="margin-top:1px;margin-left:1px">
	<h3>::: 推荐榜 :::</h3>
		<ol style="margin-top:10px">
			<c:set var="index" value="1" />
		<c:forEach items="${clst}" var="a" varStatus="status">
									<c:if test="${index<32}">
										
											<li class="top">
				<em>${index}</em><p><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></p><span class="num">${a.creattime}</span>
			</li>		
											<c:set var="index" value="${index+1}" />
										
									</c:if>
		</c:forEach>
		
		
			
		</ol>
		<div class="clear"></div>
	</div>
	









</div>
                               
                            </div>
                    </div>
             
        
 

	<div class="clear"></div>
<div class="row" > <%@ include file="/template/name/footer.jsp"%>  </div>
    <!-- 全局js -->
    <script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/template/name/kjs/common.js"></script>
</body>

</html>
