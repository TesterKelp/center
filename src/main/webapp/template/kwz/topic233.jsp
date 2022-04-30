<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${site.sitename}_${m.item_name}精品专题</title>
 <meta name="Keywords" Content="<c:forEach items="${topicList}" var="a" varStatus="status">${a.topicname},</c:forEach>">
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">

<link href="/template/1200/css/public.rj2018.css" rel="stylesheet" type="text/css" />
<link href="/template/1200/css/news.css" type="text/css" rel="stylesheet">
<link href="/template/1200/css/newsmain.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/template/1200/css/zthj2018.css">



</head>

<body class="gray-bg">
	<%@ include file="/template/kwz/htmlheader.jsp"%>
	<div class="wrapper wrapper-content"></div>
	
	
	<!--  <div class="g-box-1200 g-nav" style="width:100%;"><span></span>当前位置：<a href="/">首页</a> → <a href="/zhuanti/rjhj/">专题合集</a> → 被窝电影网</div> -->
<div class="g-box-1200 g-introd g-main-bg" style="width:100%;margin:0 auto ;text-align:center ;">
<div class="g-introd-img f-fl"><img src="https://pic.qqtn.com/up/2017-5/20175231449502603.jpg" alt="被窝电影网"/></div>
<div class="g-introd-msg f-fl" >
<h4>被窝电影网</h4>
<div><p>被窝电影网app是由被窝电影网官方打造，可以方便广大用户在手机上随时随地都能观看最新电影、电视剧等内容。被窝电影网搜罗全网最新视频资源，在线高清播放、支持迅雷下载、网盘转存播放，方便快捷。看视频，就上被窝电影网。</p><p>被窝电影网是唯一指定的被窝电影网官方网站，为用户提供近千部正版免费在线点播影片，想要观看最流畅的快播电影就到被窝电影网www.beiwo.tv!</p></div>
<p class="g-msg-ico g-fixed"><font id="m-num"></font><span>更新时间：2017-05-23 14:50</span></p>
</div>
</div>
<div class="g-maxli-box g-list-box g-box-1200 m-margin15 g-main-bg" style="width:100% ;margin:0 auto ;text-align:center ;">
<ul>



<!--  
<li data-system="Android" data-id="467000"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/467000.html" target="_blank" title="秋播（被窝电影）v3.2.7 安卓版"><img alt="秋播（被窝电影）v3.2.7 安卓版" src="https://pic.qqtn.com/up/2019-10/20191014949157610.png"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/467000.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/467000.html" target="_blank">下载</a>
<a class="name" href="/azsoft/467000.html" target="_blank">秋播（被窝电影）</a>
<em><img src="/skin/new2018/images/s3.gif"></em>
<p><span class="time ico">2019-10-14</span><span class="size ico">36.0M</span></p>
<p><span class="version ico">v3.2.7 安卓版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>秋播是被窝电影网的官方app。为用户提供上万部西瓜、迅雷电影在线播放下载，还提供BT下载，磁力下载，在线资源搜索播放，致力打造一个最好用的找片看片社区。...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
-->



<c:forEach items="${topicList}" var="a">
					<c:if test="${a.top!=3}">



<li data-system="Android" data-id="467000"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/467000.html" target="_blank" title="${a.topicname}">
<img alt="${a.topicname}" src="${a.topicimage}"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/467000.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/467000.html" target="_blank">学习</a>
<a class="name" href="/azsoft/467000.html" target="_blank">${a.topicname}</a>
<em><img src="/template/1200/images/s3.gif"></em>
<p><span class="time ico">2019-10-14</span><span class="size ico">36.0M</span></p>
<p><span class="version ico">v3.2.7 安卓版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>
<c:if test="${fn:length(a.topicintro)<=100}">${a.topicintro}</c:if>
<c:if test="${fn:length(a.topicintro)>100}">${fn:substring(a.topicintro,0,100)}</c:if>
</p>
 <!-- <p class="platform"><font>版本：</font></p>  -->
</div>
<i class="m-shadow"></i>
</li>







					</c:if>
	</c:forEach>





<li data-system="Android" data-id="248206"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248206.html" target="_blank" title="被窝电影网合集100最新版v1.0 手机版"><img alt="被窝电影网合集100最新版v1.0 手机版" src="https://pic.qqtn.com/up/2017-8/20178111721444898.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248206.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248206.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248206.html" target="_blank">被窝电影网合集100最新版</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-08-11</span><span class="size ico">6.9M</span></p>
<p><span class="version ico">v1.0 手机版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网合集100最新版，这里有你想看的合集内容。海量的视频播放平台就在被窝电影网了，它包含了西瓜播放器和迅雷播放软件的资源，快来看看你喜欢的电视电影吧。...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android, 2.2以上" data-id="104618"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/104618.html" target="_blank" title="被窝电影网手机版官方下载v1.1 安卓版"><img alt="被窝电影网手机版官方下载v1.1 安卓版" src="https://pic.qqtn.com/up/2016-2/2016217143713.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/104618.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/104618.html" target="_blank">下载</a>
<a class="name" href="/azsoft/104618.html" target="_blank">被窝电影网手机版官方下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2016-02-17</span><span class="size ico">6.4M</span></p>
<p><span class="version ico">v1.1 安卓版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网手机版App是由被窝电影网官方打造，可以方便广大用户在手机上随时随地都能观看最新电影、电视剧等内容。被窝电影网搜罗全网最新视频资源，在线高清播放、支持迅雷下载、网盘转存播放，方便快捷。看视频，就...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="248222"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248222.html" target="_blank" title="被窝影院手机版下载v1.0.0 官方版"><img alt="被窝影院手机版下载v1.0.0 官方版" src="https://pic.qqtn.com/up/2019-8/2019861032138136.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248222.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248222.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248222.html" target="_blank">被窝影院手机版下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-08-11</span><span class="size ico">3.6M</span></p>
<p><span class="version ico">v1.0.0 官方版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝影院手机在线观看版，想看国外的大片没有资源吗？到这里来看看。最新更新的权利的游戏第七季给大家提供最新的分享渠道，英文中文的双字幕让你看剧不再成为难题。...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="207745"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/207745.html" target="_blank" title="被窝网高清电影官方app下载v1.0 免费版"><img alt="被窝网高清电影官方app下载v1.0 免费版" src="https://pic.qqtn.com/up/2016-2/2016217143713.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/207745.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/207745.html" target="_blank">下载</a>
<a class="name" href="/azsoft/207745.html" target="_blank">被窝网高清电影官方app下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-05-23</span><span class="size ico">3.4M</span></p>
<p><span class="version ico">v1.0 免费版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网手机版app用手机看视频更畅爽，坐着看躺着看都可以，海量高清电影电视就的你来看，欧美日韩港台一个也不放过，被窝电影网好看！...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="209671"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/209671.html" target="_blank" title="被窝电影网限制破解版下载v1.0 免费版"><img alt="被窝电影网限制破解版下载v1.0 免费版" src="https://pic.qqtn.com/up/2016-2/2016217143713.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/209671.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/209671.html" target="_blank">下载</a>
<a class="name" href="/azsoft/209671.html" target="_blank">被窝电影网限制破解版下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-05-26</span><span class="size ico">3.4M</span></p>
<p><span class="version ico">v1.0 免费版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网限制破解版，小编为您精心挑选，智能破解一切平台限制，所有视频都可以免费观看，特别适合爱看视频的朋友，喜欢就在腾牛网下载吧！...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="248232"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248232.html" target="_blank" title="易售网v3.3 最新版"><img alt="易售网v3.3 最新版" src="https://p.qqan.com/up/2020-7/20207171747324115.png"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248232.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248232.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248232.html" target="_blank">易售网</a>
<em><img src="/skin/new2018/images/s3.gif"></em>
<p><span class="time ico">2020-07-17</span><span class="size ico">20.5M</span></p>
<p><span class="version ico">v3.3 最新版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>易售网app主打资讯服务，同时结合了线上广告宣传功能，易售网app支持智能广告投放，可以将制作好的广告投放到平台上，并且查看每日的收益状况。易售网app为广大用户提供最新的互联网资讯项目，方便用户获取信息，了解...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="248227"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248227.html" target="_blank" title="被窝电影网韩国女生偶像剧资源v1.0 安卓版"><img alt="被窝电影网韩国女生偶像剧资源v1.0 安卓版" src="https://pic.qqtn.com/up/2017-8/20178111735221795.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248227.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248227.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248227.html" target="_blank">被窝电影网韩国女生偶像剧资源</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-08-11</span><span class="size ico">5.4M</span></p>
<p><span class="version ico">v1.0 安卓版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网韩国女生偶像剧资源，更多韩剧的资源在这里可以下载。热门的韩国偶像剧都有存根哦，把你想看的经典都拿出来重新看一遍也是可以的。被窝电影网还有海量的视频福利哦！...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="207733"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/207733.html" target="_blank" title="被窝电影网手机版官方最新下载v1.0 官方版"><img alt="被窝电影网手机版官方最新下载v1.0 官方版" src="https://pic.qqtn.com/up/2016-2/2016217143713.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/207733.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/207733.html" target="_blank">下载</a>
<a class="name" href="/azsoft/207733.html" target="_blank">被窝电影网手机版官方最新下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-05-23</span><span class="size ico">3.4M</span></p>
<p><span class="version ico">v1.0 官方版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网appa安卓版来自于官方推出，同步被窝电影网官网所有视频资源，同时多种下载方式支持迅雷下载、网盘转存播放，方便快捷，被窝电影网手机版随时随地看视频！...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="248220"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248220.html" target="_blank" title="被窝电影网限制官方手机下载v1.0 最新版"><img alt="被窝电影网限制官方手机下载v1.0 最新版" src="https://pic.qqtn.com/up/2017-8/20178111729284192.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248220.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248220.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248220.html" target="_blank">被窝电影网限制官方手机下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-08-11</span><span class="size ico">6.6M</span></p>
<p><span class="version ico">v1.0 最新版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝电影网限制官网手机下载，给类资源提供给爱看剧的用户们。最近不仅电影票房景气，电视剧也有很多经典热门内容在播放，想看高清不限速下载的吗？快速下载，手机随时离线看。...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
<li data-system="Android" data-id="248210"><div class="g-inner">
<i class="max-ico"></i>
<div class="info">
<div class="cell">
<a class="cell-img" href="/azsoft/248210.html" target="_blank" title="被窝影院手机软件下载v1.0 安卓版"><img alt="被窝影院手机软件下载v1.0 安卓版" src="https://pic.qqtn.com/up/2017-8/20178111724131508.jpg"></a>
<p><img src="https://qr.612.com/pic.php?data=https://www.qqtn.com/azsoft/248210.html" alt="扫描二维码到手机下载" /></p>
</div>
<a class="cell-down" href="/azsoft/248210.html" target="_blank">下载</a>
<a class="name" href="/azsoft/248210.html" target="_blank">被窝影院手机软件下载</a>
<em><img src="/skin/new2018/images/s2.gif"></em>
<p><span class="time ico">2017-08-11</span><span class="size ico">6.9M</span></p>
<p><span class="version ico">v1.0 安卓版</span></p>
</div>
<p class="desc"><span>推荐理由：</span>被窝影院手机在线观看软件下载，最近有几部热门的电视剧都在上线播放了，而逆袭之星途璀璨作为一个网剧也是非常火热的。被窝电影网给你最新资源，无广告高清播放哦。...</p>
<p class="platform"><font>版本：</font></p>
</div>
<i class="m-shadow"></i>
</li>
</ul>



<div class="tspage">
<style>
.tspage { font-size:13px; background-color: #f2f2f2; clear:both;  height:25px; overflow:hidden;  line-height:25px; padding:0 5px; text-align:right;}
.tspage i { font-style:normal;}
.tspage a {color:#000; text-decoration:none; padding:0 3px;}
.tspage a:hover { text-decoration:underline;}
.tspage .tsp_count {float:left;}
.tsp_count i { color:#f00;}
.tspage b {color:#f00;}
</style>
<div class="tsp_count">共:<i>1221</i>条 页次:<b>5</b>/51 每页:<i>24</i> </div>
<div class="tsp_nav">
<a href="/key/kpsq/" class="tsp_home"><i>首页</i></a> <a href="/key/kpsq/4/" class="tsp_prev"> <i>上一页</i></a> <a href=" /key/kpsq/ " class="tsp_more"><i>更多</i></a> <a href="/key/kpsq/2/">2</a> <a href="/key/kpsq/3/">3</a> <a href="/key/kpsq/4/">4</a> <b> 5 </b> <a href="/key/kpsq/6/">6</a> <a href=" /key/kpsq/7/ " class="tsp_more"><i>更多</i></a> <a href="/key/kpsq/6/" class="tsp_next"><i>下一页</i> </a> <a href="/key/kpsq/51/" class="tsp_end"><i>尾页</i> </a> <select class="tsp_change" id="tsp_change" onchange="javascript:window.location.href=this.options[this.selectedIndex].value" name="select">
<Script Language="JavaScript">
 var url="/key/kpsq/@{$pages}/@";
 for(var iPage = 1; iPage < 51+1; iPage++)  {
var surl = url.replace("{$pages}",iPage)
    surl = surl.replace("@_1@","")
    surl = surl.replace("@1/@","")
    surl = surl.replace(/\@/g,"")
 document.write ("<option value=\""+surl+"\"");
     if (iPage == 5)
     document.write (" selected");
     else
     document.write ("");
 document.write (">第"+iPage+"页</option>");
 }
 </Script>
</select>
</div>
</div>



















</div>



<div class="g-collection g-box-1200 m-margin15 g-main-bg" style="width:100%;margin:0 auto ;text-align:center ;">
<div class="g-title g-ico g-zt-ico"><h4>精选合集</h4><span><a href="/zhuanti/rjhj/" target="_blank"></a></span></div>
<div class="g-collection-dome">
<b class="g-scroll-left prev">&lt;</b>
<b class="g-scroll-right next">&gt;</b>
<div class="m-dome-scroll" style="width:100%;margin:0 auto ;text-align:center ;margin-left:70px;">
<ul >
<li><a href="/qqkey/fulisha/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020941728202487.jpg"><span>福利鲨</span><em></em></a></li>
<li><a href="/qqkey/qqgxds/" target="_blank"><img src="https://p.qqan.com/up/2020-9/202094154412370.png"><span>qq个性大师</span><em></em></a></li>
<li><a href="/qqkey/cdyb/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020941327538954.jpg"><span>充电有宝</span><em></em></a></li>
<li><a href="/qqkey/xsmao/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020941122196689.JPG"><span>悬赏猫</span><em></em></a></li>
<li><a href="/qqkey/wxhjxpt/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020941047508242.jpg"><span>微星火教学平台</span><em></em></a></li>
<li><a href="/qqkey/xte/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020931829341296.JPG"><span>小摊儿</span><em></em></a></li>
<li><a href="/qqkey/fqdy/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020931729108064.jpg"><span>番茄电影</span><em></em></a></li>
<li><a href="/qqkey/shuimianbao/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020931622142297.jpg"><span>睡眠宝</span><em></em></a></li>
<li><a href="/qqkey/zswk/" target="_blank"><img src="https://p.qqan.com/up/2020-9/20209311767991.jpg"><span>掌上网咖</span><em></em></a></li>
<li><a href="/qqkey/hmhzzs/" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020931026134750.png"><span>花猫画质助手</span><em></em></a></li>
</ul>
    
 </div>   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	<div class="clear"></div>
	
 <%@ include file="/template/kwz/footer.jsp"%> 
	<!-- 全局js -->
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/content.js?v=1.0.0"></script>
	<script>
        $(document).ready(function () {
            $('.contact-box').each(function () {
                animationHover(this, 'pulse');
            });
        });
    </script>

	<script src="/template/kwz/kjs/common.js"></script>
</body>

</html>
