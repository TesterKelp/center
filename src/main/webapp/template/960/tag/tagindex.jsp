<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>最新的搜索引擎排行榜 每日更新</title> <!---->
<meta name="keywords" content="搜索引擎排行，搜索排行，搜索引擎使用排行，搜索引擎占有率" />
<meta name="description" content="网民使用搜索引擎偏好." />
<link href="/template/960/css/css9.css" type=text/css rel=stylesheet>
</head>

<!--JS容错代码开始-->
<script type="text/javascript">
function killErrors() {
return true;
}
window.onerror = killErrors;
</script>
<!--JS容错代码结束-->

<!--JS网页窗口最大化开始-->
<script>
self.moveTo(0,0)
self.resizeTo(screen.availWidth,screen.availHeight)
</script>
<!--JS网页窗口最大结束-->




<body>
<%@ include file="/template/960/htmlheader.jsp"%>
<div class="mw">
	<div class="dh">
	
	<!-- 	<div style="float:right;margin-top:-5px;background:url(/images/search.jpg) left no-repeat;padding-left:100px;"></div> -->
你现在的位置:<a href="/index.${kuo}">网站首页</a> >
         <a href="/${item}/portal.${kuo}">频道首页</a> > 
         <a href="/${item}/portal.${kuo}">频道tag标签</a> >    
         <a href="/${item}/tag/${tag.tagid}.do"> ${tag.tagname} </a>
                         


    </div>
    
    
<div id="clear"></div>
<div id="webcopy">
<div class="DiypageMenu">
<!-- 
<DIV class=bshare-custom>

</DIV> -->
</div> </div></div>

<div id="webcopy">
<div class="DiypageMenu">
</div></div>

<div id="clear"></div>

<div id="content" style="min-height:600px;">
<!-- <h2>title</h2>  -->

 	<c:forEach items="${lst}" var="a" varStatus="status">

  <li style="min-width:150px;float:left;line-height:25px;text-align:left;padding-left:10px;"><a href="/${item}/tag/${a.tagid}.${kuo}">${a.tagname}</a></li>
	
</c:forEach>  



<!-- 
<table width=100% border=1 cellpadding="1"  cellspacing=1 class="bbsborder">
  <tr>
    <td height="22"  id="web2r">　<strong>最近更新</strong>
</td>
    <td  id="web2r">　<strong>本网推荐</strong></td>
    <td height="22"  id="web2r">　<strong>一周热门</strong></td>
  </tr>
  <tr>
    <td  id="web2r2"><li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1688.html" target="_blank" >时间戳转换工具1.0</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1687.html" target="_blank" >全国手机号归属地批量查询</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1519.html" target="_blank" >RES资源文件生成器1.01</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1686.html" target="_blank" >便捷分类信息管理系统1.02</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1685.html" target="_blank" >绿色硬件工具箱1.05</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1684.html" target="_blank" >TXT文本报名登记名单反查1.0</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1683.html" target="_blank" >多时段闹铃提醒免费电脑软件版1.0</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1682.html" target="_blank" >字符十六进制相互转换器1.0免费软件</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1681.html" target="_blank" >姓名名单快速排序软件工具1.0免费绿色</a></li>
<li>[<a href="/class.asp?id=49">电脑软件</a>]<a href="/html/?1680.html" target="_blank" >TXT文本汉字批量拆字工具1.0免费绿色</a></li>

</td>
    <td  id="web2r2"><li><font class='laoynoi1'>01</font>.<a href="/html/?1656.html" target="_blank" >Png转换Svg1.01</a></li>
<li><font class='laoynoi1'>02</font>.<a href="/html/?1655.html" target="_blank" >Windows启动文件管理工具1.0</a></li>
<li><font class='laoynoi1'>03</font>.<a href="/html/?1653.html" target="_blank" >二维码图像解码器1.0</a></li>
<li><font class='laoynoi2'>04</font>.<a href="/html/?1649.html" target="_blank" >文本行合并去重复，取相同行1.0软件版</a></li>
<li><font class='laoynoi2'>05</font>.<a href="/html/?1632.html" target="_blank" >人类寿命科学计算器1.0</a></li>
<li><font class='laoynoi2'>06</font>.<a href="/html/?1624.html" target="_blank" >采集链接生成工具</a></li>
<li><font class='laoynoi2'>07</font>.<a href="/html/?1570.html" target="_blank" >电脑网络连接查看器1.0</a></li>
<li><font class='laoynoi2'>08</font>.<a href="/html/?1523.html" target="_blank" >二维码条形码图像识别工具1.0</a></li>
<li><font class='laoynoi2'>09</font>.<a href="/html/?1514.html" target="_blank" >房屋出租管理系统1.0</a></li>
<li><font class='laoynoi2'>10</font>.<a href="/html/?1513.html" target="_blank" >文件名批量修改1.01</a></li>
</td>
    <td  id="web2r2"><li>没有</li>
</td>
  </tr>
</table> -->

</div>


<div id="clear"></div>
<%@ include file="/template/960/footer.jsp"%>
</div>

</body>
</html>

