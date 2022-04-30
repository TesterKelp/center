<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="applicable-device" content="pc">
<title>手游攻略-手游资讯-最新手游资讯-腾牛网</title>
<meta name="description" content="手游攻略频道给大家提供最新手游资讯信息，包括手机游戏新闻、攻略、测评、资料和问答内容，给大家营造一个值得信赖的手游攻略中心。">
<meta name="Keywords" content="手游资讯,android游戏攻略,最新手游动态">
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script type="text/javascript" src="/inc/mredirect.js"></script>
<script src="/skin/library/js/jqbs.min.js"></script>
<link href="/template/1200/css/news.css" type="text/css" rel="stylesheet">
<link href="/template/1200/css/newsmain.css" type="text/css" rel="stylesheet">
<script>var Page = "newslist"</script>
</head>
<body>

<%@ include file="/template/1200/header.jsp"%>


<div class="g-box-1200 g-nav"><span></span>当前位置：<a href="/">首页</a> → <a href="/${m.item_directorie}/portal.do">${m.item_name}</a> → ${c.catename}</div>

<style>
.index_bor{margin-bottom:10px; border:1px solid #e7e7e7}
.index_con{border-top:2px solid #0af;border-bottom:1px solid #BCD5E5;line-height:32px;height:32px;}
.index_con h2{float:left;display:block;font-size:14px;font-weight:700;color:#F60;margin:0;padding:0 0 0 15px;}
.index_con span{float:right;display:block;padding-right:10px;}
.index_con span a{color:#999;}
.index_list{display:block;list-style-type:none;margin:0;padding:5px 0 0;}
.index_list li{float:left;line-height:28px;height:28px;width:46%;padding-right:15px;padding-left:15px;font-size:14px;color:#252525;}
.index_list li:nth-child(2n+1){ float:right}
.index_list li a{ width:82%; display:inline-block;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;}
.index_list span{margin-right:5px; color:#666666;font-size:12px; float:right} 
 
</style>














<dl class="g-box-1200 clearfix g-main">
<dd class="f-fl m-mainleft">
<div class="m-newsuldiv" style="padding:15px 15px 0;">


<!-- 
<div class="index_con">
<h2><a href="/diannaojichu/list600_1.html">健康知识</a></h2>
<SPAN><A href="/diannaojichu/list600_1.html" target="_blank">更多&gt;&gt; </A></SPAN>
</div>
<ul class="index_list">
<li><span>03-03</span><a href="/diannaojichu/715075.html" title="电脑开机弹出提示BaiduSdTray.exe文件损坏怎么办?" target="_blank">电脑开机弹出提示BaiduSdTray.exe文件损坏怎么办?</a></li>
<li><span>05-07</span><a href="/diannaojichu/671712.html" title="电脑网页打不开提示错误err connection怎么办?" target="_blank">电脑网页打不开提示错误err connection怎么办?</a></li>
<li><span>05-21</span><a href="/diannaojichu/614382.html" title="怎么让电脑自动清理灰尘 电脑自动清理灰尘方法介绍" target="_blank">怎么让电脑自动清理灰尘 电脑自动清理灰尘方法介绍</a></li>
<li><span>11-25</span><a href="/diannaojichu/513577.html" title="健康小知识:如何正确使用键盘和鼠标" target="_blank">健康小知识:如何正确使用键盘和鼠标</a></li>
<li><span>10-24</span><a href="/diannaojichu/504342.html" title="如何健康地使用电脑键盘?" target="_blank">如何健康地使用电脑键盘?</a></li>
<li><span>10-10</span><a href="/diannaojichu/500336.html" title="得了鼠标手怎么办?鼠标手治疗方法" target="_blank">得了鼠标手怎么办?鼠标手治疗方法</a></li>
<li><span>10-10</span><a href="/diannaojichu/500314.html" title="鼠标手怎么治疗?鼠标手改善或治疗方法" target="_blank">鼠标手怎么治疗?鼠标手改善或治疗方法</a></li>
<li><span>10-10</span><a href="/diannaojichu/500304.html" title="你有鼠标手吗?鼠标手自测及预防鼠标手方法" target="_blank">你有鼠标手吗?鼠标手自测及预防鼠标手方法</a></li>
<li><span>09-22</span><a href="/diannaojichu/496019.html" title="三招教你降低电脑屏幕蓝光对眼睛的危害" target="_blank">三招教你降低电脑屏幕蓝光对眼睛的危害</a></li>
<li><span>09-07</span><a href="/diannaojichu/492270.html" title="笔记本电脑立体清灰教程" target="_blank">笔记本电脑立体清灰教程</a></li>
<li><span>08-03</span><a href="/diannaojichu/482196.html" title="电脑族怎样保护颈椎 16招教你远离颈椎病" target="_blank">电脑族怎样保护颈椎 16招教你远离颈椎病</a></li>
<li><span>07-11</span><a href="/diannaojichu/476282.html" title="台式电脑怎么清理灰尘  台式电脑清理灰尘方法图解" target="_blank">台式电脑怎么清理灰尘  台式电脑清理灰尘方法图解</a></li>
<li><span>07-07</span><a href="/diannaojichu/475210.html" title="你中枪了吗?使用电脑的10个坏习惯总结" target="_blank">你中枪了吗?使用电脑的10个坏习惯总结</a></li>
<li><span>05-30</span><a href="/diannaojichu/464546.html" title="抬高电脑显示器可预防颈椎病?低头族要注意了" target="_blank">抬高电脑显示器可预防颈椎病?低头族要注意了</a></li>
<li><span>05-12</span><a href="/diannaojichu/459573.html" title="网瘾有什么症状 对比一下你有没有网瘾" target="_blank">网瘾有什么症状 对比一下你有没有网瘾</a></li>
<li><span>05-12</span><a href="/diannaojichu/459565.html" title="总想玩电脑有网瘾怎么办 网瘾治疗建议" target="_blank">总想玩电脑有网瘾怎么办 网瘾治疗建议</a></li>
<li><span>04-28</span><a href="/diannaojichu/455511.html" title="几种最适合电脑族喝的茶饮 你知道吗？" target="_blank">几种最适合电脑族喝的茶饮 你知道吗？</a></li>
<li><span>04-28</span><a href="/diannaojichu/455491.html" title="降低电脑辐射明目多吃的食物" target="_blank">降低电脑辐射明目多吃的食物</a></li>
<li><span>04-28</span><a href="/diannaojichu/455480.html" title="什么植物放在电脑前比较好" target="_blank">什么植物放在电脑前比较好</a></li>
<li><span>04-28</span><a href="/diannaojichu/455471.html" title="办公族、电脑族必备健康常识 如何预防电脑辐射" target="_blank">办公族、电脑族必备健康常识 如何预防电脑辐射</a></li>
</ul>
<div class="index_bor clearfix"></div>
 -->
 
<c:forEach items="${mList}" var="aa" varStatus="sta">
  <c:if test="${aa.listtemplate != 'index'}">

						<c:set var="index" value="1" />
<div class="index_bor clearfix">
<div class="index_con">
<h2><a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}">${aa.catename}</a></h2>
<SPAN><A href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}" target="_blank">更多&gt;&gt; </A></SPAN>
</div>
<ul class="index_list">

<c:forEach items="${clst}" var="a" varStatus="status">
									<c:if test="${index<18}">
										<c:if test="${aa.catename == a.catename }">

											<li><span>${a.creattime}</span><a
												href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a></li>
											<c:set var="index" value="${index+1}" />
										</c:if>
									</c:if>
</c:forEach>


</ul>
</div>

</c:if>
</c:forEach>












<ul class="m-newslistul">











<!--  
<li class="clearfix">
<a href="/article/article_303253_1.html" title="原神空之杯圣遗物有什么词条 空之杯圣遗物词条全介绍" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010992446281.jpg" alt="原神空之杯圣遗物有什么词条 空之杯圣遗物词条全介绍"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303253_1.html" title="原神空之杯圣遗物有什么词条 空之杯圣遗物词条全介绍" target="_blank">原神空之杯圣遗物有什么词条 空之杯圣遗物词条全介绍</a></p>
<div class="m-listinfo">空之杯主词条有：攻击%、生命%、防御%、元素精通、属性伤害、物理伤害，空之杯副词条有：攻击/攻击%、暴击/暴击伤害、元素充能/元素精通、生命/生命%、防御/防御%。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-09</span><span>人气：<i>45</i></span></p>
</div>
</li>



<li class="clearfix">
<a href="/article/article_292863_1.html" title="公主连结哪些礼包值得买 国服氪金导航" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-4/2020431629411984.jpg" alt="公主连结哪些礼包值得买 国服氪金导航"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_292863_1.html" title="公主连结哪些礼包值得买 国服氪金导航" target="_blank">公主连结哪些礼包值得买 国服氪金导航</a></p>
<div class="m-listinfo">1.每日宝石礼包。2.7日体力应援包。3.每日宝石礼包90日。4.每日宝石增量包。5.每月白金转蛋券。6.每周白金券。想加快专武速度还可以购买公主之心每日礼包。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-04-03</span><span>人气：<i>957</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_290095_1.html" title="霸王雄心武将怎么置换 霸王雄心武将置换攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-2/2020212116345372.jpg" alt="霸王雄心武将怎么置换 霸王雄心武将置换攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_290095_1.html" title="霸王雄心武将怎么置换 霸王雄心武将置换攻略" target="_blank">霸王雄心武将怎么置换 霸王雄心武将置换攻略</a></p>
<div class="m-listinfo">玩家需要选择随机三个没有养成的武将置换另外一个武将，同名或者不同名都可以的，也就是3个不同武将或者3个相同武将都能一起置换，另外必须使用同阵营的才可能换到同阵营的，比如蜀换蜀，不能换到魏或者吴。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-02-12</span><span>人气：<i>713</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_289230_1.html" title="古代人生新手怎么玩 新手小技巧攻略分享" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-1/2020119115473742.jpg" alt="古代人生新手怎么玩 新手小技巧攻略分享"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_289230_1.html" title="古代人生新手怎么玩 新手小技巧攻略分享" target="_blank">古代人生新手怎么玩 新手小技巧攻略分享</a></p>
<div class="m-listinfo">黄土地种西瓜，水田种莲藕，不建议沼泽种莲藕(有不成熟的可能)，红土地种甘薯。打猎时打不过及时要逃跑。房子会升值。但是卖房子要选择典卖，发帖售卖会贬值。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-01-19</span><span>人气：<i>366</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_279580_1.html" title="跑跑卡丁车手游熊猫车加点 跑跑卡丁车手游熊猫车加点攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2019-7/201972181449182.jpg" alt="跑跑卡丁车手游熊猫车加点 跑跑卡丁车手游熊猫车加点攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_279580_1.html" title="跑跑卡丁车手游熊猫车加点 跑跑卡丁车手游熊猫车加点攻略" target="_blank">跑跑卡丁车手游熊猫车加点 跑跑卡丁车手游熊猫车加点攻略</a></p>
<div class="m-listinfo">跑跑卡丁车手游中，熊猫车有两种加点方式，第一种：优先强化集气和加速器，弥补熊猫车在加速上较慢的缺点，并且使集气更加快捷；第二种：强化速度和漂移能力，这种加点方案适合冲榜跑图，缺点是一旦在赛道上产生碰撞，就很容易落后于对手。 </div>
<p class="m-listime"><span class="f-fl">时间：2019-07-02</span><span>人气：<i>2011</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_274023_1.html" title="2019好玩的二次元手游有哪些 二次元手游排行榜" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2018-9/20189171537552464.jpg" alt="2019好玩的二次元手游有哪些 二次元手游排行榜"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_274023_1.html" title="2019好玩的二次元手游有哪些 二次元手游排行榜" target="_blank">2019好玩的二次元手游有哪些 二次元手游排行榜</a></p>
<div class="m-listinfo">二次元越来越受到人民群众的关注了，各大游戏开发厂家也盯上了二次元手游这一鲜美的蛋糕，各式各样的二次元手游层出不穷，但是精品游戏却依旧难得，那么有哪些游戏能够称得上精品二次元手游呢？小编在这里为广大游戏玩家带来一些拙见！二次元手游排行榜PS：本次 </div>
<p class="m-listime"><span class="f-fl">时间：2018-09-17</span><span>人气：<i>2652</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_304001_1.html" title="天涯明月刀手游如何双人骑乘 双人坐骑获取详解" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010221351268960.jpg" alt="天涯明月刀手游如何双人骑乘 双人坐骑获取详解"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_304001_1.html" title="天涯明月刀手游如何双人骑乘 双人坐骑获取详解" target="_blank">天涯明月刀手游如何双人骑乘 双人坐骑获取详解</a></p>
<div class="m-listinfo">想要双人骑乘坐骑，需要获得双人坐骑动作才可以，双人坐骑动作可以在商店里购买，售价是1880点�，购买之后，先组队，然后点击队伍中其他人的头像，此时可以看到一个邀请骑马的选项，只要对方同意，即可一起双人骑乘坐骑。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>2</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303999_1.html" title="天涯明月刀手游战令和月卡买哪个 战令和月卡对比解析" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010221346437317.jpg" alt="天涯明月刀手游战令和月卡买哪个 战令和月卡对比解析"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303999_1.html" title="天涯明月刀手游战令和月卡买哪个 战令和月卡对比解析" target="_blank">天涯明月刀手游战令和月卡买哪个 战令和月卡对比解析</a></p>
<div class="m-listinfo">战令的奖励对比月卡多出了不少，有各种各有的资源还是时装，但是需要一直在线肝，月卡虽然主要奖励是点券，其他奖励并不丰富，但是只需要每天进入游戏就能领取，所以怎么选择主要看游戏的时长多不多，多就选择战令，奖励丰富，少就选择月卡，简单方便。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>3</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303997_1.html" title="天涯明月刀手游哪些手段可以提升战力 战力提升途径解析" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010221338577878.jpg" alt="天涯明月刀手游哪些手段可以提升战力 战力提升途径解析"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303997_1.html" title="天涯明月刀手游哪些手段可以提升战力 战力提升途径解析" target="_blank">天涯明月刀手游哪些手段可以提升战力 战力提升途径解析</a></p>
<div class="m-listinfo">提升战力的途径有：帮派经脉弘文（必点，商城的帮贡推荐全清）、伙伴（平民玩家只推荐每周七折，土豪建议拉满）、洗练（建议先将全身装备洗到10级，商城的铸神令条件允许推荐购买）、琅纹（平民建议按照装备属性搭配琅纹，重氪土豪道心、神人直接拉满）、 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>2</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303996_1.html" title="天涯明月刀手游茶童答题答案是什么 茶童答题答案详解" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201022132804467.jpg" alt="天涯明月刀手游茶童答题答案是什么 茶童答题答案详解"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303996_1.html" title="天涯明月刀手游茶童答题答案是什么 茶童答题答案详解" target="_blank">天涯明月刀手游茶童答题答案是什么 茶童答题答案详解</a></p>
<div class="m-listinfo">答案是绿茶，望海潮的含义就是一池碧水，碧海潮生，代表的就是龙井，龙井算是绿茶中非常有名的一个品类，完成答题后可以的到开封的图鉴望海潮，后续玩家身份中的雅士达到了更高等级，可以继续答题。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>1</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303993_1.html" title="天涯明月刀手游平民神威怎么样 平民神威全方位解析" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010221026173484.jpg" alt="天涯明月刀手游平民神威怎么样 平民神威全方位解析"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303993_1.html" title="天涯明月刀手游平民神威怎么样 平民神威全方位解析" target="_blank">天涯明月刀手游平民神威怎么样 平民神威全方位解析</a></p>
<div class="m-listinfo">在PVE副本中，神威作为主T是不可或缺的存在，操作简单生存能力强，在PVP论剑中霸体多，近战中手最长，爆发高，生存能力强，永远的神，在团战中表现一般，近战都比较容易冲进人堆然后白给，氪金程度中上，不太推荐零氪玩家，中氪玩家玩起来会很舒服。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303990_1.html" title="天涯明月刀手游平民天香怎么样 平民天香全方位解析" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201022927582344.jpg" alt="天涯明月刀手游平民天香怎么样 平民天香全方位解析"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303990_1.html" title="天涯明月刀手游平民天香怎么样 平民天香全方位解析" target="_blank">天涯明月刀手游平民天香怎么样 平民天香全方位解析</a></p>
<div class="m-listinfo">在PVE副本中，奶量高生存能力强，平民玩家也能满足副本的奶量需求，还自带复活，但输出较低，不推荐在副本中用输出形态，除非你是氪金大佬，在PVP论剑中，操作简单，技能灵活，控制消耗样样行比较全面，团战有群加和霸体，氪金程度较低，很适合平民。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>3</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303986_1.html" title="天涯明月刀手游平民丐帮怎么样 平民丐帮全方位解析" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102292211353.jpg" alt="天涯明月刀手游平民丐帮怎么样 平民丐帮全方位解析"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303986_1.html" title="天涯明月刀手游平民丐帮怎么样 平民丐帮全方位解析" target="_blank">天涯明月刀手游平民丐帮怎么样 平民丐帮全方位解析</a></p>
<div class="m-listinfo">在PVE副本中，丐帮表现中庸，伤害不如唐门，坦度不如神威，在PVP论剑中控制力极强，打击感爽快，缺点是爆发较低，并且手短，团战中小规模非常厉害，团控技能多，大规模比较容易进去白给，T天赋能提升群体的血上限，氪金程度不低，平民玩家谨慎选择。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>8</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303984_1.html" title="天涯明月刀手游怎么抄录图纸 抄录图纸用法说明" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102299517116.jpg" alt="天涯明月刀手游怎么抄录图纸 抄录图纸用法说明"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303984_1.html" title="天涯明月刀手游怎么抄录图纸 抄录图纸用法说明" target="_blank">天涯明月刀手游怎么抄录图纸 抄录图纸用法说明</a></p>
<div class="m-listinfo">首先先进入家园室外，点击制造，然后选择你需要抄录的家具（家具必须允许抄录才行），然后点击图纸中的获得途径，再点击大世界抄录即可自动寻路过去，非常的简单。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303981_1.html" title="天涯明月刀手游金兰最多几个人 金兰人数指南" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102295403206.jpg" alt="天涯明月刀手游金兰最多几个人 金兰人数指南"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303981_1.html" title="天涯明月刀手游金兰最多几个人 金兰人数指南" target="_blank">天涯明月刀手游金兰最多几个人 金兰人数指南</a></p>
<div class="m-listinfo">目前游戏中的金兰人数上限是10人，结交时不满足10人后续也能陆续加入新成员，尽量结交实力超过自己的玩家，因为有加成效果。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>5</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303978_1.html" title="天涯明月刀手游赵铁牛案怎么破 赵铁牛案证据思路详解" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201022859147942.jpg" alt="天涯明月刀手游赵铁牛案怎么破 赵铁牛案证据思路详解"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303978_1.html" title="天涯明月刀手游赵铁牛案怎么破 赵铁牛案证据思路详解" target="_blank">天涯明月刀手游赵铁牛案怎么破 赵铁牛案证据思路详解</a></p>
<div class="m-listinfo">首先需要进行搜查，会发现好几样疑似证据的物品，此时在其中选择镰刀即可，因为镰刀是赵铁牛杀死赵二的凶器，虽然事后赵铁牛对镰刀进行了清洗，但是镰刀上的血迹还是被苍蝇们感受了出来，镰刀上布满了苍蝇，选择镰刀提交即可完成破案任务。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>5</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303975_1.html" title="天涯明月刀手游五个锦鲤在哪 五个锦鲤位置详解" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102285236007.jpg" alt="天涯明月刀手游五个锦鲤在哪 五个锦鲤位置详解"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303975_1.html" title="天涯明月刀手游五个锦鲤在哪 五个锦鲤位置详解" target="_blank">天涯明月刀手游五个锦鲤在哪 五个锦鲤位置详解</a></p>
<div class="m-listinfo">五个锦鲤的位置分别在金鳞锦鲤（开封）、水墨锦鲤（江南聆音楼附近）、沧澜锦鲤（东越天峰盟附近）、白雪锦鲤（东越白鹭洲附近）、乌云锦鲤（秦川青龙会分舵右边）。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>13</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303973_1.html" title="天涯明月刀手游皇宫怎么进 皇宫进入方法" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201022847351488.jpg" alt="天涯明月刀手游皇宫怎么进 皇宫进入方法"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303973_1.html" title="天涯明月刀手游皇宫怎么进 皇宫进入方法" target="_blank">天涯明月刀手游皇宫怎么进 皇宫进入方法</a></p>
<div class="m-listinfo">皇宫在开封的正中央，在开封的地图上就能看到皇宫的位置，不过目前皇宫还未开放，附近有空气墙挡住进不去，只能通过主线剧情和婉儿一起进入皇宫，而且必须跟着剧情走无法逗留，这是现在唯一进入皇宫的办法。 </div>
<p class="m-listime"><span class="f-fl">时间：<font color=red>2020-10-22</font></span><span>人气：<i>10</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303971_1.html" title="iphone12上可以直接下载英雄联盟手游吗 iphone12上能直接玩LOL手游吗" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102118260532.jpg" alt="iphone12上可以直接下载英雄联盟手游吗 iphone12上能直接玩LOL手游吗"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303971_1.html" title="iphone12上可以直接下载英雄联盟手游吗 iphone12上能直接玩LOL手游吗" target="_blank">iphone12上可以直接下载英雄联盟手游吗 iphone12上能直接玩LOL手游吗</a></p>
<div class="m-listinfo">iphone12上的确可以直接下载到英雄联盟手游，但是目前国服版的英雄联盟手游没有公测，所以只能等国服上线了才可以下载哦，如果是外服玩家购买的iphone12，就可以直接下载对应的区服版本哦。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>68</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303970_1.html" title="炸鸡派对炸弹怎么用 炸鸡派对炸弹攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211818338185.jpg" alt="炸鸡派对炸弹怎么用 炸鸡派对炸弹攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303970_1.html" title="炸鸡派对炸弹怎么用 炸鸡派对炸弹攻略" target="_blank">炸鸡派对炸弹怎么用 炸鸡派对炸弹攻略</a></p>
<div class="m-listinfo">炸鸡派对炸弹操作并不难，按住就是准备炸弹，选择合适的方式，松手就扔出去了。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303969_1.html" title="万国觉醒怎么抢别人资源 万国觉醒怎么抢夺资源" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211817586203.jpg" alt="万国觉醒怎么抢别人资源 万国觉醒怎么抢夺资源"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303969_1.html" title="万国觉醒怎么抢别人资源 万国觉醒怎么抢夺资源" target="_blank">万国觉醒怎么抢别人资源 万国觉醒怎么抢夺资源</a></p>
<div class="m-listinfo">万国觉醒抢夺资源的第一步就是筛选猎物，找到可以攻击的对象哦，然后挑选攻城的主将，带上足够的部队，直接展开攻击就可以了。采集将路过后，点帐篷驻扎附近，就可以将别人的资源抢夺过来。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>12</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303967_1.html" title="魔渊之刃困难15层BOSS怎么打 魔渊之刃困难15攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021181193751.jpg" alt="魔渊之刃困难15层BOSS怎么打 魔渊之刃困难15攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303967_1.html" title="魔渊之刃困难15层BOSS怎么打 魔渊之刃困难15攻略" target="_blank">魔渊之刃困难15层BOSS怎么打 魔渊之刃困难15攻略</a></p>
<div class="m-listinfo">魔渊之刃困难15中5个火球返回的方式是有多种的，有的会返回boss，有的会冲着我们玩家过来。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303968_1.html" title="最强蜗牛檀香后期有什么用 最强蜗牛檀香怎么用最好" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021181224739.jpg" alt="最强蜗牛檀香后期有什么用 最强蜗牛檀香怎么用最好"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303968_1.html" title="最强蜗牛檀香后期有什么用 最强蜗牛檀香怎么用最好" target="_blank">最强蜗牛檀香后期有什么用 最强蜗牛檀香怎么用最好</a></p>
<div class="m-listinfo">最强蜗牛檀香是用来插在佛像上的，在后期檀香用处就是每攒三根儿，都插到佛像上，然后狂点佛像，佛像就会发出激光打掉飞机这之后会触发一些额外的杀手。也是一个分支任务。檀香的本质就是用来驱赶乌龟。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>9</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303966_1.html" title="阴阳师山灵怎么达到100万 阴阳师山灵解锁方法" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021186487496.jpg" alt="阴阳师山灵怎么达到100万 阴阳师山灵解锁方法"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303966_1.html" title="阴阳师山灵怎么达到100万 阴阳师山灵解锁方法" target="_blank">阴阳师山灵怎么达到100万 阴阳师山灵解锁方法</a></p>
<div class="m-listinfo">阴阳师山灵是活动道具，可以在神奇珍宝阁兑换很多道具，可以充值，或者从月卡中固定获取，也能参与竞技场争夺。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>17</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303963_1.html" title="原神原粹树脂作用 原神原粹树脂用途" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102118181644.jpg" alt="原神原粹树脂作用 原神原粹树脂用途"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303963_1.html" title="原神原粹树脂作用 原神原粹树脂用途" target="_blank">原神原粹树脂作用 原神原粹树脂用途</a></p>
<div class="m-listinfo">原粹树脂相当于讨伐精英怪的体力值，主要用途就是用来打【无相之风、岩、雷】，打一次无相就是40点体力，一天刷新总共才180点。一些活动任务的完成，总是会收取树脂作为任务材料。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303965_1.html" title="阴阳师妖怪屋美食副本怎么进 阴阳师妖怪屋美食副本开启攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021182115537.jpg" alt="阴阳师妖怪屋美食副本怎么进 阴阳师妖怪屋美食副本开启攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303965_1.html" title="阴阳师妖怪屋美食副本怎么进 阴阳师妖怪屋美食副本开启攻略" target="_blank">阴阳师妖怪屋美食副本怎么进 阴阳师妖怪屋美食副本开启攻略</a></p>
<div class="m-listinfo">美食副本最低进入等级限制15级，入口位置，退治(探索)界面右侧有一个达摩按钮，每个点的30分时出现(应该是六点半，七点半这种)。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303961_1.html" title="魔渊之刃暮色峡谷攻略 魔渊之刃暮色峡谷打法" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211758588470.jpg" alt="魔渊之刃暮色峡谷攻略 魔渊之刃暮色峡谷打法"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303961_1.html" title="魔渊之刃暮色峡谷攻略 魔渊之刃暮色峡谷打法" target="_blank">魔渊之刃暮色峡谷攻略 魔渊之刃暮色峡谷打法</a></p>
<div class="m-listinfo">团本第一关：看门老大爷，这个boss技能没啥好说的，注意别站他面前。然后躲一躲龙卷风就行，在被雷劈的人远离队友。整个关卡，法师打红色，物理打蓝色。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303960_1.html" title="道友请留步幻彩神仙获取方法 道友请留步幻彩神仙获取攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021175625547.jpg" alt="道友请留步幻彩神仙获取方法 道友请留步幻彩神仙获取攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303960_1.html" title="道友请留步幻彩神仙获取方法 道友请留步幻彩神仙获取攻略" target="_blank">道友请留步幻彩神仙获取方法 道友请留步幻彩神仙获取攻略</a></p>
<div class="m-listinfo">道友请留步中幻彩神仙可以通过在商店使用元宝获得。游戏中每月都会有一期神仙活动，每期神仙活动可持续三天，玩家可以在那时使用元宝购买幻彩神仙。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>6</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303958_1.html" title="一梦江湖染膏用法 一梦江湖染膏攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211754163887.jpg" alt="一梦江湖染膏用法 一梦江湖染膏攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303958_1.html" title="一梦江湖染膏用法 一梦江湖染膏攻略" target="_blank">一梦江湖染膏用法 一梦江湖染膏攻略</a></p>
<div class="m-listinfo">染膏用来染头发颜色，第一批开放染色的发型有：百媚生・冠、斯悦・冠，使用时点开百媚生・冠或是斯悦・冠，像时装一样点染色的地方就可以了。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>8</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303959_1.html" title="阴阳师妖怪屋怎么觉醒式神 阴阳师妖怪屋式神觉醒方法" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211755568953.jpg" alt="阴阳师妖怪屋怎么觉醒式神 阴阳师妖怪屋式神觉醒方法"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303959_1.html" title="阴阳师妖怪屋怎么觉醒式神 阴阳师妖怪屋式神觉醒方法" target="_blank">阴阳师妖怪屋怎么觉醒式神 阴阳师妖怪屋式神觉醒方法</a></p>
<div class="m-listinfo">首先需要式神好感度达到2级，前往式神觉醒页面。通过捕虫获得觉醒需要大量的材料，开启觉醒。觉醒之后解锁更换皮肤功能，且提升式神战斗属性。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303957_1.html" title="不思议迷宫外域开启方法 不思议迷宫外域怎么开" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211752182078.jpg" alt="不思议迷宫外域开启方法 不思议迷宫外域怎么开"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303957_1.html" title="不思议迷宫外域开启方法 不思议迷宫外域怎么开" target="_blank">不思议迷宫外域开启方法 不思议迷宫外域怎么开</a></p>
<div class="m-listinfo">外域将在伊甸彻底修复完成后开启。伊甸修复完成，将会开启一座通往“外域”的大门。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>7</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303955_1.html" title="最强蜗牛巫妖王选择攻略 最强蜗牛巫妖王选择分支" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/20201021175034670.jpg" alt="最强蜗牛巫妖王选择攻略 最强蜗牛巫妖王选择分支"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303955_1.html" title="最强蜗牛巫妖王选择攻略 最强蜗牛巫妖王选择分支" target="_blank">最强蜗牛巫妖王选择攻略 最强蜗牛巫妖王选择分支</a></p>
<div class="m-listinfo">最强蜗牛之中，巫妖王玩家应该选择选项B→A，然后抓住之后玩家就能够获得奖励。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>5</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303962_1.html" title="明日之后钢管怎么获得 明日之后钢管材料" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/2020102118163756.jpg" alt="明日之后钢管怎么获得 明日之后钢管材料"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303962_1.html" title="明日之后钢管怎么获得 明日之后钢管材料" target="_blank">明日之后钢管怎么获得 明日之后钢管材料</a></p>
<div class="m-listinfo">明日之后钢管需要铜矿，铝矿，黄杨木，方铅矿来制作，集齐所有材料后，在图鉴中就可以点击制作了。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>6</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303954_1.html" title="万国觉醒如何提高战力 万国觉醒快速提高战力攻略" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211747193262.jpg" alt="万国觉醒如何提高战力 万国觉醒快速提高战力攻略"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303954_1.html" title="万国觉醒如何提高战力 万国觉醒快速提高战力攻略" target="_blank">万国觉醒如何提高战力 万国觉醒快速提高战力攻略</a></p>
<div class="m-listinfo">战力提升，主要是科技，建筑，最关键就是加速和金钱，而科技可以根据特性分成三种类型，分别是建筑、农业、军事。大家可以根据自己当前的发展情况来进行科技提升，增加自己的战斗力。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>5</i></span></p>
</div>
</li>
<li class="clearfix">
<a href="/article/article_303952_1.html" title="最强蜗牛过去之塔怎么开 最强蜗牛过去之塔开启方法" target="_blank" class="f-fl"><img src="https://p.qqan.com/up/2020-10/202010211745146297.jpg" alt="最强蜗牛过去之塔怎么开 最强蜗牛过去之塔开启方法"></a>
<div class="m-listdiv">
<p class="m-title"><a href="/article/article_303952_1.html" title="最强蜗牛过去之塔怎么开 最强蜗牛过去之塔开启方法" target="_blank">最强蜗牛过去之塔怎么开 最强蜗牛过去之塔开启方法</a></p>
<div class="m-listinfo">在埃罗情报中学习亡灵黑经后，可解锁地图-过去，并且解锁第二页情报页。 </div>
<p class="m-listime"><span class="f-fl">时间：2020-10-21</span><span>人气：<i>6</i></span></p>
</div>
</li>
-->


</ul>

</div>
</dd>
<dt class="f-fr m-mainright">

<!-- 
<div class="m-rightdiv">
<h4 class="m-newstith4 clearfix"><span class="f-fl">${c.catename}本类导航</span><span class="f-fr"></span></h4>
<ul class="clearfix f-lifl m-newsnavul">
<c:forEach items="${mList}" var="aa" varStatus="sta">
<li><a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}">${aa.catename}<font color=red>[13561]</font></a></li>
</c:forEach>
</ul>
</div>
 -->

<div class="m-rightdiv">
<h4 class="m-newstith4 clearfix"><span class="f-fl">推荐文章</span><span class="f-fr"></span></h4>
<ul class="f-lifl clearfix m-imgul">

<c:set var="k" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${k<3}">
  <c:if test="${not empty cat}">  
  <li class="f-tw"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank"><img src="${a.picaddress}" alt="${a.articletitle}"><p><span>${a.articletitle}</span></p></a></li>
  </c:if>
 <c:if test="${ empty cat}">
 <li class="f-tw"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank"><img src="${a.picaddress}" alt="${a.articletitle}"><p><span>${a.articletitle}</span></p></a></li>
 </c:if>	
 <c:set var="k" value="${k+1}" />
</c:if> 	
</c:forEach> 


</ul>
<div class="m-zsdiv">
<ul class="m-zsul">




<c:set var="kk" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${kk<9}">
  <c:if test="${not empty cat}">  
  <li><p class="m-titbt"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></p><b></b></li>
  </c:if>
 <c:if test="${ empty cat}">
 <li><p class="m-titbt"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank">${a.articletitle}</a></p><b></b></li>
 </c:if>	
 <c:set var="kk" value="${kk+1}" />
</c:if> 	
</c:forEach> 



</ul>
<p class="m-utop"></p>
<p class="m-ubottom"></p>
</div>
</div>
<div class="m-hot">
<div class="m-rightdiv m-au-1"></div>
<div class="m-rightdiv">
<h4 class="m-newstith4 clearfix"><span class="f-fl">文章排行</span><span class="f-fr"></span></h4>
<ul class="m-blphul f-top3">
<!--
<li><a href="/article/article_302789_1.html" title="原神迪卢克选择什么武器 迪卢克武器选择推荐" target="_blank" class="m-nsmall"><em>1</em>原神迪卢克选择什么武器 迪卢克武器选择推荐</a></li>
<li><a href="/article/article_292517_1.html" title="原神魈怎么玩 原神魈全方位攻略解析" target="_blank" class="m-nsmall"><em>2</em>原神魈怎么玩 原神魈全方位攻略解析</a></li>
<li><a href="/article/article_302810_1.html" title="原神30级后没任务做什么 原神30级后怎么升级" target="_blank" class="m-nsmall"><em>3</em>原神30级后没任务做什么 原神30级后怎么升级</a></li><li><a href="/article/article_291933_1.html" title="原神兽肉哪里最多 原神兽肉获取方法详解" target="_blank" class="m-nsmall"><em>4</em>原神兽肉哪里最多 原神兽肉获取方法详解</a></li><li><a href="/article/article_302980_1.html" title="原神丘丘人萨满哪里多 原神萨满分布位置打法介绍" target="_blank" class="m-nsmall"><em>5</em>原神丘丘人萨满哪里多 原神萨满分布位置打法介绍</a></li><li><a href="/article/article_302759_1.html" title="原神轻策庄桥下宝箱怎么开 桥下宝箱开启方法" target="_blank" class="m-nsmall"><em>6</em>原神轻策庄桥下宝箱怎么开 桥下宝箱开启方法</a></li><li><a href="/article/article_302425_1.html" title="原神小姜在哪 原神捉迷藏小姜四个隐藏点分享" target="_blank" class="m-nsmall"><em>7</em>原神小姜在哪 原神捉迷藏小姜四个隐藏点分享</a></li><li><a href="/article/article_293408_1.html" title="原神菲谢尔最强圣遗物带什么好 菲谢尔圣遗物搭配攻略" target="_blank" class="m-nsmall"><em>8</em>原神菲谢尔最强圣遗物带什么好 菲谢尔圣遗物搭配攻略</a></li><li><a href="/article/article_293109_1.html" title="原神强力的四星武器 四星武器选择推荐" target="_blank" class="m-nsmall"><em>9</em>原神强力的四星武器 四星武器选择推荐</a></li><li><a href="/article/article_301628_1.html" title="原神温迪用什么武器 温迪武器选择推荐" target="_blank" class="m-nsmall"><em>10</em>原神温迪用什么武器 温迪武器选择推荐</a></li>
  -->
<c:forEach items="${clst}" var="a" varStatus="status" begin="1" step="1" end="15">
  <c:if test="${not empty cat}">    
  <li><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank" class="m-nsmall"><em>${status.index + 1}</em>${a.articletitle}</a></li>
  </c:if>
 <c:if test="${ empty cat}">
 <li><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" title="${a.articletitle}" target="_blank" class="m-nsmall"><em>${ status.index + 1}</em>${a.articletitle}</a></li>
 </c:if>		
</c:forEach> 


</ul>
</div>
</div>
</dt>
</dl>
<div class="g-new-foot g-main-bg clearfix">
<div class="g-new-footcont g-box-1200 ">
<p> <a href="https://www.qqtn.com/app/about.html">关于腾牛</a> | <a href="https://www.qqtn.com/app/contact.html">联系方式</a> | <a href="https://www.qqtn.com/app/history.html">发展历程</a> | <a href="https://www.qqtn.com/app/copyright.html">版权声明</a> | <a href="https://www.qqtn.com/app/help.html" style="cursor:help;">下载帮助(？)</a> | <a href="https://www.qqtn.com/app/adv.html">广告联系</a> | <a href="https://www.qqtn.com/app/map.html">网站地图</a> | <a href="https://www.qqtn.com/app/link.html">友情链接</a><script language="JavaScript" type="text/javascript" src="/skin/know/count.js"></script> </p>
<p> Copyright 2005-2020 QQTN.com <b>【腾牛网】</b> 版权所有 鄂ICP备19031707号-1 | <img src="https://www.qqtn.com/skin/new2013/images/gonganbeian.png">鄂公网安备 42011102000245号</p>
<p>声明： <span>本站非腾讯QQ官方网站</span> 所有软件和文章来自互联网 如有异议 请与本站联系 本站为非赢利性网站 不接受任何赞助和广告 </p></div>
</div>
<script src="/skin/new2017/js/news.js"></script>
</body>
</html>