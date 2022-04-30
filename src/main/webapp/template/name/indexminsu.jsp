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

 2020年中国传统节日
<hr>
<div style="width:98% ;line-height:37px;"> 元旦 /2020-01-01    </div>
<div style="width:98% ;line-height:37px;"> 腊八/2020-01-02    </div>
<div style="width:98% ;line-height:37px;"> 小年 /2020-01-17    </div>
<div style="width:98%;line-height:37px;"> 春节 /2020-01-25    </div>
<div style="width:98%;line-height:37px;"> 元宵节 /2020-02-08    </div>
<div style="width:98%;line-height:37px;"> 二月二 /2020-02-24    </div>
<div style="width:98%;line-height:37px;"> 妇女节 /2020-03-08    </div>
<div style="width:98%;line-height:37px;"> 清明节 /2020-04-04    </div>
<div style="width:98%;line-height:37px;"> 寒食节 /2020-04-26    </div>
<div style="width:98%;line-height:37px;"> 劳动节 /2020-05-01    </div>
<div style="width:98%;line-height:37px;"> 青年节 /2020-05-04    </div>
<div style="width:98%;line-height:37px;"> 儿童节 /2020-06-01    </div>
<div style="width:98%;line-height:37px;"> 端午节 /2020-06-25    </div>
<div style="width:98%;line-height:37px;"> 建党节 /2020-07-01    </div>
<div style="width:98%;line-height:37px;"> 建军节 /2020-08-01    </div>
<div style="width:98%;line-height:37px;"> 七夕节 /2020-08-25    </div>
<div style="width:98%;line-height:37px;"> 中元节 /2020-09-02    </div>
<div style="width:98%;line-height:37px;"> 教师节 /2020-09-10    </div>
<div style="width:98%;line-height:37px;"> 中秋节 /2020-10-01    </div>
<div style="width:98%;line-height:37px;"> 国庆日 /2020-10-01    </div>
<div style="width:98%;line-height:37px;"> 重阳节 /2020-10-25    </div>


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

<div style="width:98%;line-height:35px;text-align:right">立春 /02月04日 17:03:12    </div>
<div style="width:98%;line-height:35px;text-align:right">雨水 /02月19日 12:56:53   </div>
<div style="width:98%;line-height:35px;text-align:right">惊蛰 /03月05日 10:56:44    </div>
<div style="width:98%;line-height:35px;text-align:right">春分 /03月20日 11:49:29   </div>
<div style="width:98%;line-height:35px;text-align:right">清明 /04月04日 15:38:02   </div>
<div style="width:98%;line-height:35px;text-align:right">谷雨 /04月19日 22:45:21  </div>
<div style="width:98%;line-height:35px;text-align:right">立夏 /05月05日 08:51:16    </div>
<div style="width:98%;line-height:35px;text-align:right">小满 /05月20日 21:49:09    </div>
<div style="width:98%;line-height:35px;text-align:right">芒种 /06月05日 12:58:18   </div>
<div style="width:98%;line-height:35px;text-align:right">夏至 /06月21日 05:43:33   </div>
<div style="width:98%;line-height:35px;text-align:right">小暑 /07月06日 23:14:20   </div>
<div style="width:98%;line-height:35px;text-align:right">大暑 /07月22日 16:36:44   </div>

<div style="width:98%;line-height:35px;text-align:right">立秋 /08月07日 09:06:03    </div>
<div style="width:98%;line-height:35px;text-align:right">处暑 /08月22日 23:44:48  </div>
<div style="width:98%;line-height:35px;text-align:right">白露 /09月07日 12:07:54    </div>
<div style="width:98%;line-height:35px;text-align:right">秋分 /09月22日 21:30:32   </div>
<div style="width:98%;line-height:35px;text-align:right">寒露 /10月08日 03:55:07  </div>
<div style="width:98%;line-height:35px;text-align:right">霜降 /10月23日 06:59:25 </div>
<div style="width:98%;line-height:35px;text-align:right">立冬 /11月07日 07:13:46    </div>
<div style="width:98%;line-height:35px;text-align:right">小雪 /11月22日 04:39:38   </div>
<div style="width:98%;line-height:35px;text-align:right">大雪 /12月07日 00:09:21  </div>
<div style="width:98%;line-height:35px;text-align:right">冬至 /12月21日 18:02:12  </div>
<div style="width:98%;line-height:35px;text-align:right">小寒 /01月06日 05:29:59   </div>
<div style="width:98%;line-height:35px;text-align:right">大寒 /01月20日 22:54:33  
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
