<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html id="Content">
<head>
<meta charset="UTF-8">
<title>${site.sitename}</title>
<meta content="${site.keyword}" name="Keywords">
<meta name="description" content="${site.depict}" />
<script src="/test/js/jquery.min.js?v=2.1.4"></script>
<script src="/layer/layer.js"></script>
<script src="/index/js/tanchuang.js"></script>
<link rel="stylesheet" type="text/css" href="/index/css/main.css"/>
<link href="/index/css/AeroWindow.css?r=123" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/index/js/jquery-1.4.2.min.js"></script> 
<script type="text/javascript" src="/index/js/jquery-ui-1.8.1.custom.min.js"></script> 
<script type="text/javascript" src="/index/js/jquery.easing.1.3.js"></script>         
<script type="text/javascript" src="/index/js/jquery-AeroWindow.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	/***	$('#Window1').AeroWindow({
		WindowTitle:          'Window 1 - Happy OutBounce',
		WindowPositionTop:    'center',
		WindowPositionLeft:   'center',
		WindowWidth:          320,
		WindowHeight:         200,
		WindowAnimation:      'easeOutBounce'        
	});  
	
	$('#Firefoxapp').AeroWindow({
		WindowTitle:          'FireFox',
		WindowPositionTop:    'center',
		WindowPositionLeft:   'center',
		WindowWidth:          700,
		WindowHeight:         500,
		WindowAnimation:      'easeOutCubic'
	});
	**/
	
	$('#Login').click(function() {
		$('#Window1').AeroWindow({
			WindowTitle:          'Window 加我微信',
			WindowPositionTop:    'center',
			WindowPositionLeft:   'center',
			WindowWidth:          320,
			WindowHeight:         200,
			WindowAnimation:      'easeOutBounce' 
		});
	});
	

	
	
	$('#Firefoxicon').click(function() {
		$('#Firefoxapp').AeroWindow({
			WindowTitle:          'FireFox1',
			WindowPositionTop:    'center',
			WindowPositionLeft:   'center',
			WindowWidth:          700,
			WindowHeight:         500,
			WindowAnimation:      'easeOutCubic',
			WindowResizable:      true
		});
	});
	
	$('#Twittericon').click(function() {
		$('#Window2').AeroWindow({
			WindowTitle:          'jQuery Twitter',
			WindowPositionTop:    'center',
			WindowPositionLeft:   'center',
			WindowWidth:          550,
			WindowHeight:         300,
			WindowAnimationSpeed: 1000,
			WindowAnimation:      'easeOutCubic',
			WindowResizable:      true,
			WindowDraggable:      true,
			WindowMinimize:       true,
			WindowMaximize:       true,
			WindowClosable:       true
		});
	});
	
});





</script>

<style>

#iconContainer {
	position: absolute;
	top:      10px;
	left:     5px;
	width:    auto;
	height:   auto;
}
#iconContainer div {
	width:    70px;
	height:   70px;
	margin-bottom: 10px;
}
</style>


<!--  右键菜单开始 -->

<style type="text/css">
html,body{height:100%;overflow:hidden;}
body,div,uul,lii{margin:0;padding:0;}
body{font:12px/1.5 \5fae\8f6f\96c5\9ed1;}
uul{list-style-type:none;}
#rightMenu{position:absolute;top:-9999px;left:-9999px;}
#rightMenu uul{float:left;border:1px solid #979797;background:#f1f1f1 url(/index/rightkey/pic/line.png) 24px 0 repeat-y;padding:2px;box-shadow:2px 2px 2px rgba(0,0,0,.6);}
#rightMenu uul lii{float:left;clear:both;height:24px;cursor:pointer;line-height:24px;white-space:nowrap;padding:0 30px;}
#rightMenu uul lii a{text-decoration: none;color:black;}
#rightMenu uul lii a:visited{text-decoration: none;color:black;}
#rightMenu uul lii a:hover { text-decoration: none;color:black;}
#rightMenu uul lii a:link {text-decoration: none;color:black;}
#rightMenu uul lii a:active {text-decoration: none;color:black;}

#rightMenu uul lii.sub{background-repeat:no-repeat;background-position:right 9px;background-image:url(/index/rightkey/pic/arrow.png);}
#rightMenu uul lii.active{background-color:#ECF5FF;border-radius:0px;border:1px solid #aecff7;height:22px;line-height:22px;background-position:right -8px;padding:0 29px;}
#rightMenu uul uul{display:none;position:absolute;}

</style>
<script type="text/javascript">
var getOffset = {
 top: function (obj) {
  return obj.offsetTop + (obj.offsetParent ? arguments.callee(obj.offsetParent) : 0) 
 },
 left: function (obj) {
  return obj.offsetLeft + (obj.offsetParent ? arguments.callee(obj.offsetParent) : 0) 
 } 
};
window.onload = function ()
{
 var oMenu = document.getElementById("rightMenu");
 var aUl = oMenu.getElementsByTagName("uul");
 var aLi = oMenu.getElementsByTagName("lii");
 var showTimer = hideTimer = null;
 var i = 0;
 var maxWidth = maxHeight = 0;
 var aDoc = [document.documentElement.offsetWidth, document.documentElement.offsetHeight];
 oMenu.style.display = "none";
 for (i = 0; i < aLi.length; i++)
 {
  //为含有子菜单的li加上箭头
  aLi[i].getElementsByTagName("uul")[0] && (aLi[i].className = "sub");
  //鼠标移入
  aLi[i].onmouseover = function ()
  {
   var oThis = this;
   var oUl = oThis.getElementsByTagName("uul");
   //鼠标移入样式
   oThis.className += " active";   
   //显示子菜单
   if (oUl[0])
   {
    clearTimeout(hideTimer);    
    showTimer = setTimeout(function ()
    {
     for (i = 0; i < oThis.parentNode.children.length; i++)
     {
      oThis.parentNode.children[i].getElementsByTagName("uul")[0] &&
      (oThis.parentNode.children[i].getElementsByTagName("uul")[0].style.display = "none");
     }
     oUl[0].style.display = "block";
     oUl[0].style.top = oThis.offsetTop + "px";
     oUl[0].style.left = oThis.offsetWidth + "px";
     setWidth(oUl[0]);
     //最大显示范围     
     maxWidth = aDoc[0] - oUl[0].offsetWidth;
     maxHeight = aDoc[1] - oUl[0].offsetHeight;
     //防止溢出
     maxWidth < getOffset.left(oUl[0]) && (oUl[0].style.left = -oUl[0].clientWidth + "px");
     maxHeight < getOffset.top(oUl[0]) && (oUl[0].style.top = -oUl[0].clientHeight + oThis.offsetTop + oThis.clientHeight + "px")
    },300);
   }   
  };
  //鼠标移出 
  aLi[i].onmouseout = function ()
  {
   var oThis = this;
   var oUl = oThis.getElementsByTagName("uul");
   //鼠标移出样式
   oThis.className = oThis.className.replace(/\s?active/,"");
   clearTimeout(showTimer);
   hideTimer = setTimeout(function ()
   {
    for (i = 0; i < oThis.parentNode.children.length; i++)
    {
     oThis.parentNode.children[i].getElementsByTagName("uul")[0] &&
     (oThis.parentNode.children[i].getElementsByTagName("uul")[0].style.display = "none");
    }
   },300);
  };
 } 
 //自定义右键菜单
 document.oncontextmenu = function (event)
 {
  var event = event || window.event;
  oMenu.style.display = "block";
  oMenu.style.top = event.clientY + "px";
  oMenu.style.left = event.clientX + "px";
  setWidth(aUl[0]);
  //最大显示范围
  maxWidth = aDoc[0] - oMenu.offsetWidth;
  maxHeight = aDoc[1] - oMenu.offsetHeight;
  //防止菜单溢出
  oMenu.offsetTop > maxHeight && (oMenu.style.top = maxHeight + "px");
  oMenu.offsetLeft > maxWidth && (oMenu.style.left = maxWidth + "px");
  return false;
 };
 //点击隐藏菜单
 document.onclick = function ()
 {
  oMenu.style.display = "none"
 };
 //取li中最大的宽度, 并赋给同级所有li 
 function setWidth(obj)
 {
  maxWidth = 0;
  for (i = 0; i < obj.children.length; i++)
  {
   var oLi = obj.children[i];   
   var iWidth = oLi.clientWidth - parseInt(oLi.currentStyle ? oLi.currentStyle["paddingLeft"] : getComputedStyle(oLi,null)["paddingLeft"]) * 2
   if (iWidth > maxWidth) maxWidth = iWidth;
  }
  for (i = 0; i < obj.children.length; i++) obj.children[i].style.width = maxWidth + "px";
 }
};
</script>

<!--  右键菜单结束 -->

</head>
<body  style="background-image: url('${bg}'); <c:if test="${udate.picmodel != 1 }">background-size:cover;</c:if> ">
	<div id="win" style="height:500px">
		<ul id="app" >
			<li><a href="/name/portal.do" target="_blank"><img src="/index/pic/png-0741.png" class="t"><br />免费起名</a></li>
			<li><a href="/jianghu/portal.do"  target="_blank"><img src="/index/pic/Minie.png" class="t" alt="身在江湖之 -游戏人间"><br />来呀乐一乐</a></li>
			<li><a href="/softtest/portal.do"  target="_blank"><img src="/index/icon/170.png" class="t" alt="身在江湖之 -测试攻城狮"><br />测试攻城狮</a></li>
			<li><a href="javascript:void(0)" onclick="showwx()"><img src="/index/icon/1115.png" class="t"><br />加我微信</a></li>

	<c:if test="${islogin != 1}">
	    <li><a href="javascript:void(0)" onclick="showlogin()"><img src="/index/icon/185.png" class="t"><br />用户登录</a></li>
		<li><a href="javascript:void(0)" onclick="showRegister()" ><img src="/index/icon/192.png" class="t"><br />用户注册</a></li>
	</c:if> 
	  
	  <c:if test="${islogin == 1}">
	  		<li><a href="/module/usercenter/personinfo.jsp" target="_blank"><img src="/index/icon/1110.png" class="t"><br />用户中心</a></li>
			<li><a href="/blog/MyBlog.do" target="_blank"><img src="/index/icon/165.png" class="t"><br />我的博客</a></li>
	     	<li><a onclick="shownav()" href="javascript:void(0)" ><img src="/index/icon/14.png" class="t"><br />二级导航</a></li>
		  </c:if>
		</ul>


		<c:set var="i" value="1" />
		<c:set var="m" value="0" />
		<c:forEach items="${lst}" var="a" varStatus="sta">
			<c:if test="${a.open_way == 1 }">
				<c:if test="${m % 6 == 0 }">
					<ul id="app${i}" class="appp">
						<c:set var="i" value="${i+1}" />
				</c:if>
				<li><a href="${a.site_url}" target="_blank"><img src="${a.icon}" class="t"><br />${a.site_name}</a></li>
				<c:if test="${m % 6 == 5 }">
					</ul>
				</c:if>
				<c:set var="m" value="${m+1}" />
			</c:if>
		</c:forEach>
		<c:if test="${(m-1) % 6 != 5 }">
			</ul>
			</c:if>
			

<div id="iconContainer">

</div>

<!-- Demo Aero Window  1 -->
<div id="Window1" style="display: none;">
<table>
<tr>
<td><img src="/pic/wx/weixin.jpg" style="width:100px;height:100px"></td>
<td><img src="/pic/wx/wdwx.jpg" style="width:100px;height:100px"></td>
<td><img src="/pic/wx/wxszjh.jpg" style="width:100px;height:100px"></td></tr>
<tr><td align="center">身在江湖</td><td align="center">我的微信</td><td align="center">测试攻城狮</td></tr></table>
</div>

<!-- Demo Aero Window  2 -->
<div id="Window2" style="display: none;">
	<p></p>
	<h1>我爱你</h1>
	<ul>
		<li><strong>世间万物:</strong>潇洒人世间！ </li>
	</ul>
</div>


 







<div id="Firefoxapp" style="display: none; " >
	<div id="winn"  >
		<ull id="apppp"  > 
		<c:forEach items="${lst}" var="a" varStatus="sta">
					<c:if test="${a.open_way == 2 }">
				<lli><a href="${a.site_url}" target="_blank"> <img src="${a.icon}" class="ttt"><br />${a.site_name}</a></lli>
					</c:if>
				</c:forEach>
		</ull>
</div>	
</div>








<c:if test="${udate.fileon == 1 }">
 <script type="text/javascript">
var h =document.documentElement.clientHeight ;
var bb="${udate.hei}";
var b= parseInt(bb) ;
var a=parseInt("${udate.wid}") ;
if(a==0){a=300 ;}
if(b==0){b=600 ;}
 
 var w= document.documentElement.clientWidth  ;
 var c = w-a -50 ;
 $('#Firefoxapp').AeroWindow({
		WindowTitle:          '加我微信1',
		WindowPositionTop:    1,
		WindowPositionLeft:   c,
		WindowWidth:          a,
		WindowHeight:         b,
		WindowAnimation:      'easeInOutCubic',
		WindowResizable:     false 
	});
</script>
</c:if>


<c:if test="${udate.fileon != 1 }">
 <script type="text/javascript">
 $('#Firefoxapp').hide(); 
 </script>
 </c:if>


 <script type="text/javascript">
function  shownav(){
	
	var h =document.documentElement.clientHeight ;
	var bb="${udate.hei}";
	var b= parseInt(bb) ;
	var a=parseInt("${udate.wid}") ;
	if(a==0){a=300 ;}
	if(b==0){b=600 ;}
	 
	 var w= document.documentElement.clientWidth  ;
	 var c = w-a -50 ;
	 $('#Firefoxapp').AeroWindow({
			WindowTitle:          '加我微信1',
			WindowPositionTop:    1,
			WindowPositionLeft:   c,
			WindowWidth:          a,
			WindowHeight:         b,
			WindowAnimation:      'easeInOutCubic',
			WindowResizable:     false 
		});
}
 </script>






<!-- tianchucheng  -->

<div id="ShowModule" style="display: none">
<table>
<tr><td><img src="/pic/wx/wxszjh.jpg" style="width:100px;height:100px"></td>
<td><img src="/pic/wx/wdwx.jpg" style="width:100px;height:100px"></td></tr>
<tr><td align="center">身在江湖</td><td align="center">我的微信</td></tr></table>
</div> 


<div id="login" style="display: none">
   <table style="margin-top:30px;margin-left:40px">
            <tr><td>用户名</td><td><input id="j_username" type="text" class="text"  style=" width:150px" /></td></tr>
            <tr><td>密码</td><td><input id="j_password" type="password" class="text" style=" width:150px" /></td></tr>
            <tr><td></td><td id="info" style="color:#F00"><br></td></tr>
            <tr><td><label><input id="rememberMe" type="checkbox" checked value="true" />记住登录 </label></td>
            <td><input onclick="userLogin()"  type="button" value="用户登录" class="btn01"/>
            </td></tr>
            </table>
</div> 


<div id="register" style="display: none">
   <table style="margin-top:30px;margin-left:40px">
            <tr><td>用户名</td><td><input id="r_username" type="text" class="text"  style=" width:150px" /></td></tr>
            <tr><td>密码</td><td><input id="r_password" type="password" class="text" style=" width:150px" /></td></tr>
            <tr><td>确认密码</td><td><input id="c_password" type="password" class="text" style=" width:150px" /></td></tr>
            <tr><td></td><td id="info" style="color:#F00"><br></td></tr>
            <tr><td></td>
            <td><input onclick="Register()"  type="button" value="用户注册" class="btn01"/>
            </td></tr>
            </table>
</div> 



<div id="SetNavSize" style="display: none">
   <table style="margin-top:30px;margin-left:40px">
            <tr><td></td><td>请根据需要调整二级导航页面大小</td></tr>
            <tr><td>高度：</td><td><input id="hei" type="text" class="text" value="${udate.hei}" style=" width:60px" /></td></tr>
            <tr><td>宽度：</td><td ><input id="wid" type="text" class="text" value="${udate.wid}" style=" width:60px" /></td></tr>
            <tr><td></td><td><input onclick="SetSize()"  type="button" value="设置" class="btn01"/></td></tr>
            </table>
</div>




<div id="drag" style="visibility: hidden" >
    <div class="title">
        <h2>我的电脑</h2>
        <div>
            <a class="min" href="javascript:;" title="最小化"></a>
            <a class="max" href="javascript:;" title="最大化"></a>
            <a class="revert" href="javascript:;" title="还原"></a>
            <a class="close" href="javascript:;" title="关闭"></a>
        </div>
    </div>
    <div class="resizeL"></div>
    <div class="resizeT"></div>
    <div class="resizeR"></div>
    <div class="resizeB"></div>
    <div class="resizeLT"></div>
    <div class="resizeTR"></div>
    <div class="resizeBR"></div>
    <div class="resizeLB"></div>
    <div class="content">
             登录 <br />
    </div>    
</div>





 <c:if test="${islogin == 1}">

<div id="rightMenu">
 <uul>
 <lii onclick="shownav()">二级导航(E)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lii>

 <lii onclick="showwx()">加我微信(M)</lii>
 <lii>导航个性化(C) <uul>
  			<lii id="SetNavSizeMenu">设置二级导航大小(N)</lii>
  			<lii><a href="/nav/IndexSet.do" target="_blank" >设置首页背景(O)</a></lii>
  			<lii><a href="/nav/NavManage.do" target="_blank" >设置导航链接(D)</a></lii>
  		</uul>
 </lii>
 <lii id="BJ">刷新(V)</lii>
 <lii>用户中心(K)<uul>
  			<lii><a href="/module/usercenter/personinfo.jsp" target="_blank" >个人信息(V)</a>  </lii>
  			<lii><a href="/module/share/ArticleCreate.jsp" target="_blank" >分享(H)</a></lii>
  			<lii><a href="/module/share/MyTopic.do" target="_blank" >专题(L)</a></lii>
  			<lii><a href="/blog/MyBlog.do" target="_blank" >我的博客(B)</a></lii>
  		</uul>
 </lii>
<lii onclick="logout()">退出登录(F)</lii>
  </uul>
 </lii>
 </uul>
</div>
</c:if>













<script>
$('#BJ').click(function() {
	location.reload()    ;
});

$('#SetNavSizeMenu').click(function() {
	$('#SetNavSize').AeroWindow({
		WindowTitle:          'setwindowssize',
		WindowPositionTop:    'center',
		WindowPositionLeft:   'center',
		WindowWidth:          350,
		WindowHeight:         200,
		WindowAnimation:      'easeOutBounce' 
	});
});
</script>




<script type="text/javascript">

function t(){
	var lengli = $("#dd li").length;
	alert(lengli);
}





</script>



 <script type="text/javascript">
 
 function  Register(){
	 
	  var username1  =  $("#r_username").val()  ;
	  var password  =  $("#r_password").val()  ;
	  var cpassword  =  $("#c_password").val()  ;
	  var username = username1.replace(/\s*/g,"");
	 if(username==undefined || username=="" || username==null|| password ==undefined || password =="" || password==null )  {
		 alert("用户名或密码为空，请重新输入");
		 return false ;
	 }
	 if(password==cpassword) {
		 
	 }else {
		 alert("两次输入密码不一致");
		 return false ;
	 }
	  var useravatar="1.jpg";
	 
		$.ajax({
			type : "POST",
			url : "/module/usercenter/Register.do",
			data: {username: username, password: password , useravatar:useravatar},
			async : false,
			dataType : "text",
			success : function(data) {
		if(data=='ok'){
			alert("注册成功，请登录！");
		}
			
			}
		});	
	 
	 
	 
	 

		
	 
	 
	 
	 
	 
 }
 
 
 
 
 
 
 
 function showRegister(){
	 layer.open({
		 //	title : 'login ',
 		title: false ,
 		skin : 'layui-layer-molv',
 		type : 1,
 		area : [ '320px', '180px' ],
 		shadeClose : true, // 点击遮罩关闭
 		closeBtn: 0, //不显示关闭按钮
 		content : $('#register'),
 	});
 }
 
 
 function showlogin(){
	 layer.open({
		 //	title : 'login ',
 		title: false ,
 		skin : 'layui-layer-molv',
 		type : 1,
 		area : [ '320px', '150px' ],
 		shadeClose : true, // 点击遮罩关闭
 		closeBtn: 0, //不显示关闭按钮
 		content : $('#login'),
 	});
 }
	 
	 function userLogin(){
		    var	j_username  =  $("#j_username").val()  ;
		    var j_password  =  $("#j_password").val()  ;
		    var rememberMe  = $("#rememberMe").is(":checked") ;
		    $.ajax({
				type : "POST",
				url : "/module/usercenter/userlogin.do",
				data: {j_username: j_username ,j_password: j_password ,rememberMe: rememberMe },
				async : false,
				dataType : "text",
				success : function(data) {
					if(data==1){
						 location.reload()    ;
					}else{
						$("#info").html(data)  ;
					}
				}
			});		
	} 
	 
	 
	 function SetSize(){ 
 
		    var hei  =  $("#hei").val()  ;
		    var wid  =  $("#wid").val()  ;
		    $.ajax({
				type : "POST",
				url : "/nav/SetSize.do",
				data: {hei: hei ,wid: wid },
				async : false,
				dataType : "text",
				success : function(data) {
					if(data==1){
						 location.reload()    ;
					}else{
						alert("error") ;
					}
				}
			});	 
		 
		 
		 
	 }
 function showwx(){
	 layer.open({
 	//	title : '加我微信 ',
 		title: false ,
 		skin : 'layui-layer-molv',
 		type : 1,
 		area : [ '220px', '150px' ],
 		shadeClose : true, // 点击遮罩关闭
 		closeBtn: 0, //不显示关闭按钮
 		content : $('#ShowModule'),
 	});

 }
 function free(){
	 layer.open({
 	//	title : '加我微信 ',
 		title: false ,
 		skin : 'layui-layer-molv',
 		type : 1,
 		area : [ '320px', '150px' ],
 		shadeClose : true, // 点击遮罩关闭
 		closeBtn: 0, //不显示关闭按钮
 		content : $('#free'),
 	});

 }

 
 
 
 function mycomputer(){
		document.getElementById("drag").style.visibility = "visible";
 }
 
 
 
 
 
</script>
<script>
$.ajax({
	type : "GET",
	url : "/module/admin/IsLogin.do",
	dataType : "text",
	success : function(data) {
		if(data=="1"){
		}	
	}
});	
</script>


<script>
function logout(){
$.ajax({
	type : "GET",
	url : "/userlogout.do",
	dataType : "text",
	success : function(data) {
		if(data=="1"){
			location.reload()    ;
		}	
	}
});	
}
</script>




<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>
</html>