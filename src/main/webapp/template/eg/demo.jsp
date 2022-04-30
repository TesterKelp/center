<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<style>
article {
    width: 1000px;
    margin: 80px auto 0;
    overflow: hidden;
    z-index: 999;
}

</style>






<article>
<main>
<style>
a {
    text-decoration: none;
    color: #444;
    font: 15px "Microsoft YaHei", Arial, Helvetica, sans-serif; color: #555;  line-height: 1.5; 
}
main { overflow: hidden; clear: both; width: 68%; float: left; z-index: 1; display: block; position: relative;margin-right:10px }
/*news_box*/
.news_box { width: 100% }
.news_box li { width: 44.5%; float: left; background:#fff; padding: 15px; overflow: hidden; color: #797b7c; margin-bottom: 10px;border: 1px solid #ddd;}
.news_box li:nth-child(2n) { float: right }
.news_box li h3 { font-size: 15px; font-weight: normal; line-height: 25px; text-shadow: #FFF 1px 1px 1px; height: 80px; display: table-cell; vertical-align: middle; }
.news_box li h3 a { color: #222 }
.news_box li img { width: 100%; -webkit-transition: all 0.5s; -moz-transition: all 0.5s; transition: all 0.5s; }
.news_box li i { width: 120px; display: block; height: 80px; overflow: hidden; float: left; margin-right: 20px }
.news_box li:hover img { transform: scale(1.05) }
.news_box li:hover h3 a { color: #3690cf; }



</style>

<div class="news_box">
    <ul>
          <li><i><a href="/life/11.html" title="我是怎么评价自己的？" target="_blank"><img src="http://www.yangqq.com/d/file/news/s/2018-07-28/95d1b1577a8a7aa4fe3893f2502617e9.jpg"></a></i>
        <h3><a href="/life/11.html" title="我是怎么评价自己的？" target="_blank">我是怎么评价自己的？</a></h3>
      </li>
            <li><i><a href="/life/14.html" title="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?" target="_blank"><img src="http://www.yangqq.com/d/file/news/life/2018-06-29/75842f4d1e18d692a66c38eb172a40ab.jpg"></a></i>
        <h3><a href="/life/14.html" title="作为一个设计师,如果遭到质疑你是否能恪守自己的原则?" target="_blank">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></h3>
      </li>
            <li><i><a href="/life/15.html" title="Come on,行动起来吧!我们和时间来一场赛跑!" target="_blank"><img src="http://www.yangqq.com/d/file/news/life/2018-03-12/7b23e40fd0e148e991c6a04b8e9612ab.jpg"></a></i>
        <h3><a href="/life/15.html" title="Come on,行动起来吧!我们和时间来一场赛跑!" target="_blank">Come on,行动起来吧!我们和时间来一场赛跑!</a></h3>
      </li>
            <li><i><a href="/life/19.html" title="即便是坑，我也想要拉你入伙！" target="_blank"><img src="http://www.yangqq.com/d/file/news/s/2014-06-14/072f267a54748c6e71d40a2d03978993.jpg"></a></i>
        <h3><a href="/life/19.html" title="即便是坑，我也想要拉你入伙！" target="_blank">即便是坑，我也想要拉你入伙！</a></h3>
      </li>
            <li><i><a href="/life/57.html" title="再看4年前某婚恋网站我的十条征婚条件" target="_blank"><img src="http://www.yangqq.com/d/file/news/s/2013-11-25/6abfdd1f080561acedbd2606210951eb.png"></a></i>
        <h3><a href="/life/57.html" title="再看4年前某婚恋网站我的十条征婚条件" target="_blank">再看4年前某婚恋网站我的十条征婚条件</a></h3>
      </li>
            <li><i><a href="/life/58.html" title="抄袭门过后——丢掉心结，重拾自己" target="_blank"><img src="http://www.yangqq.com/d/file/news/s/2013-11-22/5fafd3ebc31c323311092c440bcf41bf.jpg"></a></i>
        <h3><a href="/life/58.html" title="抄袭门过后——丢掉心结，重拾自己" target="_blank">抄袭门过后——丢掉心结，重拾自己</a></h3>
      </li>
          </ul>
  </div>
</main>





<div style="float:left;width:25%">
<style>

.r_box { width: 100%; float: right ;}
.r_box h2 { color: #333; font-size: 14px; line-height: 30px; padding-left: 20px; background: #f8f8f8;    border-bottom: 1px solid #ddd;  }
.r_box div { background: #fff; margin-bottom: 20px; overflow: hidden ;border: 1px solid #ddd; }
.r_box div ul { padding: 10px; overflow: hidden }
.r_box h2 { color: #333; font-size: 14px; line-height: 30px; padding-left: 20px; background: #f8f8f8;    border-bottom: 1px solid #ddd;  }
.about_me img { width: 100%; border-radius: 10% }
.about_me p { line-height: 24px; font-size: 14px }
.about_me i { width: 120px; float: left; clear: left; margin-right: 10px; height: 90px; overflow: hidden }

</style>

<aside class="r_box" >
      <div class="about_me">
        <h2>博主简介</h2>
        <ul>
          <i><img src="${useravatar }"></i>
          <p>   ${introduce}</p>
        </ul>
      </div>
 </aside>

</div>
</article>










</body>
</html>