<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>新闻信息资讯平台网站模板_青于蓝原创模板_杨青青博客</title>
<meta name="keywords" content="blog" />
<meta name="description" content="blog" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/template/zixun/css/base.css" rel="stylesheet">
<link href="/template/zixun/css/m.css" rel="stylesheet">
<script src="/template/zixun/js/jquery-1.8.3.min.js" ></script>
<script src="/template/zixun/js/comm.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<!-- banner-->
<link rel="stylesheet" href="/template/zixun/css/swiper.min.css">
<script src="/template/zixun/js/swiper.min.js"></script>
<script src="/template/zixun/js/banner.js"></script>
</head>
<body>

<%@ include file="/template/zixun/htmlheader.jsp"%>



<article> 
  <!-- banner begin-->
  <div class="banner">
    <div class="swiper-container">
      <div class="swiper-wrapper">
				<c:forEach items="${clst}" var="a" varStatus="status" begin="88" end="96" step="1">
					<c:if test="${not empty a.picaddress }">
						<div class="swiper-slide">
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><img src="${a.picaddress}" alt=""><span>${a.articletitle}</span></a>
						</div>
					</c:if>
				</c:forEach>


			</div>
      <div class="swiper-pagination"></div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
  </div>
  <!-- banner end-->
  <div class="news_box_r">
    <h2 class="news_t">即时新闻</h2>
    <ul class="news_part01">
   
     <c:forEach items="${clst}" var="a" varStatus="status"  begin="1" end="8" step="1">
 <li><a href="/${a.item_directorie}/${a.catedirectory}/list.do" target="_blank" title="" class="news_lm">${a.catename}</a>
 <a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>

 </c:forEach>
    
    </ul>
  </div>
  <div class="clearblank"></div>
  <div class="flbox">
    <div class="news_box">
      <h2 class="news_t"><a href="/" target="_blank" title="">焦点新闻</a></h2>
      <ul class="news_part02_pic">
      	<c:forEach items="${clst}" var="a" varStatus="status" begin="20"
					end="21" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><img src="${a.picaddress}" alt=""><span>${a.articletitle}</span></a>
						</li>
					</c:if>
				</c:forEach>
     
     
      </ul>
      <ul class="news_part02">
      
      <c:forEach items="${clst}" var="a" varStatus="status"  begin="1" end="11" step="1">
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>
 

      </ul>
    </div>
    <div class="news_box">
      <h2 class="news_t"><a href="/" target="_blank" title="">焦点新闻</a></h2>
      <ul class="news_part02_pic">
       
     	<c:forEach items="${clst}" var="a" varStatus="status" begin="1"
					end="4" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><img src="${a.picaddress}" alt=""><span>${a.articletitle}</span></a>
						</li>
					</c:if>
				</c:forEach>
     
     
      </ul>
      <ul class="news_part02">
       <c:forEach items="${clst}" var="a" varStatus="status"  begin="12" end="24" step="1">
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>

      </ul>
    </div>
    <div class="news_box">
      <h2 class="news_t"><a href="/" target="_blank" title="">焦点新闻</a></h2>
      <ul class="news_part02_pic">
              	<c:forEach items="${clst}" var="a" varStatus="status" begin="30"
					end="31" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><img src="${a.picaddress}" alt=""><span>${a.articletitle}</span></a>
						</li>
					</c:if>
				</c:forEach>
      </ul>
      <ul class="news_part02">
<c:forEach items="${clst}" var="a" varStatus="status"  begin="25" end="37" step="1">
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>
      </ul>
    </div>
    <div class="news_box">
      <h2 class="news_t"><a href="/" target="_blank" title="">焦点新闻</a></h2>
      <ul class="news_part02_pic">
       <c:forEach items="${clst}" var="a" varStatus="status" begin="40"
					end="41" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><img src="${a.picaddress}" alt=""><span>${a.articletitle}</span></a>
						</li>
					</c:if>
				</c:forEach>
      </ul>
      <ul class="news_part02">
     <c:forEach items="${clst}" var="a" varStatus="status"  begin="38" end="49" step="1">
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>
      </ul>
    </div>
  </div>
  <div class="frbox">
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part03">
       <!--  <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/b01.jpg" alt=""></i>
          <p>当疫情过后，远程办公命运几何？</p>
          </a></li>
        <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/b02.jpg" alt=""></i>
          <p> 创业公司们开工首日，状态各异</p>
          </a></li>
        <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/b03.jpg" alt=""></i>
          <p> 市值猛涨 特斯拉股价坐上火箭</p>
          </a></li>
        <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/b04.jpg" alt=""></i>
          <p>美司法部对苹果展开反垄断调查</p>
          </a></li>--> 
          
          
          <c:forEach items="${clst}" var="a" varStatus="status" begin="50"
					end="53" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><i><img src="${a.picaddress}" alt=""></i><p>${a.articletitle}</p></a>
						</li>
					</c:if>
				</c:forEach>
          
          
      </ul>
    </section>
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part04">


			<c:forEach items="${clst}" var="a" varStatus="status" begin="90"
				end="90" step="1">
				<c:if test="${not empty a.picaddress }">
					<li><a target="_blank"
						href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
						target="_blank" title=""><i><img src="${a.picaddress}"
								alt=""></i>
						<p>${a.articletitle}</p></a></li>
				</c:if>
			</c:forEach>



			<c:forEach items="${clst}" var="a" varStatus="status"  begin="79" end="87" step="1">
 
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>
        
        
      </ul>
    </section>
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part05">
       
       <!--  <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part501.jpg" alt=""></i>
          <p>第一现场：上海一阿姨手戴9枚戒指卡住7个消防员奋战2小时“解救”</p>
          </a></li>
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part502.jpg" alt=""></i>
          <p>湖北蕲春：关注南方汛情——暴雨致河水突涨 消防..</p>
          </a></li>
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part503.jpg" alt=""></i>
          <p>广西融水：强降雨致多地发生洪涝灾害——洪峰昨..</p>
          </a></li>
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part504.jpg" alt=""></i>
          <p>江西：强降雨致多地发生洪涝灾害——河床升高2米..</p>
          </a></li>
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part505.jpg" alt=""></i>
          <p>超暖心！看老师给学生的新年祝福｜这就是老师</p>
          </a></li>
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part506.jpg" alt=""></i>
          <p>第一现场：上海一阿姨手戴9枚戒指卡住7个消防员奋战2小时“解救”</p>
          </a></li>
           -->
          
          
              <c:forEach items="${clst}" var="a" varStatus="status" begin="60"
					end="65" step="1">
					<c:if test="${not empty a.picaddress }">
						<li>
							<a target="_blank"
								href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
								target="_blank" title=""><i><img src="${a.picaddress}" alt=""></i><p>${a.articletitle}</p></a>
						</li>
					</c:if>
				</c:forEach>
          
          
          
          
          
          
      </ul>
    </section>
    <section>
      <h2 class="news_t">热门新闻</h2>
      <ul class="news_part06">

        
         <c:forEach items="${clst}" var="a" varStatus="status"  begin="69" end="78" step="1">
 
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title="">${a.articletitle}</a></li>
 </c:forEach>
        
      </ul>
    </section>
  </div>
  <div class="clear"></div>
  <div class="news_box_list">
    <h2 class="news_t">即时新闻</h2>
    <ul>
    
    
    <c:forEach items="${clst}" var="a" varStatus="status"  begin="50" end="59" step="1">
 
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title=""><span>${a.creattime}</span>${a.articletitle}</a></li>
 </c:forEach>
    
      
      
    </ul>
    <ul>

       <c:forEach items="${clst}" var="a" varStatus="status"  begin="60" end="69" step="1">
 
 <li><a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" title=""><span>${a.creattime}</span>${a.articletitle}</a></li>
 </c:forEach>
      
    </ul>
  </div>
  <div class="clearblank"></div>
  <div class="links">
    <ul>
      <li><a href="https://www.yangqq.com/" target="_blank">杨青青个人博客</a></li>
      <li><a href="https://www.ga163.com/" target="_blank">SEO顾问</a></li>
      <li><a href="https://www.luohaibin.com/" target="_blank">网络营销</a></li>
      <li><a href="http://www.2zzt.com/" target="_blank">wordpress主题</a></li>
      <li><a href="https://www.nanpua.com/" target="_blank">泡学网</a></li>
      <li><a href="https://www.dingdabao.com/" target="_blank">丁大宝个人博客</a></li>
      <li><a href="https://www.wenyuanblog.com/" target="_blank">闻鸢博客</a></li>
    </ul>
  </div>
</article>
<footer>
  <p>Copyright © 2019-2020 Yangqq.com, All Rights Reserved.</p>
  <p>版权所有：<a href="https://www.yangqq.com/" target="_blank">杨青青个人博客</a> 技术支持：<a href="https://www.yangqq.com/" target="_blank">天津青于蓝科技有限公司</a> <a href="/" target="_blank">XML网站地图</a> <a href="/" target="_blank">百度统计</a> </p>
  <p>备案号：<a href="/" target="_blank">津ICP备19004899</a> <img src="images/ga.png">公安备案号 12011602000311</p>
</footer>
<a href="#" title="返回顶部" class="icon-top"></a>
</body>
</html>
