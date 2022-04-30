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
  <div class="flbox">
    <div class="news_list_t">您现在的位置是：<a href="/">首页</a>&nbsp;>&nbsp;<a href="/aiqing/">内容模板</a></div>
    <div class="container">
     <c:forEach items="${lst}" var="a" varStatus="status">
    
      <h1>${a.articletitle}</h1>
      <div class="info"><span>青于蓝资讯平台</span><span>日期：${a.creattime}</span><span>点击：230</span></div>
      <div class="content">
      
      ${a.articlecontent}
      </c:forEach> 
      
  
      </div>
      <div class="tags"> <a href="/" target="_blank">个人博客</a> &nbsp; <a href="/" target="_blank">帝国cms</a> </div>
    </div>
    <div class="statement"> <i><img src="/template/zixun/images/wxgzh.jpg">关注公众号</i>
      <p>青于蓝中文资讯倾力打造互联网数据资讯、行业资源、电子商务、移动互联网、网络营销平台。</p>
      <p>每日持续更新报道IT业界、互联网、市场资讯、驱动更新、游戏及产品资讯,是最及时权威的产业资讯及硬件资讯报道平台。</p>
      <p>转载内容版权归作者及来源网站所有，本站原创内容转载请注明来源。</p>
    </div>
    <div class="info-pre-next">
      <ul>
        <li><a href="/"><i><em>上一篇</em><img src=""></i>
          <h2>程序员请放下你的技术情节，与你的同伴一起进步</h2>
          <p>作为一名技术人员，你对公司的业务发展能够提出自己的建议吗？ 你有能力说服工作伙伴和主管来采纳你的提议吗？ 能够集思广益，融众人之所长吗？ 我认为，一个真正优秀的技术人才，应当具备这种多方面的能力，除了技术专长，他具备说服能力，集思广益， 能够有力地推动事情的发展。企业也应当提供机会，让技术人员参与更广阔的工作，而不仅仅是写代码和完成需求功能。</p>
          </a></li>
        <li><a href="/"><i><em>下一篇</em><img src="https://www.yangqq.com/d/file/news/life/2018-06-17/917d732926d79cc2ae1012831ce51d1e.jpg"></i>
          <h2>安静地做一个爱设计的女子</h2>
          <p>对于个人博客模板，我一直坚持这样一个原则，那就是不仅漂亮，而且代码要少！因为要做出精美的个人博客模板是需要大量的时间投入的，没有一个人可以轻而易举的搞定一套个人博客模板，尤其是针对性（或专业性）极强的模板，一份好的模板，要求其代码在精炼的同时还要漂亮，后期内容上了，还要利于网站收录。</p>
          </a></li>
      </ul>
    </div>
    <div class="otherlink">
      <h2 class="news_t">相关文章</h2>
      <ul>
        <li><a href="/" target="_blank" title="">河南郑州首位的哥确诊 寻找豫ATV968近期乘客</a></li>
        <li><a href="/" target="_blank" title="">新加坡一条暗藏春色的按摩街 虽多次被居民申诉 但仍在营业</a></li>
        <li><a href="/" target="_blank" title="">夫妻宅在老家太闷自制铁圈玩游戏，结果丈夫中奖，奖一个月家务活</a></li>
        <li><a href="/" target="_blank" title="">护航！英雄机长送四川医疗队赴汉</a></li>
        <li><a href="/" target="_blank" title="">黑龙江老汤带好哥们四处花钱，落网时，家里还有“好几十万”</a></li>
      </ul>
    </div>
    <div class="clearblank"></div>
    <div class="pinglun-box">
      <h2 class="news_t">文章评论</h2>
    </div>
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
