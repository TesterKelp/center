<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${firstName}氏免费起名_>${firstName}氏取名_${firstName}氏姓名大全_${firstName}姓名字大全_${firstName}姓名大全第${pageNumber}页</title>
<meta name="description" content="${firstName}姓名大全，_${firstName}氏姓名，${firstName}姓名字解析测试，${firstName}姓名的好坏,${firstName}姓名五行"/>
<meta name="Keywords" Content="${firstName}姓五格解析，${firstName}姓五格测试，${firstName}姓名五格解析测试，${firstName}姓名字好不好，${firstName}姓名字测试" />
<meta charset="utf-8">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/name/name/layout.css"  rel="stylesheet"  type="text/css" />
<link href="/template/name/name/tables.css"  rel="stylesheet"  type="text/css" />
</head>
<body >
	<%@ include file="/template/name/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">  
		<div class="row">
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" ><br>
							<h2 align="center"><b> 《${firstName}氏》姓名大全</b></h2><Br>
					<div class="col-lg-12"
						style="margin-top: 0px; margin-left: 30px; padding-right: 135px;">
						<table>
							<tr>
								<td width="250px" align="left"  style="border:1px solid #00a0e9">
									<a href="#">中国姓氏:【${firstName}氏】 </a><br> <a href="#">收录名字:【${TotalRecord}个】</a><br> 
									欢迎加入千人QQ群名字世界：814811960
									
								</td>
								<td width="550px" align="left" style="border:1px solid #00a0e9">	
								1.当前收录名字共计${TotalRecord}个,共计${pages}页。当前显示为其中一页。<Br>
								2.如果没有显示分页，请扫描二维码，关注公众号，回复数字'666',即可获取验证码。<Br>
								3.在下方文本框中输入验证码，点击右侧的"查看全部名字"按钮。即可显示所有分页。<Br>
								<input type="text" id="ma" name="ma" placeholder="请输入验证码  " siz="15" style="margin-bottom: 0px; margin-top: 8px; width:132px">
									<input type="button" onclick="Lo()" value="查看全部名字" />
								</td>
								<td  style="border:1px solid #00a0e9;width:110px">
								<img src="/pic/wx/wxszjh.jpg"  width="100" height="100"></td>
								<td  style="border:1px solid #00a0e9">	
								姓氏大全中还没有我的名字，请输入您的名字，然后点击提交按钮！<Br>
								<input type="text" id="myname" name="myname" placeholder="请输入您的名字  " siz="15" style="margin-bottom: 0px; margin-top: 8px; width:132px">
									<input type="button" onclick="myname()" value="提交我的名字" />
								</td>
							</tr>
						</table>
					</div>

<div class="col-lg-12" align="center" id="pp"  style="height:50px;margin-top:0px;background:#99CCFF"><Br>
分页：
 <c:forEach var="i" begin="1" end="${pages}" step="1">  
   
                     <a href="/${item}/${nameId}/name_${i}.do" style="padding:8px;margin-right:15px;width:55px;border:1px solid #337ab7">${i}</a>
                  
    		  </c:forEach> 
</div>

				<div class="col-lg-12">
					<div >
						<div id="hpage" style="margin-left: 45px; padding-right: 65px;">
							<div id="righ">
								<ul>
									<lli> 
									<c:forEach items="${name}" var="a"    varStatus="v">
									 <div class="imgh3" ><a href="/name/${nameId}/${a.id}_N.${suffix}">${firstName}${a.fullname}</a></div>
								    </c:forEach>
								 
									</lli>
								</ul>
								<br class="clear" />
							</div>
							<br class="clear" />
								
						</div>
					</div>
				</div>
	
		</div>

	</div>
</div>
</div>

	<%@ include file="/template/name/footer.jsp"%> 
	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/template/name/kjs/common.js"></script>
    <script src="/template/name/kjs/namelist.js"></script>

</body>

</html>