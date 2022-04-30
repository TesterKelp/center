<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="多功能,功能,文本,处理,处理器" />
<meta name="description" content="TxtTool多功能文本处理器							" />
<link href="/template/960/css/css9.css" type=text/css rel=stylesheet>
<title>${article.articletitle}_${special.catename}_${m.item_name}_${site.sitename}</title>
</head>

<script>
ID="1647";
</script>

<body>
<%@ include file="/template/960/htmlheader.jsp"%>
<div class="mw">
	<div class="dh">
		<div style="float:right;margin-top:-5px;background:url(/images/search.jpg) left no-repeat;padding-left:100px;">

</div>
您现在的位置：<a href="/">首页</a> >> 
<a href="/${m.item_directorie}/portal.do">${m.item_name}</a> >> 
<a href="/${m.item_directorie}/${c2.catedirectory}/index.do">${c2.catename}>></a>  
<a href="/${m.item_directorie}/${c2.catedirectory}/${special.catedirectory}/index.do">${special.catename}</a> >> 内容


    </div>
	<div id="nw_left">
		<div id="web2l">
			<h1>${article.articletitle} </h1>
			<h3>时间：${article.creattime}</h3>
            
            
			<div id="content">
            	<!--  <div class="zhaiyao"><b>　　核心提示：</b>TxtTool多功能文本处理器							...</div> -->
            	
    
${article.articlecontent}
<br/>
<a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下"></a>
			</div>
				<div class="tags">Tags:
				
				<c:forEach items="${taglt}" var="a" varStatus="status" >
					<a href="/${m.item_directorie}/tag/${a.tagid}.do">${a.tagname}</a> &nbsp;
					  </c:forEach> 
				
			
				
				</div>


            <div id="copy">作者：<a href='/blog/${member.userid}.do'>${member.username} </a>　来源：网络</div>
<div id="ad468">


</div><br/><br/>


<!--高速版-->
<style>
  /* 打赏 */
.reward {
 padding: 5px 0
}
 
.reward .reward-notice {
 font-size: 15px;
 line-height: 14px;
 margin: 15px auto;
 text-align: center
}
 
.reward .reward-button {
 font-size: 28px;
 line-height: 58px;
 position: relative;
 display: block;
 width: 60px;
 height: 60px;
 margin: 0 auto;
 padding: 0;
 -webkit-user-select: none;
 text-align: center;
 vertical-align: middle;
 color: #fff;
 border: 1px solid #0087b4;
 border-radius: 50%;
 background: #0087b4;
 background: -webkit-gradient(linear,left top,left bottom,color-stop(100%,#2989d8),color-stop(100%,#207cca));
 background: -webkit-linear-gradient(top,#2989d8 100%,#207cca 100%);
 background: linear-gradient(to bottom,#2989d8 100%,#207cca 100%)
}
 
.reward .reward-code {
 position: absolute;
 top: -350%;
 left: 21%;
 display: none;
 width: 535%;
 height: 275%;
 margin-left: -265%;
 padding: 15px;
 border: 1px solid #e6e6e6;
 background: #fff;
 box-shadow: 0 1px 1px 1px #efefef
}
 
.reward .reward-button:hover .reward-code {
 display: block
}
 
.reward .reward-code span {
 display: inline-block;
 width: 150px;
 height: 150px
}
 
.reward .reward-code span.alipay-code {
 float: left
}
 
.reward .reward-code span.alipay-code a {
 padding: 0
}
 
.reward .reward-code span.wechat-code {
 float: right
}
 
.reward .reward-code img {
 display: inline-block;
 float: left;
 width: 150px;
 height: 150px;
 margin: 0 auto;
 border: 0
}
 
.reward .reward-code b {
 font-size: 14px;
 line-height: 26px;
 display: block;
 margin: 0;
 text-align: center;
 color: #666
}
 
.reward .reward-code b.notice {
 line-height: 2rem;
 margin-top: -1rem;
 color: #999
}
 
.reward .reward-code:after,.reward .reward-code:before {
 position: absolute;
 content: '';
 border: 10px solid transparent
}
 
.reward .reward-code:after {
 bottom: -19px;
 left: 50%;
 margin-left: -10px;
 border-top-color: #fff
}
 
.reward .reward-code:before {
 bottom: -20px;
 left: 50%;
 margin-left: -10px;
 border-top-color: #e6e6e6
}
  </style>


<!--
<div class="reward">
 <div class="reward-button">
 赏 
 <span class="reward-code">
 <span class="alipay-code">
 <img width="250" height="250" class="alipay-img wdp-appear" src="http://tts.hao828.com/DaShang/picture/alipayimg.png" alt="支付宝打赏" /><b>支付宝打赏</b>
 </span>
 <span class="wechat-code">
 <img width="250" height="250" class="wechat-img wdp-appear" src="http://tts.hao828.com/DaShang/picture/weipayimg.png" alt="微信打赏" /><b>微信打赏</b>
 </span>
 </span>
 </div>
 <p class="reward-notice">如果文章或资源对您有帮助，欢迎打赏作者。一路走来，感谢有您！</p>
</div>
-->


<br/>
          <!-- 
            <div class="sxart">
			<li>上一篇：<a href='/html/?1646.html'>文本变形器1.0</a></li><li>下一篇：<a href='/html/?1648.html'>多功能转换编码解码加密解密工具1.01</a></li>
            </div> -->  
		</div>
		
		<!--  
		<div id="web2l">
			<h6>相关信息</h6>
			<div id="marticle">
				<ul>
					<li>・<a href="/html/?1684.html">TXT文本报名登记名单反查1.0</a></li>
<li>・<a href="/html/?1680.html">TXT文本汉字批量拆字工具1.0免费绿色</a></li>
<li>・<a href="/html/?1678.html">TXT文本全角半角软件转换器1.0免费绿色</a></li>
<li>・<a href="/html/?1677.html">TXT文本内容批量合并器1.02免费绿色</a></li>
<li>・<a href="/html/?1649.html">文本行合并去重复，取相同行1.0软件版</a></li>
<li>・<a href="/html/?1648.html">多功能转换编码解码加密解密工具1.01</a></li>
<li>・<a href="/html/?1646.html">文本变形器1.0</a></li>
<li>・<a href="/html/?1558.html">TxtTool多功能文本编辑器1.0</a></li>
<li>・<a href="/html/?1556.html">TXT文本行去重工具1.01</a></li>
<li>・<a href="/html/?1538.html">鼠标自动点击器2018多功能版 V1.06</a></li>
<li>・<a href="/html/?1518.html">文本剪切板1.02.20190212</a></li>
<li>・<a href="/html/?1482.html">TXT文本多余空行过滤器1.0</a></li>
<li>・<a href="/html/?1429.html">文本转换语音助手1.02</a></li>
<li>・<a href="/html/?1223.html">多功能字符统计</a></li>
<li>・<a href="/html/?1217.html">文本字符替换</a></li>
<li>・<a href="/html/?1215.html">多功能文本处理</a></li>
<li>・<a href="/html/?1189.html">文本首字母转换大写</a></li>
<li>・<a href="/html/?1179.html">在线图片照片特效处理</a></li>
<li>・<a href="/html/?1158.html">批量图片处理</a></li>
<li>・<a href="/html/?1150.html">图像处理工具</a></li>

				</ul>
			</div>
            <div id="clear"></div>
		</div>
		 -->
		
        <div id="clear"></div>



		
	</div>
	<div id="nw_right">
		<div id="web2r"><div align="center">
<table>
<tr>
<td><img src="/pic/wx/weixin.jpg" style="width:85px;height:85px"></td>
<td><img src="/pic/wx/wdwx.jpg" style="width:85px;height:85px"></td>
<td><img src="/pic/wx/wxszjh.jpg" style="width:85px;height:85px"></td></tr>
<tr><td align="center">身在江湖</td><td align="center">我的微信</td><td align="center">测试攻城狮</td></tr></table>

</div>
</div>
		<div id="web2r">
			<h5>本类热门</h5>
			<ul id="list10">

<c:forEach items="${blst}" var="a" varStatus="status" begin="1" end="25" step="1">
                 	 <c:if test="${m.item_directorie != a.pdir}">
                 	<li><span style="float:right;font-style:italic;font-family:Arial; ">${a.creattime}</span>・<a href="/${m.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" >${a.articletitle}</a></li>
                 	</c:if>
                 	<c:if test="${m.item_directorie == a.pdir}">
                 	<li><span style="float:right;font-style:italic;font-family:Arial; ">${a.creattime}</span>・
                 	<a href="/${m.item_directorie}/${a.catedirectory}/article_${a.articleid}.do" >${a.articletitle}</a></li>
                 	</c:if>   
       			    </c:forEach> 

            </ul>
  		</div>
  		
 <!-- 		
		<div id="web2r">
			<h5>本类推荐</h5>
			<ul id="list10">
            	<li><span style="float:right;font-style:italic;font-family:Arial; ">10-09</span>・<a href="/html/?1656.html" >Png转换Svg1.01</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">10-08</span>・<a href="/html/?1655.html" >Windows启动文件管理工具1.0</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">10-06</span>・<a href="/html/?1653.html" >二维码图像解码器1.0</a></li>
            </ul>
  		</div>
        <div id="web2r">
			<h5>本类固顶</h5>
			<ul id="list10">
            	<li><span style="float:right;font-style:italic;font-family:Arial; ">01-04</span>・<a href="/html/?1647.html" >【VIP版】TxtTool多功能文本处理器1.39</a></li>
            </ul>
  		</div>
 --> 




	</div>
</div>

<div id="clear"></div>
<%@ include file="/template/960/footer.jsp"%>
</div>



</body>
</html>