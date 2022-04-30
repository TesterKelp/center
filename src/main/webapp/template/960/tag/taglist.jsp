<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="电脑软件" />
<link href="/template/960/css/css9.css" type=text/css rel=stylesheet>
<title>电脑软件-hao828.com </title>
</head>
<body>


<%@ include file="/template/960/htmlheader.jsp"%>


<div class="mw">
	<div class="dh">
<!-- 		
		<div style="float:right;margin-top:-5px;background:url(/images/search.jpg) left no-repeat;padding-left:100px;">
<form id="form1" name="form1" method="post" action="/Search.asp?action=search" target="_blank">
<input name="KeyWord" type="text" id="KeyWord" value="" maxlength="10" size="13" class="borderall" style="height:17px;"/>
  <select name="bbs" id="bbs">
    <option value="1">站内搜索</option>
    <option value="3">百度站内</option>
    <option value="4">百度搜索</option>
    <option value="5">360搜索</option>
    <option value="6">搜狗搜索</option>
  </select>
<input type="submit" name="Submit" value="搜 索" class="borderall" style="height:21px;"/>
</form>
</div>  -->

你现在的位置:<a href="/index.${kuo}">网站首页</a> >
         <a href="/${item}/portal.${kuo}">频道首页</a> >
         <a href="/${item}/tag/index.${kuo}">频道tag标签</a> >    
         <a href="/${item}/tag/${tag.tagid}.do"> ${tag.tagname} </a>
                         
    </div>
	<div id="nw_left">

		<div id="web2l">
        	<h6>${tag.tagname}</h6>
			<div id="content">
            	<ul id="listul">





<c:forEach items="${lst}" var="a" varStatus="status">
  <c:if test="${a.pdir!=item}">    
 
  				<li><div style="float:left;margin:5px 5px 0 5px;">
				<a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
				<img src="${a.picaddress}" style="width:150px;height:90px;" alt="${a.articletitle }"/></a></div>
				<a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle }</a></li>
                <div class="box" style="height:65px;">	<c:if test="${fn:length(a.articleitd)>100 }">${ fn:substring( a.articleitd ,0,100)} ...</c:if>
                <c:if test="${fn:length(a.articleitd)<=100 }">${  a.articleitd }</c:if></div>
                <hr style="height:1px;border:0;border-bottom:1px dashed #ccc;">
  </c:if>
 <c:if test="${a.pdir==item}">
 
  				<li><div style="float:left;margin:5px 5px 0 5px;">
				<a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
				<img src="${a.picaddress}" style="width:150px;height:90px;" alt="${a.articletitle }"/></a></div>
				<a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle }</a></li>
                <div class="box" style="height:65px;"><c:if test="${fn:length(a.articleitd)>100 }">${ fn:substring( a.articleitd ,0,100)} ...</c:if>
                <c:if test="${fn:length(a.articleitd)<=100 }">${  a.articleitd }</c:if></div>
                <hr style="height:1px;border:0;border-bottom:1px dashed #ccc;"> 
 </c:if>		
</c:forEach>         








<!-- 
				<li><div style="float:left;margin:5px 5px 0 5px;">
				<a href="/html/?1688.html" target="_blank">
				<img src="/UploadFiles/202005/2020052736932381.png" style="width:90px;height:90px;" alt="时间戳转换工具1.0"/></a></div>
				<a href="/html/?1688.html" target="_blank">时间戳转换工具1.0</a>
				<span style="color:#AAA;font-size:12px;">2020-05-27 点击：579 评论:0</span></li>
                <div class="box" style="height:65px;">	时间戳转换工具			百度网盘：链接:https://pan.baidu.com/s/1AYUzZ3m-xb7-vt6zqH2i2Q提取码: 1ubb...</div>
                <hr style="height:1px;border:0;border-bottom:1px dashed #ccc;">
 -->

				</ul>
			</div>
<div id="clear"></div>
<div id="page">
	<ul>
<li><a href="/class.asp?id=49">首　页</a></li>
<li><span>上一页</span>
<li><span>1</span></li>
<li><a href="/class.asp?id=49&page=2">2</a></li>
<li><a href="/class.asp?id=49&page=3">3</a></li>
<li><a href="/class.asp?id=49&page=2">下一页</a></li>
<li><a href="/class.asp?id=49&page=18">末　页</a></li>
<li><span><select name='select' onChange='javascript:window.location.href=(this.options[this.selectedIndex].value);'>
<option value="/class.asp?id=49" selected="selected">1</option>
<option value="/class.asp?id=49&page=2">2</option>
<option value="/class.asp?id=49&page=3">3</option>
<option value="/class.asp?id=49&page=4">4</option>
<option value="/class.asp?id=49&page=5">5</option>
<option value="/class.asp?id=49&page=6">6</option>
<option value="/class.asp?id=49&page=7">7</option>
<option value="/class.asp?id=49&page=8">8</option>
<option value="/class.asp?id=49&page=9">9</option>
<option value="/class.asp?id=49&page=10">10</option>
<option value="/class.asp?id=49&page=11">11</option>
</select></span></li>
<li><span><input type="text" onClick="this.value='';" onKeyDown="var intstr=/^\d+$/;if(intstr.test(this.value)&&this.value<=18&&this.value>=1&&event.keyCode==13){if(this.value==1){location.href='/class.asp?id=49';}else{location.href='/class.asp?id=49&page=' + this.value + '';}}" value="GO" size="3" maxlength="5"" /></span></li>
<li><span>共<font color="#009900"><b>179</b></font>条记录 10条/每页</span></li>
    </ul>
</div>
        </div>

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
            	<li><span style="float:right;font-style:italic;font-family:Arial; ">01-04</span><font class='laoynoi1'>01</font>.<a href="/html/?1647.html" >【VIP版】TxtTool多功能文本处理器1.39</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">04-19</span><font class='laoynoi1'>02</font>.<a href="/html/?1632.html" >人类寿命科学计算器1.0</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">07-19</span><font class='laoynoi1'>03</font>.<a href="/html/?1456.html" >电脑图像工具箱1.9.20180102</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">02-07</span><font class='laoynoi2'>04</font>.<a href="/html/?1585.html" >百度API token获取器1.0</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">01-22</span><font class='laoynoi2'>05</font>.<a href="/html/?1446.html" >中医中草药图库查询系统1.02.20160122</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">01-22</span><font class='laoynoi2'>06</font>.<a href="/html/?1447.html" >中医中药处方大全1.01.20160122</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">07-19</span><font class='laoynoi2'>07</font>.<a href="/html/?1455.html" >电脑硬件工具箱1.74.20180108</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">01-22</span><font class='laoynoi2'>08</font>.<a href="/html/?1449.html" >中医穴位查询系统1.02.20160122</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">01-22</span><font class='laoynoi2'>09</font>.<a href="/html/?1444.html" >中医偏方秘方大全查询1.4.20160122</a></li>
<li><span style="float:right;font-style:italic;font-family:Arial; ">01-12</span><font class='laoynoi2'>10</font>.<a href="/html/?1679.html" >网站链接抓取电脑软件版1.0免费绿色</a></li>

            </ul>
  		</div>




        <div id="web2r">
			<h5>图片推荐</h5>
			<ul class="topimg">
                <dl><dt><a href="/html/?1688.html" target="_blank"><img src="/UploadFiles/202005/2020052736932381.png" alt="时间戳转换工具1.0" style="border:1px solid #ccc;padding:2px;width:60px;height:60px;"></a></dt><dd><h2><a href="/html/?1688.html" target="_blank">时间戳转换工具1.0</a></h2><div>	时间戳转换工具			百度网盘：链接:https://pan.baidu.com/s/1AYUzZ3m-xb7-vt6zqH2i2Q提取码: 1ubb</div></dd></dl><dl><dt><a href="/html/?1687.html" target="_blank"><img src="/UploadFiles/202005/2020052573531609.png" alt="全国手机号归属地批量查询" style="border:1px solid #ccc;padding:2px;width:60px;height:60px;"></a></dt><dd><h2><a href="/html/?1687.html" target="_blank">全国手机号归属地批量查询</a></h2><div>全国手机号归属地批量查询</div></dd></dl><dl><dt><a href="/html/?1519.html" target="_blank"><img src="/UploadFiles/202004/2020041181714193.png" alt="RES资源文件生成器1.01" style="border:1px solid #ccc;padding:2px;width:60px;height:60px;"></a></dt><dd><h2><a href="/html/?1519.html" target="_blank">RES资源文件生成器1.01</a></h2><div>RES资源文件生成器。</div></dd></dl><dl><dt><a href="/html/?1686.html" target="_blank"><img src="/UploadFiles/202003/2020030877914609.png" alt="便捷分类信息管理系统1.02" style="border:1px solid #ccc;padding:2px;width:60px;height:60px;"></a></dt><dd><h2><a href="/html/?1686.html" target="_blank">便捷分类信息管理系统1.02</a></h2><div>便捷分类信息管理系统，绿色设计免安装，支持无限分类信息管理。</div></dd></dl>
            </ul>
  		</div>

 <div id="web2r">
<h5> </h5>
	<ul id="list10">
            	
            </ul>
  		</div>

	</div>
</div>
<%@ include file="/template/960/footer.jsp"%></div>
</body>
</html>
