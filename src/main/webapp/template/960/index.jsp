<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="旗下产品" />
<link href="/template/960/css/css9.css" type=text/css rel=stylesheet>
<title>${c.catename}_${m.item_name}_${site.sitename}</title>
</head>
<body>
<%@ include file="/template/960/htmlheader.jsp"%>
<div class="mw">
	<div class="dh">
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
</div> 
您现在的位置：<a href="/">首页</a> >> <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a>>> <a href="/class.asp?id=48">${c.catename}</a> >> 列表
    </div>
	<div id="nw_left">

		<div id="web2l" style="border:0;">
				<c:forEach items="${mList}" var="aa" varStatus="sta">
						<c:set var="index" value="1" />
					 <div id="sclass" class="borderall"  style="margin-left:4px;"> 
							<h6><span><a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}">more...</a></span>
							<a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}">${aa.catename}</a></h6>
							<ul>
								<c:forEach items="${clst}" var="a" varStatus="status">
									<c:if test="${index<11}">
										<c:if test="${aa.catename == a.catename }">
											<li><span style="float:right;font-style:italic;font-family:Arial; ">${a.creattime}</span>
											・<a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank" >${a.articletitle}</a></li>	
											<c:set var="index" value="${index+1}" />
										</c:if>
									</c:if>
								</c:forEach>
								</ul>
			</div>
					</c:forEach>
			
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


<c:set var="index" value="1" />
		<c:forEach items="${clst}" var="a" varStatus="status">
	<c:if test="${index<10}">
	<li><span style="float:right;font-style:italic;font-family:Arial; ">${a.creattime}</span>
	<font class='laoynoi1'>${index}</font>.<a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle}</a></li>
	<c:set var="index" value="${index+1}" />
	</c:if>
		</c:forEach>


            </ul>
  		</div>




        <div id="web2r">
			<h5>图片推荐</h5>
			<ul class="topimg">
                
            <c:set var="index" value="1" />
		<c:forEach items="${clst}" var="a" varStatus="status">
			<c:if test="${index<8}">		
			<dl><dt><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
                <img src="${a.picaddress}" alt="${a.articletitle}" style="border:1px solid #ccc;padding:2px;width:90px;height:60px;"></a>
                </dt><dd><h2><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a>
                </h2><div>	</div></dd>
                </dl>
			<c:set var="index" value="${index+1}" />
			</c:if>
		</c:forEach>
            
            
            
            
            
            
            
            
            
            
            
            </ul>
  		</div>

 <div id="web2r">
<h5> </h5>
	<ul id="list10">
            	
            </ul>
  		</div>

	</div>
</div>

<%@ include file="/template/960/footer.jsp"%>

</div>


</body>
</html>