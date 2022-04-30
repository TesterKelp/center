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
.ranklist li em{background:url(/template/kwz/6/images/mun.gif) no-repeat;width:20px;height:16px;overflow:hidden;display:block;position:absolute;left:0;top:0;text-align:center;font-style:normal;color:#333;}
.ranklist li em{background-position:0 -16px;}
.ranklist li.top em{background-position:0 0;color:#fff;}
.ranklist li .num{position:absolute;right:0;top:0;color:#999;}
</style>


<%@ include file="/template/name/htmlheader.jsp"%><Br><br>
           
               
                       <div class="ibox-content" style="height: 100%;">


					<div class="col-lg-2">
请先关注公众号支持我们,谢谢！
<hr>



 <table style="margin-top:10px;">
            <tr>
            <td  width="125px;" style="text-align:center"><img src="/pic/wx/wxszjh.jpg" style="width:120px;height:120px"></td></tr>
               <tr><td style="line-height:25px;"> 公众号名称：  来呀乐一乐<Br>公众号码：laiyaleyile  ;<Br>关注公众号<Br>可以轻松学会五格姓名分析测试。</td></tr>
            </table>





<Br><Br>
<div clear="both"></div>


免费取名
<hr>
 <form target="_blank"  action="/name/NameSearch.do" method="GET" accept-charset="UTF-8" onsubmit="document.charset='utf-8';">
  <table style="margin-top:10px;">
            <tr> 
            <td><input  id="name" name="name"     placeholder="请输入姓氏" type="text" class="text"  style=" width:150px" />  
            <input  type="submit" value="免费起名" class="btn01"  style=" width:150px;margin-top:10px;"  /><br><br>
           1. 输入姓。如：白。<br>2. 输入姓+中间字。如：白居 <br>3. 输入姓+‘x’+尾名。如： 白x易。
            </td></tr>
            </table>
 </form>
 <Br><Br><Br>
 <div clear="both"></div>
 
 
免费测名
<hr>
  <form  target="_blank" action="/name/NameTestResult.do" method="GET" accept-charset="UTF-8" onsubmit="document.charset='utf-8';">
  <table style="margin-top:10px;">
            <tr>
            <td><input id="name" name="name"    placeholder="请输入您的姓名" type="text" class="text"  style=" width:150px" />  
            <input   type="submit" value="姓名测试" class="btn01"  style=" width:150px;margin-top:10px;"   /><br><br>
            </td></tr>
            </table>
  </form>





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



<div class="col-lg-2" style="padding:0px;">
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
