<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="applicable-device" content="pc">
<title>QQ技术-微信技术-QQ新闻中心-腾牛网资讯专区</title>
<meta name="Keywords" content="QQ技术乐园,QQ最新活动,QQ新闻中心">
<meta name="description" content="腾牛网打造最全面的QQ资讯专区,提供了QQ最新活动,QQ技术教程,微信使用技巧,QQ游戏攻略,手机/电脑软件教程,还有一系列的QQ空间图片,QQ头像,QQ签名,QQ网名,QQ表情素材,在这里有你所需要的任何QQ资料,助你成为最时尚的QQ达人.">
<meta http-equiv="Cache-Control" content="no-transform" /><meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="canonical" href="https://www.qqtn.com/default_Cms.html">
<link href="/template/1200/css/news.css" type="text/css" rel="stylesheet">
<link href="/template/1200/css/newsindex.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="/inc/mredirect.js"></script>
<script src="/skin/library/js/jqbs.min.js"></script>
<script src="/skin/new2017/js/news.js"></script>
<script>var Page = "newsindex"</script>
<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
</head>
<body>
<!-- 
<div class="g-top-full">
<div class="g-box-1200">
<p class="f-fl">实用的软件测试文章站点!</p>
<p class="f-fr">

<auto:PortalMenu> </auto:PortalMenu>
</p>
</div>
</div>
<div class="g-nav-full">
<div class="g-box-1200">
<a href="/" class="u-logo f-fl"><img src="/template/1200/images/logo.png" alt="腾牛网-实用的免费软件下载-安全的QQ软件下载站"></a>
<ul class="m-nav f-fl">
<li><a href="/default_Cms.html" target="_blank">腾牛资讯</a></li>
<li><a href="/cmslist/r_2_1.html" target="_blank">腾讯动态</a></li>
<li><a href="/cmslist/r_3_1.html" target="_blank">腾讯技术</a></li>
<li><a href="/cmslist/r_26_1.html" target="_blank">手游攻略</a></li>
<li><a href="/cmslist/r_32_1.html" target="_blank">软件教程</a></li>
</ul>
<div class="m-qqtnsou-jk f-fr" id="form_top">
<div id="topqqsou">
<input type="text" class="keyword_input u-search-input " id="keyword" name="q" placeholder="请输入你要搜索的内容">
<a href="javascript:;" class="schbtn u-search-btn">搜索</a>
</div>
</div>
</div>
</div>
 -->




<%@ include file="/template/1200/header.jsp"%>





<dl class="g-box-1200 clearfix f-dlfl g-newstop">
<dt>
<h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl"><i class="m-newsico f-fl"></i>小编推荐</span><span class="f-fr"></span></h4>
<ul class="f-lifl clearfix m-tjimg">

<c:set var="k" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${k<7}">
<li><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank"><img src="${a.picaddress}" alt="${a.articletitle}"><p>${a.articletitle}</p> </a></li>
<c:set var="k" value="${k+1}" />
</c:if>
</c:forEach>


<!-- 
<li><a href="/article/article_302380_1.html" title="原神多少级可以联机 联机机制详解" target="_blank"><img src="https://p.qqan.com/up/2020-9/2020916950194584.jpg" alt="原神多少级可以联机 联机机制详解"><p>原神多少级可以联机 联机机制详解</p></a> </li>
<li><a href="/article/article_299407_1.html" title="优酷号是什么 优酷号怎么入驻" target="_blank"><img src="https://p.qqan.com/up/2020-7/20207211531532366.png" alt="优酷号是什么 优酷号怎么入驻"><p>优酷号是什么 优酷号怎么入驻</p></a> </li>
<li><a href="/article/article_299331_1.html" title="醒图贴纸在哪 醒图app贴纸怎么用" target="_blank"><img src="https://p.qqan.com/up/2020-7/2020720160465945.png" alt="醒图贴纸在哪 醒图app贴纸怎么用"><p>醒图贴纸在哪 醒图app贴纸怎么用</p></a> </li>
<li><a href="/article/article_299164_1.html" title="网易云音乐一起听歌能听到对方说话吗 网易云音乐一起听歌怎么语音" target="_blank"><img src="https://p.qqan.com/up/2020-7/20207161716173076.png" alt="网易云音乐一起听歌能听到对方说话吗 网易云音乐一起听歌怎么语音"><p>网易云音乐一起听歌能听到对方说话吗 网易云音乐一起听歌怎么语音</p></a> </li>
<li><a href="/article/article_299010_1.html" title="朋友圈我派直升机接你怎么玩 朋友圈直升机图文教程" target="_blank"><img src="https://p.qqan.com/up/2020-7/20207142042233574.gif" alt="朋友圈我派直升机接你怎么玩 朋友圈直升机图文教程"><p>朋友圈我派直升机接你怎么玩 朋友圈直升机图文教程</p></a> </li>
<li><a href="/article/article_298653_1.html" title="2020支付宝怎么查高考成绩 支付宝高考分数查询方法" target="_blank"><img src="https://p.qqan.com/up/2020-7/2020791141432836.png" alt="2020支付宝怎么查高考成绩 支付宝高考分数查询方法"><p>2020支付宝怎么查高考成绩 支付宝高考分数查询方法</p></a> </li>
 -->
</ul>
</dt>
<dd class="m-newtopc">
<h2>


<c:set var="ku" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${ku<2}"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></h2>
<div class="m-h2info"><p>${a.articleitd}</p></div>
<c:set var="ku" value="${ku+1}" />
</c:if>
</c:forEach>

<ul class="m-newtopsul">
<!--  
<li><span class="f-fr">11-01</span><span class="f-fl"></span><a href="/article/article_304467_1.html" title="万国觉醒敌人位置怎么找 万国觉醒仇敌位置" target="_blank">万国觉醒敌人位置怎么找 万国觉醒仇敌位置</a></li>
<li><span class="f-fr">11-01</span><span class="f-fl"></span><a href="/article/article_304466_1.html" title="魔渊之刃困难30层boss攻略 魔渊之刃困难30层boss打法" target="_blank">魔渊之刃困难30层boss攻略 魔渊之刃困难30层boss打法</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304443_1.html" title="万国觉醒统帅经验值攻略 万国觉醒统帅经验怎么刷" target="_blank">万国觉醒统帅经验值攻略 万国觉醒统帅经验怎么刷</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304442_1.html" title="部落与弯刀怎么招募队友 部落与弯刀队友招募方法" target="_blank">部落与弯刀怎么招募队友 部落与弯刀队友招募方法</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304441_1.html" title="万国觉醒紫头怎么刷 万国觉醒紫头获取方式" target="_blank">万国觉醒紫头怎么刷 万国觉醒紫头获取方式</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304439_1.html" title="王者荣耀五处异常位置 王者荣耀五处异常怎么找" target="_blank">王者荣耀五处异常位置 王者荣耀五处异常怎么找</a></li>
-->
<c:set var="x" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${x<7}">
<li><span class="f-fr">11-01</span><span class="f-fl"></span><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></li>
<c:set var="x" value="${x+1}" />
</c:if>
</c:forEach>



</ul>
<ul class="m-newtopsul">
<!--  
<li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304440_1.html" title="古代人生游戏怎么当将军 古代人生游戏将军职业有吗" target="_blank">古代人生游戏怎么当将军 古代人生游戏将军职业有吗</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304438_1.html" title="动物派对怎么丢武器 动物派对丢东西方法" target="_blank">动物派对怎么丢武器 动物派对丢东西方法</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304436_1.html" title="万国觉醒曹操雕像获取方法 万国觉醒曹操雕像获取攻略" target="_blank">万国觉醒曹操雕像获取方法 万国觉醒曹操雕像获取攻略</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304437_1.html" title="最强蜗牛宠物小屋怎么解锁 最强蜗牛宠物小屋开启方法" target="_blank">最强蜗牛宠物小屋怎么解锁 最强蜗牛宠物小屋开启方法</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304434_1.html" title="部落与弯刀狼牙获取方式 部落与弯刀狼牙怎么获取" target="_blank">部落与弯刀狼牙获取方式 部落与弯刀狼牙怎么获取</a></li><li><span class="f-fr">10-30</span><span class="f-fl"></span><a href="/article/article_304435_1.html" title="原神莲蓬怎么获得 原神莲蓬去哪里买" target="_blank">原神莲蓬怎么获得 原神莲蓬去哪里买</a></li>
-->
<c:set var="v" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${v<7}">
<li><span class="f-fr">11-01</span><span class="f-fl"></span><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></li>
<c:set var="v" value="${v+1}" />
</c:if>
</c:forEach>


</ul>
</dd>
<dd class="m-newtopr">
<h4 class="m-tith4 m-jkzs clearfix"><span class="f-fl"><i class="m-newsico f-fl"></i>人气排行</span></h4>
<div class="m-jkzsdiv">
<ul class="m-jkzsul f-top f-top3">



<c:set var="v" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${v<10}">
<li><p class="m-titbt">
<a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></p>
<div class="m-js clearfix"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" class="f-fl">
<img src="${a.picaddress}" alt="${a.articletitle}"></a>
<p>${a.articleitd}</p></div><b></b></li>

<c:set var="v" value="${v+1}" />
</c:if>
</c:forEach>



<!-- 
<li><p class="m-titbt"><a href="/article/article_276175_1.html" title="腾讯健康系统实名认证怎么修改 QQ健康系统实名认证信息更改流程" target="_blank">腾讯健康系统实名认证怎么修改 QQ健康系统实名认证信息更改流程</a></p><div class="m-js clearfix"><a href="/article/article_276175_1.html" title="腾讯健康系统实名认证怎么修改 QQ健康系统实名认证信息更改流程" class="f-fl"><img src="https://p.qqan.com/up/2019-3/2019312161917244.jpg" alt="腾讯健康系统实名认证怎么修改 QQ健康系统实名认证信息更改流程"></a><p>腾讯健康系统实名认证是之前推出防沉迷的一个功能，当你陷入游戏的时长超过后，会被迫下线，如果你当初进行了实名认证，现在想要修改的话，机会来了！一起来看看本站提供的腾讯健康系统实名认证如何修改流程，注意仅..</p></div><b></b></li><li><p class="m-titbt"><a href="/article/article_230301_1.html" title="长生劫5000钻领取码分享 长生劫5000钻兑换码领取地址" target="_blank">长生劫5000钻领取码分享 长生劫5000钻兑换码领取地址</a></p><div class="m-js clearfix"><a href="/article/article_230301_1.html" title="长生劫5000钻领取码分享 长生劫5000钻兑换码领取地址" class="f-fl"><img src="https://p.qqan.com/up/2018-1/201813934592055.jpg" alt="长生劫5000钻领取码分享 长生劫5000钻兑换码领取地址"></a><p>长生劫5000钻领取码在哪领取，长生劫5000钻领取码是长生劫手游提供的兑换码，很多人都想获取一个5000钻石的领取码，毕竟有了这些钻石，什么都能买了。下面小编就提供给大家几个长生劫5000钻领取码，数量不多，手慢则..</p></div><b></b></li><li><p class="m-titbt"><a href="/article/article_274362_1.html" title="明日之后能不能换区 明日之后手游渠道服怎么转换成网易官方服" target="_blank">明日之后能不能换区 明日之后手游渠道服怎么转换成网易官方服</a></p><div class="m-js clearfix"><a href="/article/article_274362_1.html" title="明日之后能不能换区 明日之后手游渠道服怎么转换成网易官方服" class="f-fl"><img src="https://p.qqan.com/up/2018-11/2018116172369050.jpg" alt="明日之后能不能换区 明日之后手游渠道服怎么转换成网易官方服"></a><p>明日之后手游是网易官方打造的末日生存类游戏，这款游戏官方服务器安卓与IOS是互通的，那么有很多小伙伴对这些并不是特别的了解，就在自己的手机应用商店里下载了其他的渠道服安装包，那么明日之后手游渠道服怎么转换..</p></div><b></b></li><li><p class="m-titbt"><a href="/article/article_267303_1.html" title="血族好感度喜好列表 血族好感培养攻略" target="_blank">血族好感度喜好列表 血族好感培养攻略</a></p><div class="m-js clearfix"><a href="/article/article_267303_1.html" title="血族好感度喜好列表 血族好感培养攻略" class="f-fl"><img src="https://p.qqan.com/up/2018-7/20187201835417421.jpg" alt="血族好感度喜好列表 血族好感培养攻略"></a><p>血族好感度怎么提高？血族是一款吸血鬼题材的卡牌游戏，不同于其他卡牌游戏，这里的卡牌是可以培养好感度的，下面小编就告诉大家血族好感度怎么培养。..</p></div><b></b></li><li><p class="m-titbt"><a href="/article/article_227939_1.html" title="坦克世界闪击战礼包兑换码领取地址 坦克世界闪击战礼包激活码免费分享" target="_blank">坦克世界闪击战礼包兑换码领取地址 坦克世界闪击战礼包激活码免费分享</a></p><div class="m-js clearfix"><a href="/article/article_227939_1.html" title="坦克世界闪击战礼包兑换码领取地址 坦克世界闪击战礼包激活码免费分享" class="f-fl"><img src="https://p.qqan.com/up/2017-12/2017122510310896.jpg" alt="坦克世界闪击战礼包兑换码领取地址 坦克世界闪击战礼包激活码免费分享"></a><p>坦克世界闪击战礼包兑换码在哪领取，坦克世界闪击战礼包兑换码有吗？玩游戏礼包肯定是少不了的，怎么才能获得坦克世界闪击战中的礼包呢？不知道的玩家不妨看看本文提供的坦克世界闪击战礼包获取方法，教你轻松获取游..</p></div><b></b></li>
 -->

</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
<div class="m-hdbox flash oh re">
<div class="flashbox oh">
<ul></li><li> <a href="/article/article_265956_1.html" title="封神纪元礼包兑换码领取地址 封神纪元cdk激活码分享" target="_blank"><img src="https://p.qqan.com/up/2018-7/20187131720436343.jpg" alt="封神纪元礼包兑换码领取地址 封神纪元cdk激活码分享" /><em></em><strong>封神纪元礼包兑换码领取地址 封神纪元cdk激活码分享</strong></a></li><li> <a href="/article/article_201892_1.html" title="口袋妖怪单机版最新最全合成表一览 口袋妖怪单机版手游合成配方" target="_blank"><img src="https://p.qqan.com/up/2017-9/20179151052171902.jpg" alt="口袋妖怪单机版最新最全合成表一览 口袋妖怪单机版手游合成配方" /><em></em><strong>口袋妖怪单机版最新最全合成表一览 口袋妖怪单机版手游合成配方</strong></a></li>
</ul>
</div>
<div class="flashpoint"><i class="on"></i><i></i></div>
</div>
</dd>
</dl>

<!-- 
<div class="g-box-1200 g-gexing">
<h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl"><i class="m-newsico f-fl"></i>每日精选个性</span><span class="f-fr m-jxgexspan"><a href="/qm/" target="_blank">个性签名</a><a href="/wm/" target="_blank">个性网名</a><a href="/tx/" target="_blank">个性头像</a><a href="/tp/" target="_blank">个性图片</a><a href="/ss/" target="_blank">个性说说</a><a href="/bq/" target="_blank">个性表情</a><a href="/pf/" target="_blank">个性皮肤</a></span></h4>
<div class="m-gximg">
<div class="g-usgame-content">
<ul class="clearfix f-lifl">
<li><a href="/article/article_304329_1.html" title="2020十一月暖心治愈的微信签名 十月的尾巴期许将至的十一月" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010291031147690.png" alt="2020十一月暖心治愈的微信签名 十月的尾巴期许将至的十一月">2020十一月暖心治愈的微信签名 十月的尾巴期许将至的十一月</a></li><li><a href="/article/article_304326_1.html" title="双十一光棍节单身狗有趣签名 今年又得一个人过光棍节签名" target="_blank"><img src="https://p.qqan.com/up/2020-10/2020102910934429.png" alt="双十一光棍节单身狗有趣签名 今年又得一个人过光棍节签名">双十一光棍节单身狗有趣签名 今年又得一个人过光棍节签名</a></li><li><a href="/article/article_304278_1.html" title="最新优质的海贼王高清卡通头像  一个人是快活两个人是折磨" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010281414254556.jpg" alt="最新优质的海贼王高清卡通头像  一个人是快活两个人是折磨">最新优质的海贼王高清卡通头像 一个人是快活两个人是折磨</a></li><li><a href="/article/article_304273_1.html" title="2020最难忘的动画经典网名 100秒重温经典动画片" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201028114128805.png" alt="2020最难忘的动画经典网名 100秒重温经典动画片">2020最难忘的动画经典网名 100秒重温经典动画片</a></li><li><a href="/article/article_304269_1.html" title="2021很有梗的沙雕创意搞笑网名 2021最火笑死人的有趣网名" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010281054384843.png" alt="2021很有梗的沙雕创意搞笑网名 2021最火笑死人的有趣网名">2021很有梗的沙雕创意搞笑网名 2021最火笑死人的有趣网名</a></li><li><a href="/article/article_304266_1.html" title="一眼让人记住的七字不易撞网名 乱云飞渡仍从容" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010281028286084.png" alt="一眼让人记住的七字不易撞网名 乱云飞渡仍从容">一眼让人记住的七字不易撞网名 乱云飞渡仍从容</a></li><li><a href="/article/article_304263_1.html" title="异地恋情侣等待的思恋可发说说的签名 爱情思念就是这么奇妙的东西" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201028107207968.png" alt="异地恋情侣等待的思恋可发说说的签名 爱情思念就是这么奇妙的东西">异地恋情侣等待的思恋可发说说的签名 爱情思念就是这么奇妙的东西</a></li><li><a href="/article/article_304260_1.html" title="对现实的生活感到无奈的签名句子 不想面对现实的无奈签名" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201028947533778.png" alt="对现实的生活感到无奈的签名句子 不想面对现实的无奈签名">对现实的生活感到无奈的签名句子 不想面对现实的无奈签名</a></li><li><a href="/article/article_304258_1.html" title="火遍全网的帅气男生网络签名 愿你安好我不打扰" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201028950524240.png" alt="火遍全网的帅气男生网络签名 愿你安好我不打扰">火遍全网的帅气男生网络签名 愿你安好我不打扰</a></li><li><a href="/article/article_304186_1.html" title="追星女孩专属EXO原创好听签名 最帅的EXO追星者" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201027934365386.png" alt="追星女孩专属EXO原创好听签名 最帅的EXO追星者">追星女孩专属EXO原创好听签名 最帅的EXO追星者</a></li><li><a href="/article/article_304057_1.html" title="高冷简短的内涵一字网名  简短又霸气的网名" target="_blank"><img src="https://p.qqan.com/up/2020-10/2020102311654487.png" alt="高冷简短的内涵一字网名  简短又霸气的网名">高冷简短的内涵一字网名 简短又霸气的网名</a></li><li><a href="/article/article_304054_1.html" title="2021最潮流的网络流行签名 2021流行文化人签名" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010231047355108.png" alt="2021最潮流的网络流行签名 2021流行文化人签名">2021最潮流的网络流行签名 2021流行文化人签名</a></li><li><a href="/article/article_304051_1.html" title="简短的致自己生日签名 生日致自己的签名2020" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010231039534031.png" alt="简短的致自己生日签名 生日致自己的签名2020">简短的致自己生日签名 生日致自己的签名2020</a></li><li><a href="/article/article_304050_1.html" title="60句超虐心的古诗词签名 虐心凄美爱情古诗签名" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010231031357785.png" alt="60句超虐心的古诗词签名 虐心凄美爱情古诗签名">60句超虐心的古诗词签名 虐心凄美爱情古诗签名</a></li><li><a href="/article/article_303988_1.html" title="2021最热lol英雄联盟头像 我崇拜他像个英雄" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010221046117583.jpg" alt="2021最热lol英雄联盟头像 我崇拜他像个英雄">2021最热lol英雄联盟头像 我崇拜他像个英雄</a></li><li><a href="/article/article_303985_1.html" title="元气满满的闺精选网名 2020闺蜜二人霸气网名" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010221028488325.png" alt="元气满满的闺精选网名 2020闺蜜二人霸气网名">元气满满的闺精选网名 2020闺蜜二人霸气网名</a></li><li><a href="/article/article_303983_1.html" title="成熟有韵味的高雅网名 高冷成熟深度网名" target="_blank"><img src="https://p.qqan.com/up/2020-10/202010221016592989.png" alt="成熟有韵味的高雅网名 高冷成熟深度网名">成熟有韵味的高雅网名 高冷成熟深度网名</a></li><li><a href="/article/article_303982_1.html" title="孤独已久的单身狗网名 双十一前早日脱单" target="_blank"><img src="https://p.qqan.com/up/2020-10/20201022105126152.png" alt="孤独已久的单身狗网名 双十一前早日脱单">孤独已久的单身狗网名 双十一前早日脱单</a></li>
</ul>
</div>
<b class="m-prev-page m-newsico m-hover" date-click="0"></b>
<b class="m-next-page m-newsico" date-click="2"></b>
 -->

</div>
</div>

<c:forEach items="${menuList}" var="aa" varStatus="sta">
<c:if test="${aa.listtemplate != 'index'}">

						<c:set var="index" value="1" />
<dl class="g-box-1200 g-news clearfix">
<dd class="f-fl"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">${aa.catename}</span><span class="f-fr"><a href="/${item}/${aa.catedirectory}/list_1.${kuo}" target="_blank">更多+</a></span></h4>
<div class="m-divimg">
<ul class="f-lifl clearfix">
<c:set var="r" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${r<5}">
<c:if test="${aa.catename == a.catename }">
<li class="f-tw"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank"><img src="${a.picaddress}" alt="${a.articletitle}"><p><span>${a.articletitle}</span></p> </a></li>
<c:set var="r" value="${r+1}" />
</c:if>
</c:if>
</c:forEach>



</ul>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<!--  
<li><span class="f-fr">09-21</span><p class="m-titbt"><a href="/article/article_302643_1.html" title="企业微信海外版更名叫什么 WeCom和WeChat是一样吗" target="_blank">企业微信海外版更名叫什么 WeCom和WeChat是一样吗</a></p><b></b></li>
<li><span class="f-fr">07-20</span><p class="m-titbt"><a href="/article/article_299313_1.html" title="QQ邮箱订阅、订阅中心及阅读动态将下线 QQ邮箱下线邮件订阅等原因" target="_blank">QQ邮箱订阅、订阅中心及阅读动态将下线 QQ邮箱下线邮件订阅等原因</a></p><b></b></li>
<li><span class="f-fr">07-15</span><p class="m-titbt"><a href="/article/article_299047_1.html" title="qq冻结怎么回事 qq号被冻结原因有哪些" target="_blank">qq冻结怎么回事 qq号被冻结原因有哪些</a></p><b></b></li>
<li><span class="f-fr">07-01</span><p class="m-titbt"><a href="/article/article_298180_1.html" title="2020微信转账新规 微信新规利与弊" target="_blank">2020微信转账新规 微信新规利与弊</a></p><b></b></li>
-->
<c:set var="rr" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${rr<5}">
<c:if test="${aa.catename == a.catename }">
<li><span class="f-fr">09-21</span><p class="m-titbt"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></p><b></b></li>
<c:set var="rr" value="${rr+1}" />
</c:if>
</c:if>
</c:forEach>


</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<!-- <li><span class="f-fr">06-10</span><p class="m-titbt"><a href="/article/article_296918_1.html" title="qq群橱窗是什么 qq群橱窗有什么用" target="_blank">qq群橱窗是什么 qq群橱窗有什么用</a></p><b></b></li>
<li><span class="f-fr">06-10</span><p class="m-titbt"><a href="/article/article_296915_1.html" title="qq惠购是什么 qq惠购怎么样" target="_blank">qq惠购是什么 qq惠购怎么样</a></p><b></b></li>
<li><span class="f-fr">06-05</span><p class="m-titbt"><a href="/article/article_296603_1.html" title="微信号设置有什么格式要求 修改微信号好友会收到提醒吗" target="_blank">微信号设置有什么格式要求 修改微信号好友会收到提醒吗</a></p><b></b></li>
<li><span class="f-fr">04-26</span><p class="m-titbt"><a href="/article/article_294306_1.html" title="微信7.0.14安卓版更新了什么 微信7.0.14新功能一览" target="_blank">微信7.0.14安卓版更新了什么 微信7.0.14新功能一览</a></p><b></b></li>
 -->

<c:set var="pp" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${pp<5}">
<c:if test="${aa.catename == a.catename }">
<li><span class="f-fr">09-21</span><p class="m-titbt"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></p><b></b></li>
<c:set var="pp" value="${pp+1}" />
</c:if>
</c:if>

</c:forEach>

</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
</dd>
<dt class="f-fr"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">更多推荐</span><span class="f-fr"><a href="/${item}/${aa.catedirectory}/list_1.${kuo}" target="_blank">更多+</a></span></h4>
<ul class="m-newtopsul m-ul2">

<c:set var="ppp" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${ppp<10}">
<c:if test="${aa.catename == a.catename }">
<li><span class="f-fl"></span><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></li>
<c:set var="ppp" value="${ppp+1}" />
</c:if>
</c:if>
</c:forEach>
<!-- 
<li><span class="f-fl"></span><a href="/article/article_289039_1.html" title="qq鼓力全开怎么玩 qq鼓力全开活动入口" target="_blank">qq鼓力全开怎么玩 qq鼓力全开活动入口</a></li>
<li><span class="f-fl"></span><a href="/article/article_287981_1.html" title="2020朋友圈默契大考验怎么玩 微信2020缘分测试入口" target="_blank">2020朋友圈默契大考验怎么玩 微信2020缘分测试入口</a></li>
<li><span class="f-fl"></span><a href="/article/article_287723_1.html" title="企业微信客户朋友圈是什么 微信客户朋友圈有什么用" target="_blank">企业微信客户朋友圈是什么 微信客户朋友圈有什么用</a></li><li><span class="f-fl"></span><a href="/article/article_283140_1.html" title="王卡送50个月腾讯会员怎么领 腾讯王卡腾讯vip领取入口地址" target="_blank">王卡送50个月腾讯会员怎么领 腾讯王卡腾讯vip领取入口地址</a></li><li><span class="f-fl"></span><a href="/article/article_282184_1.html" title="微信游戏6周年密语是什么 微信游戏6周年密语汇总" target="_blank">微信游戏6周年密语是什么 微信游戏6周年密语汇总</a></li><li><span class="f-fl"></span><a href="/article/article_282181_1.html" title="微信游戏6周年怎么无法参与活动 微信游戏6周年进不去怎么办" target="_blank">微信游戏6周年怎么无法参与活动 微信游戏6周年进不去怎么办</a></li><li><span class="f-fl"></span><a href="/article/article_282159_1.html" title="微信游戏6周年怎么玩 微信游戏6周年拼图怎么集齐" target="_blank">微信游戏6周年怎么玩 微信游戏6周年拼图怎么集齐</a></li><li><span class="f-fl"></span><a href="/article/article_282157_1.html" title="微信游戏6周年活动怎么参与 微信游戏6周年活动入口" target="_blank">微信游戏6周年活动怎么参与 微信游戏6周年活动入口</a></li><li><span class="f-fl"></span><a href="/article/article_282127_1.html" title="苏宁易购腾讯视频联合会员多少钱 苏宁腾讯视频联合会员怎么开通" target="_blank">苏宁易购腾讯视频联合会员多少钱 苏宁腾讯视频联合会员怎么开通</a></li>
 -->
 </ul>
</dt>
</dl>
</c:if>
</c:forEach>



				


<!--  
<dl class="g-box-1200 g-news clearfix">
<dd class="f-fl"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">QQ技术中心</span><span class="f-fr"><a href="/cmslist/r_3_1.html" target="_blank">更多+</a></span></h4>
<div class="m-divimg">
<ul class="f-lifl clearfix">
<li class="f-tw"><a href="/article/article_293528_1.html" title="qq学习模式在哪 qq学习模式怎么开启" target="_blank"><img src="https://p.qqan.com/up/2020-4/20204141639375353.png" alt="qq学习模式在哪 qq学习模式怎么开启"><p><span>qq学习模式在哪 qq学习模式怎么开启</span></p></a></li><li class="f-tw"><a href="/article/article_287748_1.html" title="微信朋友权限是什么 微信朋友权限怎么设置" target="_blank"><img src="https://p.qqan.com/up/2019-12/20191223141321683.png" alt="微信朋友权限是什么 微信朋友权限怎么设置"><p><span>微信朋友权限是什么 微信朋友权限怎么设置</span></p></a></li><li class="f-tw"><a href="/article/article_279680_1.html" title="新版qq我的状态是什么 qq我的状态怎么关闭" target="_blank"><img src="https://p.qqan.com/up/2019-7/201974843188128.jpg" alt="新版qq我的状态是什么 qq我的状态怎么关闭"><p><span>新版qq我的状态是什么 qq我的状态怎么关闭</span></p></a></li><li class="f-tw"><a href="/article/article_278172_1.html" title="QQ历史签名在哪看2019 手机QQ历史个性签名查看方法" target="_blank"><img src="https://p.qqan.com/up/2019-6/2019641746331881.jpg" alt="QQ历史签名在哪看2019 手机QQ历史个性签名查看方法"><p><span>QQ历史签名在哪看2019 手机QQ历史个性签名查看方法</span></p></a></li>
</ul>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">09-09</span><p class="m-titbt"><a href="/article/article_302062_1.html" title="微信对话框搜一搜在哪里 微信对话框搜一搜有哪些功能" target="_blank">微信对话框搜一搜在哪里 微信对话框搜一搜有哪些功能</a></p><b></b></li><li><span class="f-fr">09-09</span><p class="m-titbt"><a href="/article/article_302052_1.html" title="微信对话框搜一搜功能怎么用 微信对话框搜一搜功能使用教程" target="_blank">微信对话框搜一搜功能怎么用 微信对话框搜一搜功能使用教程</a></p><b></b></li><li><span class="f-fr">08-25</span><p class="m-titbt"><a href="/article/article_301171_1.html" title="2020七夕微信520红包怎么发 微信七夕发520红包教程" target="_blank">2020七夕微信520红包怎么发 微信七夕发520红包教程</a></p><b></b></li><li><span class="f-fr">08-17</span><p class="m-titbt"><a href="/article/article_300740_1.html" title="微信朋友圈评论怎么删除 微信朋友圈评论删除后对方看的到吗" target="_blank">微信朋友圈评论怎么删除 微信朋友圈评论删除后对方看的到吗</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">08-13</span><p class="m-titbt"><a href="/article/article_300548_1.html" title="微信拍一拍怎么撤回 微信拍一拍撤回教程" target="_blank">微信拍一拍怎么撤回 微信拍一拍撤回教程</a></p><b></b></li><li><span class="f-fr">07-19</span><p class="m-titbt"><a href="/article/article_299285_1.html" title="微信怎么看到企业微信消息 用微信接收企业微信消息方法" target="_blank">微信怎么看到企业微信消息 用微信接收企业微信消息方法</a></p><b></b></li><li><span class="f-fr">07-19</span><p class="m-titbt"><a href="/article/article_299284_1.html" title="企业微信和个人微信可以互通吗 企业微信和个人微信怎么互通" target="_blank">企业微信和个人微信可以互通吗 企业微信和个人微信怎么互通</a></p><b></b></li><li><span class="f-fr">07-19</span><p class="m-titbt"><a href="/article/article_299282_1.html" title="企业微信请假在哪里 企业微信请假流程" target="_blank">企业微信请假在哪里 企业微信请假流程</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
</dd>
<dt class="f-fr"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">周边资讯</span><span class="f-fr"><a href="/cmslist/s_43_1.html" target="_blank">更多+</a></span></h4>
<ul class="m-newtopsul m-ul2">
<li><span class="f-fl"></span><a href="/article/article_304333_1.html" title="2020淘宝双十一惊喜红包在哪领取 2020天猫双11惊喜红包入口介绍" target="_blank">2020淘宝双十一惊喜红包在哪领取 2020天猫双11惊喜红包入口介绍</a></li><li><span class="f-fl"></span><a href="/article/article_304060_1.html" title="华为Mate40值得买吗 华为Mate40系列参数配置介绍" target="_blank">华为Mate40值得买吗 华为Mate40系列参数配置介绍</a></li><li><span class="f-fl"></span><a href="/article/article_304053_1.html" title="华为Mate40多少钱 华为Mate40全版本价格汇总" target="_blank">华为Mate40多少钱 华为Mate40全版本价格汇总</a></li><li><span class="f-fl"></span><a href="/article/article_304011_1.html" title="2020淘宝双十一养猫喵币怎么获取 2020淘宝双11养猫喵币获取方法介" target="_blank">2020淘宝双十一养猫喵币怎么获取 2020淘宝双11养猫喵币获取方法介</a></li><li><span class="f-fl"></span><a href="/article/article_303994_1.html" title="2020淘宝双十一养猫组队怎么退 2020淘宝双十一养猫规则" target="_blank">2020淘宝双十一养猫组队怎么退 2020淘宝双十一养猫规则</a></li><li><span class="f-fl"></span><a href="/article/article_303991_1.html" title="2020淘宝双十一养猫组队怎么踢人 2020双十一养猫踢人方法介绍" target="_blank">2020淘宝双十一养猫组队怎么踢人 2020双十一养猫踢人方法介绍</a></li><li><span class="f-fl"></span><a href="/article/article_303493_1.html" title="2021牛年纪念币有收藏价值吗 2021牛年金银纪念币购买指南" target="_blank">2021牛年纪念币有收藏价值吗 2021牛年金银纪念币购买指南</a></li><li><span class="f-fl"></span><a href="/article/article_303491_1.html" title="2021牛年纪念币多少钱 2021牛年金银纪念币一套价格表" target="_blank">2021牛年纪念币多少钱 2021牛年金银纪念币一套价格表</a></li><li><span class="f-fl"></span><a href="/article/article_303486_1.html" title="2021牛年纪念币长什么样 牛年纪念币规格及发行量" target="_blank">2021牛年纪念币长什么样 牛年纪念币规格及发行量</a></li>
</ul>
</dt>
</dl>



<dl class="g-box-1200 g-news clearfix">
<dd class="f-fl"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">手机游戏资讯</span><span class="f-fr"><a href="/cmslist/r_26_1.html" target="_blank">更多+</a></span></h4>
<div class="m-divimg">
<ul class="f-lifl clearfix">
<li class="f-tw"><a href="/article/article_104088_1.html" title="天天酷跑刷贡献度2015 快速刷贡献度攻略" target="_blank"><img src="https://p.qqan.com/file/2013/2015-4/2015413113859.jpg" alt="天天酷跑刷贡献度2015 快速刷贡献度攻略"><p><span>天天酷跑刷贡献度2015 快速刷贡献度攻略</span></p></a></li><li class="f-tw"><a href="/article/article_122686_1.html" title="天天酷跑3D新特工壕礼介绍 新手好礼累计登录送A级角色" target="_blank"><img src="https://p.qqan.com/up/2016-1/20161138563.jpg" alt="天天酷跑3D新特工壕礼介绍 新手好礼累计登录送A级角色"><p><span>天天酷跑3D新特工壕礼介绍 新手好礼累计登录送A级角色</span></p></a></li><li class="f-tw"><a href="/article/article_279899_1.html" title="多多自走棋最新阵容大全 多多自走棋怎么搭配" target="_blank"><img src="https://p.qqan.com/up/2019-7/2019791611503708.png" alt="多多自走棋最新阵容大全 多多自走棋怎么搭配"><p><span>多多自走棋最新阵容大全 多多自走棋怎么搭配</span></p></a></li><li class="f-tw"><a href="/article/article_277408_1.html" title="和平精英配置要求高吗 腾讯和平精英手游支持机型配置一览" target="_blank"><img src="https://p.qqan.com/up/2019-5/201958154978904.jpg" alt="和平精英配置要求高吗 腾讯和平精英手游支持机型配置一览"><p><span>和平精英配置要求高吗 腾讯和平精英手游支持机型配置一览</span></p></a></li>
</ul>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">11-01</span><p class="m-titbt"><a href="/article/article_304467_1.html" title="万国觉醒敌人位置怎么找 万国觉醒仇敌位置" target="_blank">万国觉醒敌人位置怎么找 万国觉醒仇敌位置</a></p><b></b></li><li><span class="f-fr">11-01</span><p class="m-titbt"><a href="/article/article_304466_1.html" title="魔渊之刃困难30层boss攻略 魔渊之刃困难30层boss打法" target="_blank">魔渊之刃困难30层boss攻略 魔渊之刃困难30层boss打法</a></p><b></b></li><li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304443_1.html" title="万国觉醒统帅经验值攻略 万国觉醒统帅经验怎么刷" target="_blank">万国觉醒统帅经验值攻略 万国觉醒统帅经验怎么刷</a></p><b></b></li><li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304442_1.html" title="部落与弯刀怎么招募队友 部落与弯刀队友招募方法" target="_blank">部落与弯刀怎么招募队友 部落与弯刀队友招募方法</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304441_1.html" title="万国觉醒紫头怎么刷 万国觉醒紫头获取方式" target="_blank">万国觉醒紫头怎么刷 万国觉醒紫头获取方式</a></p><b></b></li><li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304439_1.html" title="王者荣耀五处异常位置 王者荣耀五处异常怎么找" target="_blank">王者荣耀五处异常位置 王者荣耀五处异常怎么找</a></p><b></b></li><li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304440_1.html" title="古代人生游戏怎么当将军 古代人生游戏将军职业有吗" target="_blank">古代人生游戏怎么当将军 古代人生游戏将军职业有吗</a></p><b></b></li><li><span class="f-fr">10-30</span><p class="m-titbt"><a href="/article/article_304438_1.html" title="动物派对怎么丢武器 动物派对丢东西方法" target="_blank">动物派对怎么丢武器 动物派对丢东西方法</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
</dd>
<dt class="f-fr"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">QQ游戏中心</span><span class="f-fr"><a href="/cmslist/r_12_1.html" target="_blank">更多+</a></span></h4>
<ul class="m-newtopsul m-ul2">
<li><span class="f-fl"></span><a href="/article/article_281496_1.html" title="lol英雄联盟维护后进不了游戏 8月6日lol维护后换不了输入法怎么回" target="_blank">lol英雄联盟维护后进不了游戏 8月6日lol维护后换不了输入法怎么回</a></li><li><span class="f-fl"></span><a href="/article/article_280972_1.html" title="全职高手荣耀是什么类型的游戏 全职高手荣耀真的存在吗" target="_blank">全职高手荣耀是什么类型的游戏 全职高手荣耀真的存在吗</a></li><li><span class="f-fl"></span><a href="/article/article_279231_1.html" title="lol蓝药水什么时候没了 lol为什么没有回蓝药水" target="_blank">lol蓝药水什么时候没了 lol为什么没有回蓝药水</a></li><li><span class="f-fl"></span><a href="/article/article_278409_1.html" title="英雄联盟自走棋什么时候上线 lol自走棋玩法攻略" target="_blank">英雄联盟自走棋什么时候上线 lol自走棋玩法攻略</a></li><li><span class="f-fl"></span><a href="/article/article_277475_1.html" title="dnf剑影预约活动网址 dnf剑影预约礼包领取攻略" target="_blank">dnf剑影预约活动网址 dnf剑影预约礼包领取攻略</a></li><li><span class="f-fl"></span><a href="/article/article_277473_1.html" title="lol英雄宝箱和高级宝箱哪个好 lol2019MSI季中英雄之礼抽5块还是1" target="_blank">lol英雄宝箱和高级宝箱哪个好 lol2019MSI季中英雄之礼抽5块还是1</a></li><li><span class="f-fl"></span><a href="/article/article_277113_1.html" title="Ig冠军皮肤6.6折包括眼吗 Ig666礼包冠军热狗守卫皮肤有优惠吗" target="_blank">Ig冠军皮肤6.6折包括眼吗 Ig666礼包冠军热狗守卫皮肤有优惠吗</a></li><li><span class="f-fl"></span><a href="/article/article_277111_1.html" title="IG冠军皮肤普通版和签名版有什么不一样 ig全套冠军皮肤普通版和签" target="_blank">IG冠军皮肤普通版和签名版有什么不一样 ig全套冠军皮肤普通版和签</a></li><li><span class="f-fl"></span><a href="/article/article_277110_1.html" title="IG666大礼包多少钱 LOL IG666大礼包里面有什么" target="_blank">IG666大礼包多少钱 LOL IG666大礼包里面有什么</a></li>
</ul>
</dt>
</dl>

<dl class="g-box-1200 g-news clearfix">
<dd class="f-fl"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">手机软件教程</span><span class="f-fr"><a href="/cmslist/s_22_1.html" target="_blank">更多+</a></span></h4>
<div class="m-divimg">
<ul class="f-lifl clearfix">
<li class="f-tw"><a href="/article/article_282429_1.html" title="小米游戏超级会员怎么开通 小米游戏超级会员开通教程" target="_blank"><img src="https://p.qqan.com/up/2019-8/2019821163542312.png" alt="小米游戏超级会员怎么开通 小米游戏超级会员开通教程"><p><span>小米游戏超级会员怎么开通 小米游戏超级会员开通教程</span></p> </a></li><li class="f-tw"><a href="/article/article_282281_1.html" title="快手极速版如何刷金币 快手极速版刷金币方法" target="_blank"><img src="https://p.qqan.com/up/2019-8/20198191711234636.png" alt="快手极速版如何刷金币 快手极速版刷金币方法"><p><span>快手极速版如何刷金币 快手极速版刷金币方法</span></p> </a></li><li class="f-tw"><a href="/article/article_281190_1.html" title="支付宝证件照怎么选底色 支付宝证件照底色更换方法" target="_blank"><img src="https://p.qqan.com/up/2019-7/20197311647264734.jpg" alt="支付宝证件照怎么选底色 支付宝证件照底色更换方法"><p><span>支付宝证件照怎么选底色 支付宝证件照底色更换方法</span></p> </a></li><li class="f-tw"><a href="/article/article_281046_1.html" title="淘宝人生心愿卡如何赠送好友 淘宝人生心愿卡好友互赠方法" target="_blank"><img src="https://p.qqan.com/up/2019-7/201972917353461.jpg" alt="淘宝人生心愿卡如何赠送好友 淘宝人生心愿卡好友互赠方法"><p><span>淘宝人生心愿卡如何赠送好友 淘宝人生心愿卡好友互赠方法</span></p> </a></li>
</ul>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">07-20</span><p class="m-titbt"><a href="/article/article_299328_1.html" title="醒图app可以编辑文字吗 醒图添加文字教程" target="_blank">醒图app可以编辑文字吗 醒图添加文字教程</a></p><b></b></li><li><span class="f-fr">07-01</span><p class="m-titbt"><a href="/article/article_298159_1.html" title="剪映蒙版怎么用 剪映蒙版教程" target="_blank">剪映蒙版怎么用 剪映蒙版教程</a></p><b></b></li><li><span class="f-fr">06-29</span><p class="m-titbt"><a href="/article/article_298019_1.html" title="猫爪弹唱怎么弹 猫爪弹唱使用教程" target="_blank">猫爪弹唱怎么弹 猫爪弹唱使用教程</a></p><b></b></li><li><span class="f-fr">06-18</span><p class="m-titbt"><a href="/article/article_297414_1.html" title="免费教谈恋爱的APP 情感之家APP使用测评" target="_blank">免费教谈恋爱的APP 情感之家APP使用测评</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
<div class="m-jkzsdiv f-fl m-news2">
<ul class="m-jkzsul">
<li><span class="f-fr">06-11</span><p class="m-titbt"><a href="/article/article_297001_1.html" title="抖音遇见过去的自己如何拍 抖音遇见过去的自己教程" target="_blank">抖音遇见过去的自己如何拍 抖音遇见过去的自己教程</a></p><b></b></li><li><span class="f-fr">06-09</span><p class="m-titbt"><a href="/article/article_296794_1.html" title="醒图怎么用 醒图使用教程" target="_blank">醒图怎么用 醒图使用教程</a></p><b></b></li><li><span class="f-fr">06-05</span><p class="m-titbt"><a href="/article/article_296620_1.html" title="腾讯会议虚拟背景怎么弄 腾讯会议自定义背景教程" target="_blank">腾讯会议虚拟背景怎么弄 腾讯会议自定义背景教程</a></p><b></b></li><li><span class="f-fr">06-03</span><p class="m-titbt"><a href="/article/article_296436_1.html" title="云闪付解绑银行卡在哪里 云闪付解绑银行卡教程" target="_blank">云闪付解绑银行卡在哪里 云闪付解绑银行卡教程</a></p><b></b></li>
</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
</dd>
<dt class="f-fr"><h4 class="m-tith4 m-xbtj clearfix"><span class="f-fl">电脑软件教程</span><span class="f-fr"><a href="/cmslist/s_54_1.html" target="_blank">更多+</a></span></h4>
<ul class="m-newtopsul m-ul2">
<li><span class="f-fl"></span><a href="/article/article_289599_1.html" title="qq群怎么直播上课 qq群直播上课流畅" target="_blank">qq群怎么直播上课 qq群直播上课流畅</a></li><li><span class="f-fl"></span><a href="/article/article_284700_1.html" title="虎牙直播回放怎么没了 虎牙直播观看重播教程2020" target="_blank">虎牙直播回放怎么没了 虎牙直播观看重播教程2020</a></li><li><span class="f-fl"></span><a href="/article/article_281219_1.html" title="小米电视哪个软件可以看到中央电视台 小米电视看电视台步骤" target="_blank">小米电视哪个软件可以看到中央电视台 小米电视看电视台步骤</a></li><li><span class="f-fl"></span><a href="/article/article_277288_1.html" title="百度云盘文件不用app能下载安装吗 不安装百度网盘app下载文件方法" target="_blank">百度云盘文件不用app能下载安装吗 不安装百度网盘app下载文件方法</a></li><li><span class="f-fl"></span><a href="/article/article_277247_1.html" title="电脑休眠后自动断网怎么回事 win10设置电脑休眠不断网教程2019" target="_blank">电脑休眠后自动断网怎么回事 win10设置电脑休眠不断网教程2019</a></li><li><span class="f-fl"></span><a href="/article/article_276682_1.html" title="抖音Wordclock屏保怎么弄的 抖音文字云时钟Word Clock屏保教程" target="_blank">抖音Wordclock屏保怎么弄的 抖音文字云时钟Word Clock屏保教程</a></li><li><span class="f-fl"></span><a href="/article/article_270368_1.html" title="搜狐号怎么注册开通 搜狐号申请流程" target="_blank">搜狐号怎么注册开通 搜狐号申请流程</a></li><li><span class="f-fl"></span><a href="/article/article_266179_1.html" title="钉钉图片显示不出来怎么回事 钉钉表情和图片卡空白怎么办" target="_blank">钉钉图片显示不出来怎么回事 钉钉表情和图片卡空白怎么办</a></li><li><span class="f-fl"></span><a href="/article/article_250180_1.html" title="今日头条图片不显示怎么回事 头条号图片一直上传失败解决办法" target="_blank">今日头条图片不显示怎么回事 头条号图片一直上传失败解决办法</a></li>
</ul>
</dt>
</dl>
-->
<div class="g-new-foot g-main-bg clearfix">
<div class="g-new-footcont g-box-1200 ">
<p> <a href="https://www.qqtn.com/app/about.html">关于腾牛</a> | <a href="https://www.qqtn.com/app/contact.html">联系方式</a> | <a href="https://www.qqtn.com/app/history.html">发展历程</a> | <a href="https://www.qqtn.com/app/copyright.html">版权声明</a> | <a href="https://www.qqtn.com/app/help.html" style="cursor:help;">下载帮助(？)</a> | <a href="https://www.qqtn.com/app/adv.html">广告联系</a> | <a href="https://www.qqtn.com/app/map.html">网站地图</a> | <a href="https://www.qqtn.com/app/link.html">友情链接</a><script language="JavaScript" type="text/javascript" src="/skin/know/count.js"></script> </p>
<p> Copyright 2005-2020 QQTN.com <b>【腾牛网】</b> 版权所有 鄂ICP备19031707号-1 | <img src="https://www.qqtn.com/skin/new2013/images/gonganbeian.png">鄂公网安备 42011102000245号</p>
<p>声明： <span>本站非腾讯QQ官方网站</span> 所有软件和文章来自互联网 如有异议 请与本站联系 本站为非赢利性网站 不接受任何赞助和广告 </p></div>
</div>

<script >
$.ajax({
	type : "GET",
	url : "/api/wr/user/getUserList.do",
	dataType : "text",
	success : function(data) {
		var  o = JSON.parse(data);
		//alert(o.userid);
		  if(o.userid ==0){		  
		  }else{
			//  alert(o.user[0].username) ;
			    var  aa=	document.getElementById("defect").innerHTML;
				var  bb= document.getElementById("defect");
				bb.innerHTML="<li> <a href='javascript:void(0);'> "+o.user[0].username+"您好，欢迎光临！</a></li>"+ "<li><a href='/module/usercenter/login.jsp' >用户中心</a></li><li><a href='javascript:void(0)' onclick='userlogout()' >退出登录</a>'</li>" ;
		  }
				
		
	}
});	
</script>


</body>
</html>