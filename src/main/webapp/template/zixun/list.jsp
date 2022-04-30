<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
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
  <div class="flbox">
    <div class="news_list_t">您现在的位置是：<a href="/">首页</a>&nbsp;>&nbsp;<a href="/aiqing/">列表模板</a>&nbsp;>&nbsp;<a href="/aiqing/">格式1</a></div>
    <ul class="news_list_a">

			<c:forEach items="${lst}" var="a" varStatus="status">

				<li><a
					href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}"
					target="_blank" title=""><span>${a.creattime}</span>${a.articletitle}</a></li>
			</c:forEach>


 

    </ul>
    <div class="pagelist"><a title="Total record">&nbsp;<b>29</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/blog/index_2.html">2</a>&nbsp;<a href="/blog/index_3.html">3</a>&nbsp;<a href="/blog/index_2.html">下一页</a>&nbsp;<a href="/blog/index_3.html">尾页</a></div>
  </div>
  <div class="frbox">
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part03">
        <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/b01.jpg" alt=""></i>
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
          </a></li>
      </ul>
    </section>
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part04">
        <li><a href="" title="T" target="_blank"><i><img src="/template/zixun/images/part4.jpg" alt=""></i>
          <p>儿童睡眠不能少于7小时，否则易引发行为问题、认知和心理问题！复旦大学冯建峰课题组最新发现</p>
          </a></li>
        <li><a href="/" target="_blank" title="">河南郑州首位的哥确诊 寻找豫ATV968近期乘客</a></li>
        <li><a href="/" target="_blank" title="">新加坡一条暗藏春色的按摩街 虽多次被居民申诉 但仍在营业</a></li>
        <li><a href="/" target="_blank" title="">夫妻宅在老家太闷自制铁圈玩游戏，结果丈夫中奖，奖一个月家务活</a></li>
        <li><a href="/" target="_blank" title="">护航！英雄机长送四川医疗队赴汉</a></li>
        <li><a href="/" target="_blank" title="">黑龙江老汤带好哥们四处花钱，落网时，家里还有“好几十万”</a></li>
        <li><a href="/" target="_blank" title="">智障男遭火车碾毙 老父认尸办葬礼时“亡儿”现身</a></li>
        <li><a href="/" target="_blank" title="">黑龙江老汤带好哥们四处花钱，落网时，家里还有“好几十万”</a></li>
        <li><a href="/" target="_blank" title="">网购100万元口罩收不到货反遭拉黑，小心紧俏品后暗藏诈骗</a></li>
      </ul>
    </section>
    <section>
      <h2 class="news_t">百家专栏</h2>
      <ul class="news_part05">
        <li><a href="" title="" target="_blank"><i><img src="/template/zixun/images/part501.jpg" alt=""></i>
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
      </ul>
    </section>
    <section>
      <h2 class="news_t">热门新闻</h2>
      <ul class="news_part06">
        <li><a href="/" target="_blank" title="">儿童睡眠不能少于7小时，否则易引发行为问题、认知和心理问题！复旦大学冯建峰课题组最新发现</a></li>
        <li><a href="/" target="_blank" title="">河南郑州首位的哥确诊 寻找豫ATV968近期乘客</a></li>
        <li><a href="/" target="_blank" title="">新加坡一条暗藏春色的按摩街 虽多次被居民申诉 但仍在营业</a></li>
        <li><a href="/" target="_blank" title="">夫妻宅在老家太闷自制铁圈玩游戏，结果丈夫中奖，奖一个月家务活</a></li>
        <li><a href="/" target="_blank" title="">护航！英雄机长送四川医疗队赴汉</a></li>
        <li><a href="/" target="_blank" title="">黑龙江老汤带好哥们四处花钱，落网时，家里还有“好几十万”</a></li>
        <li><a href="/" target="_blank" title="">智障男遭火车碾毙 老父认尸办葬礼时“亡儿”现身</a></li>
        <li><a href="/" target="_blank" title="">黑龙江老汤带好哥们四处花钱，落网时，家里还有“好几十万”</a></li>
        <li><a href="/" target="_blank" title="">网购100万元口罩收不到货反遭拉黑，小心紧俏品后暗藏诈骗</a></li>
        <li><a href="/" target="_blank" title="">夫妻宅在老家太闷自制铁圈玩游戏，结果丈夫中奖，奖一个月家务活</a></li>
      </ul>
    </section>
  </div>
  <div class="clearblank"></div>
</article>
<footer>
  <p>Copyright © 2019-2020 Yangqq.com, All Rights Reserved.</p>
  <p>版权所有：<a href="https://www.yangqq.com/" target="_blank">杨青青个人博客</a> 技术支持：<a href="https://www.yangqq.com/" target="_blank">天津青于蓝科技有限公司</a> <a href="/" target="_blank">XML网站地图</a> <a href="/" target="_blank">百度统计</a> </p>
  <p>备案号：<a href="/" target="_blank">津ICP备19004899</a> <img src="images/ga.png">公安备案号 12011602000311</p>
</footer>
<a href="#" title="返回顶部" class="icon-top"></a>
</body>
</html>
