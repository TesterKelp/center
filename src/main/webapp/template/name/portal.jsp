<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖之_榜上有名</title>
    <meta name="Keywords" Content="姓名测试，免费起名，姓名五格分析，<c:forEach items="${menuList}" var="a" varStatus="status">${a.catename},</c:forEach>">
  <meta name="description" content="榜上有名，该频道有免费起名，姓名五格分析，姓名大全，传统民俗，缘分合婚，十二生肖，十二星座，算命等多个栏目。" />
   
    <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/name/css/animate.css" rel="stylesheet">
  <link href="/template/name/css/defect.css" rel="stylesheet">    <!-- 宽屏去掉 defect.css -->
    <link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/template/name/style.css" />
    <!-- 登录样式-->
    <link rel="stylesheet" type="text/css" href="/template/name/login/login.css">
    <!-- 专题样式 -->
        <link rel="stylesheet" href="/template/name/2/css/style.css">
        <script type="text/javascript" src="/template/name/2/js/jquery.js"></script>
        <script type="text/javascript" src="/template/name/2/js/jquery.SuperSlide.2.1.1.js"></script>
   <!-- 今日推荐样式 -->     
    <link href="/template/name/indextop/zimeiti.css" type="text/css" rel="stylesheet"/>
	<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />

<style type="text/css">
        .door {
            width: 250px;
            height: 250px;
            border: 1px solid gray;
            perspective: 500px;
            background: url('/pic/wx/wxszjh.jpg') no-repeat;
            background-size: 100% auto;
            position: relative;
        }
        .door > div {
            box-sizing: border-box;
            border: 1px solid black;
        }
        .left,.right {
            float: left;
            width: 50%;
            height: 100%;
            background-color: brown;
            transition: 1s;
            position: relative;
        }
        .left{
            transform-origin: left center;
        }
        .right{
            transform-origin: right center;
        }
        .left::before,.right::before {
            content: '';
            position: absolute;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            top: 50%;
            transform: translateY(-10px);
            border: 1px solid whitesmoke;
        }
        .left::before{
            right: 0;
        }
        .right::before {
            left: 0;
        }
        .door:hover .left {
            transform: rotateY(-130deg);
        }
        .door:hover .right {
            transform: rotateY(130deg);
        }
    </style>


<style type="text/css">

.box h5,  {
    color: #333;
    height: 35px;
    line-height: 40px;
    overflow: hidden;
    padding-left: 15px;
}
.lmtj {
    padding: 5px 15px 0 15px;
}

.box dl {
    margin: 0;
    word-wrap: break-word;
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}

.box ul, li{
	list-style: none;
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.box h5.title-2, .box h6.title-2 {
    background-position: right -100px;
    height: 35px;
    padding-left: 16px;
    padding-top:20px ;
}
.box .digg li {
    background: url("/template/name/love/li1.gif") no-repeat left 8px;
    padding-left: 16px;
    height: 28px;
    line-height: 28px;
    overflow: hidden;
    position: relative;
}
.box a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}
</style>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?03ea227542d6451cba71f3cfb1c5191f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>


</head>

<body>
<%@ include file="/template/name/htmlheader.jsp"%>
    <Br><br>    
            <div class="wrapper wrapper-content" algin="center">
					<div class="row">
			<div class="ibox-content" style="margin-top:0px;">
			
			
			<!-- 
			<div class="col-lg-12" style="margin:0px ;padding:0px" >

<div id="hpage" style="margin-top:0px ;margin-left:75px ;padding-right:125px;">
    <div id="righ">
      <ul>
        <lli> 
        <c:forEach items="${lst}" var="a" varStatus="status">
        <c:if test="${a.namenumber==1}">
				<div class="imgh">
							<a href="/name/${a.nameid}/name.do">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
     
        </lli> 

      </ul>
      <br class="clear" /> <div class="clear"></div>
   </div>
</div>

</div>
	 -->		
		
			

</div>
					</div>



            </div>








<div class="col-lg-12"  style="margin-top:10px ;margin-left:62px ;margin-right:62px ;padding-right:135px;margin-bottom:10px ;padding-bottom:15px;padding-top:15px; border-top:1px dashed #A9A9A9 ;  border-bottom:1px dashed #A9A9A9 ; ">
<div class="col-lg-6" >
<div class="col-lg-6" >
<table   style="border:0px ;float:left">			
	<tr>	<td colspan="2"  style="border:0px "><Br>	
			<form action="NameSearch.do" method="GET" accept-charset="UTF-8" onsubmit="document.charset='utf-8';">
			<input  id="name" name="name"     placeholder="请输入姓氏" type="text" class="text"  style=" width:100px" />  
            <input  type="submit" value="免费起名" class="btn01"/><br><br>        
 </form></td></tr>
 <tr>	<td  style="border:0px "><img src="/pic/wx/wxszjh.jpg" width="100"  height="100"></td> 
 <td  style="border:0px ;font-family: verdana, Arial, Helvetica, sans-serif; "><br> 1. 输入姓。如：白。<br>2. 输入姓+中间字。如：白居 <br>3. 输入姓+‘x’+尾名。如： 白x易。</td></tr>
 <tr>	<td colspan="2"  style="border:0px ">	<hr>
  <form action="/name/NameTestResult.do" method="GET" accept-charset="UTF-8" onsubmit="document.charset='utf-8';"><Br>
<input type="text"  id="name" name="name" placeholder="请输姓名  " siz="45" style=" width:100px" >   <input type="submit" value="姓名测试" /><Br><Br>
 </form>
</td>
 </tr>
 </table>	
</div>
	<div class="col-lg-6" >
	<table width="310px" style="text-align: center; margin: 0 auto;">
					<Tr>
						<td><div class="door" style="margin: 0px;z-index:10000;">
								<div class="left"></div>
								<div class="right"></div>
							</div></td>
					</Tr>
				</table>
	</div>
</div>

<div class="col-lg-6" style="float:left;padding-left:0px;margin-left:0px" >	
<div class="col-lg-8"  style="float:left;padding-left:0px;margin-left:0px">		
	<table   style="width:360px;float:left">
			<tr style="height:90px;"><td ><img src="/template/name/love/lo.jpg" width="360"  ></td></tr>
			<tr style="height:100%;padding-top:0px"><td style="padding-top:4px">
				<input type="text"  id="man" name="man" placeholder="请输姓名  " siz="16"  style="width:140px"> 
				 <input type="text"  id="woman" name="woman" placeholder="请输姓名  " siz="16" style="width:140px">  
				<input type="button"  onclick="love()"   value="我们的故事" />
				<div id="lov"> 人生因爱情而改变，他是你最爱的人吗？你们相爱会有好的结局吗？发送姓名(男)配姓名(女)，如郭靖配黄蓉，就可以知道你们爱情的结局，千万不要错过哦。
				只需要你和她/他的姓名，点击"查看"按钮就可以了。  </div>
			</td></tr></table>
	</div>
	

	<div class="col-lg-4" style="float:left;">	
	<table ><tr><td >
				<div class="ld_form" style="padding: 0px; ">
				<form id="login-form-login" method="post"  style="display: none">	
								<div class="box" >
									<h5 class="title-2" style="padding-top:0px;line-height:32px">用户中心便捷链</h5>
									<dl class="digg lmtj" style="padding-top:0px;margin-top:0px" >
<ul style="width:150px"><li ><a  href="/module/usercenter/personinfo.jsp" style="line-height:32px">用户中心 </a>
 <span style="float: right"><a href="/module/usercenter/personinfo.jsp" style="line-height:32px">个人信息 </a></span></li></ul>

 <ul style="width:150px" ><li><a href="/module/share/ArticleCreate.jsp"  style="line-height:32px">发布分享</a>
 <span style="float: right"><a href="/module/share/MyArticleManage.jsp"  style="line-height:32px">我的分享 </a></span></li></ul>
 
 <ul style="width:150px"><li><a href="/module/boke/BlogCate.jsp" style="line-height:32px">博客分类 </a>
 <span style="float: right"><a href="/module/boke/BlogSettingPage.do"  style="line-height:32px">博客设置 </a></span></li></ul>
 
 <ul style="width:150px"><li><a href="/module/share/MyTopic.do" style="line-height:32px">专题管理 </a>
 <span style="float: right"><a href="/module/share/TopicCreate.jsp"  style="line-height:32px">创建专题 </a></span></li></ul>
 
  <ul style="width:150px" ><li><a href="/nav/IndexSet.do" style="line-height:32px">背景设置</a>
 <span style="float: right"><a href="/nav/NavManage.do"  style="line-height:32px">导航管理 </a></span></li></ul>
 
   <ul style="width:150px"><li><a href="/blog/MyBlog.do" style="line-height:32px">我的博客 </a></li></ul>
    <ul style="width:150px"><li><a href="javascript:void(0);"  onclick="userlogout()" style="line-height:32px">退出登录</a></li></ul>
									</dl>
								</div>
							</form>
						<form id="login-form-logout" method="post"  style="display: none;margin-top:0px;padding-top:0px">
							<h3 class="form_title"  style="margin-top:0px;padding-top:0px">用户登录</h3>
							<p><input type="text"   name="userName"  id="j_username" /></p>
							<p><input type="password" id="j_password" name="password" class="ld_pass"      /></p>
							<div class="ld_login" style="padding-top:0px">
							<label  id="info" style="color:Red">    </label>
								<div class="ld_login_in" onclick="userLogin()"  id="bt-login"  style="width:231px;">马上登录</div>
								<div id="login-msg"></div>
							</div>
							
							<label>
							<label><input id="rememberMe" type="checkbox" value="true" />记住登录 </label> |
							 <a href="/module/usercenter/register.jsp">注册账号</a> <br />
						</form>
			</div>
	</td>
	</tr>
	</table>
</div>	
</div>	

	
 </div>



<div class="col-lg-12"  
style="border-bottom:1px dashed #00a0e9 ;margin:0 auto ;margin-bottom:10px;padding-bottom:10px;height:140px;text-align:center ; ">
<div style="margin:0 auto ;text-align:center;padding-left:55px; " >
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_73.do" ><img src="/module/name/12/4361.png" style="width:110px;height:110px">子鼠</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_74.do" ><img src="/module/name/12/4362.png" style="width:110px;height:110px">丑牛</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_75.do" ><img src="/module/name/12/4363.png" style="width:110px;height:110px">寅虎</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_76.do" ><img src="/module/name/12/4364.png" style="width:110px;height:110px">卯兔</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_77.do" ><img src="/module/name/12/4365.png" style="width:110px;height:110px">辰龙</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_78.do" ><img src="/module/name/12/4366.png" style="width:110px;height:110px">巳蛇</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_79.do" ><img src="/module/name/12/4367.png" style="width:110px;height:110px">午马</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_80.do" ><img src="/module/name/12/4368.png" style="width:110px;height:110px">未羊</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_81.do" ><img src="/module/name/12/4369.png" style="width:110px;height:110px">申猴</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_82.do" ><img src="/module/name/12/43610.png" style="width:110px;height:110px">酉鸡</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_83.do" ><img src="/module/name/12/43611.png" style="width:110px;height:110px">戌狗</a></div>
<div style="float:left;width:8%" align="center"><a href="/name/topiccover_84.do" ><img src="/module/name/12/43612.png" style="width:110px;height:110px">亥猪</a></div>


</div>


	
 </div>

<div class="col-lg-12"  style="margin-bottom:15px;">

<div class="col-lg-3"  style="border-right:1px dashed #00a0e9 ;">
<style type="text/css">
fff{
border:1px solid #E8EAEA;
width:60px;
margin:2px;
line-height:20px;
float:right;
text-align:center ;
}
</style>
<div  style="text-align:right;float:right">
<br><a href="/name/zgjm/index.do">周公解梦:</a>
      <hr style="border:1px solid #00a0e9;margin-bottom:10px;">
  <fff><a href="/name/zgjm/1/sx.do">人物称谓</a></fff><fff><a href="/name/zgjm/285/sx.do">身体器官</a></fff><fff><a href="/name/zgjm/936/sx.do">冷血类</a></fff><fff><a href="/name/zgjm/937/sx.do">哺乳类</a></fff><fff><a href="/name/zgjm/938/sx.do">鸟禽类</a></fff><fff><a href="/name/zgjm/1047/sx.do">其它动物</a></fff><fff><a href="/name/zgjm/1048/sx.do">昆虫类</a></fff><fff><a href="/name/zgjm/1586/sx.do">豆类</a></fff><fff><a href="/name/zgjm/1587/sx.do">果实</a></fff><fff><a href="/name/zgjm/1588/sx.do">瓜类</a></fff><fff><a href="/name/zgjm/1599/sx.do">其它植物</a></fff><fff><a href="/name/zgjm/1600/sx.do">树类</a></fff><fff><a href="/name/zgjm/1603/sx.do">花草</a></fff><fff><a href="/name/zgjm/1615/sx.do">粮食</a></fff><fff><a href="/name/zgjm/1707/sx.do">蔬菜</a></fff><fff><a href="/name/zgjm/2058/sx.do">其它物品</a></fff><fff><a href="/name/zgjm/2059/sx.do">财物宝石</a></fff><fff><a href="/name/zgjm/2060/sx.do">食品饮料</a></fff><fff><a href="/name/zgjm/2061/sx.do">生活用品</a></fff><fff><a href="/name/zgjm/2063/sx.do">服装饰品</a></fff><fff><a href="/name/zgjm/2067/sx.do">交通运输</a></fff><fff><a href="/name/zgjm/2077/sx.do">文化用品</a></fff><fff><a href="/name/zgjm/2173/sx.do">武器化学</a></fff><fff><a href="/name/zgjm/2484/sx.do">机械电器</a></fff><fff><a href="/name/zgjm/2518/sx.do">音乐舞蹈</a></fff><fff><a href="/name/zgjm/3883/sx.do">运动类</a></fff><fff><a href="/name/zgjm/3885/sx.do">动作类</a></fff><fff><a href="/name/zgjm/3886/sx.do">日常类</a></fff><fff><a href="/name/zgjm/3888/sx.do">劳动类</a></fff><fff><a href="/name/zgjm/3889/sx.do">娱乐类</a></fff><fff><a href="/name/zgjm/3893/sx.do">工作学习</a></fff><fff><a href="/name/zgjm/3918/sx.do">其它活动</a></fff><fff><a href="/name/zgjm/4886/sx.do">婚恋情感</a></fff><fff><a href="/name/zgjm/4889/sx.do">衣食住行</a></fff><fff><a href="/name/zgjm/4890/sx.do">医疗疾病</a></fff><fff><a href="/name/zgjm/4894/sx.do">灾难罪恶</a></fff><fff><a href="/name/zgjm/4901/sx.do">其它生活</a></fff><fff><a href="/name/zgjm/4922/sx.do">感觉表情</a></fff><fff><a href="/name/zgjm/7784/sx.do">自然现象</a></fff><fff><a href="/name/zgjm/7997/sx.do">地理环境</a></fff><fff><a href="/name/zgjm/8290/sx.do">其它鬼神</a></fff><fff><a href="/name/zgjm/8302/sx.do">神仙类</a></fff><fff><a href="/name/zgjm/8304/sx.do">宗教类</a></fff><fff><a href="/name/zgjm/8308/sx.do">鬼怪类</a></fff><fff><a href="/name/zgjm/8678/sx.do">场所类</a></fff><fff><a href="/name/zgjm/8681/sx.do">建筑类</a></fff><fff><a href="/name/zgjm/9095/sx.do">其它</a></fff><fff><a href="/name/zgjm/9321/sx.do">颜色气味</a></fff><fff><a href="/name/zgjm/9330/sx.do">时间节日</a></fff><fff><a href="/name/zgjm/9431/sx.do">数字形状</a></fff>
</div>

<div  style="text-align:right;float:right">
<br><a href="/name/sexz/index.do">十二星座:</a>
      <hr style="border:1px solid #00a0e9;margin-bottom:10px;">
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_85.do"><img src="/template/name/12xz/3.jpg" style="width:90px;height:90px"  style="float:right">魔羯星座<br>﹝12.23─1.22﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_96.do"><img src="/template/name/12xz/7.jpg" style="width:90px;height:90px" style="float:right">双鱼星座<br>﹝2.20─3.20﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_87.do"><img src="/template/name/12xz/2.jpg" style="width:90px;height:90px" style="float:right">金牛星座<br>﹝4.21─5.21)</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_89.do"><img src="/template/name/12xz/8.jpg" style="width:90px;height:90px" style="float:right">巨蟹星座<br>﹝6.22─7.23﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_91.do"><img src="/template/name/12xz/6.jpg" style="width:90px;height:90px" style="float:right">处女星座<br>﹝8.24─9.23﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_93.do"><img src="/template/name/12xz/11.jpg" style="width:90px;height:90px" style="float:right">天蝎星座<br>﹝10.24─11.22﹞</a></div>

<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_95.do"><img src="/template/name/12xz/10.jpg" style="width:90px;height:90px">水瓶星座<br>﹝1.21.─2.19﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_86.do"><img src="/template/name/12xz/4.jpg" style="width:90px;height:90px">牡羊星座<br>﹝3.21─4.20﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_88.do"><img src="/template/name/12xz/9.jpg" style="width:90px;height:90px">双子星座<br>﹝5.22─6.21﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_90.do"><img src="/template/name/12xz/1.jpg" style="width:90px;height:90px">狮子星座<br>﹝7.24─8.23﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_92.do"><img src="/template/name/12xz/12.jpg" style="width:90px;height:90px">天秤星座<br>﹝9.24─10.23﹞</a></div>
<div  style="text-align:center;float:right;width:100px;height:130px"><a href="/name/topiccover_94.do"><img src="/template/name/12xz/5.jpg" style="width:90px;height:90px">射手星座<br>﹝11.23─12.22﹞</a></div>
</div>



 </div>
<div class="col-lg-6"  style="padding-left:2px;padding-right:0px;text-align:center">	
<style type="text/css">
ul {list-style: none; margin: 0px; padding: 0px;margin-right:0px;}
/* 抽签占卜 ---*/
.txPiclist {float:left;width:100%;}
.txPiclist li{border: 1px solid #E8EAEA;background-color: #FFFCF5;display:inline-block;margin-bottom: 10px;padding: 3px;width: 215px;margin-right:0px;padding-right:0px;}
.txPiclist li .img {display: block;height: 240px;overflow: hidden;width: 215px;}
.txPiclist li .title {border-bottom: 1px dashed #C0D7DD;height: 43px;line-height: 43px;margin: 0 auto 10px;overflow: hidden;text-align: center;width: 210px;}
.txPiclist li .title a {color: #442F00;font-size: 14px;}
.txPiclist li p {color: #442F00;line-height: 22px;margin: 8px auto;width: 215px;}
.txPiclist li p a {color: #000000;font-size: 12px;}
.txPiclist li p span {color: #000000;margin-left:5px;}
.txPiclist li p .time {margin-left: 10px;}
.txPiclist li:nth-child(4n-7){margin-left:0;}
</style>


 	<div class="txPiclist"  style="text-align:center" >
	<ul >
			<li>
			<a target="_blank" href="/name/suanming/indexchenggu.do" class="img"><img src="/template/name/suanming/pic/1.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/suanming/indexchenggu.do">称骨算命</a></div>
			<p style="text-align:center">分类:<span><a href="/name/suanming/index.do">称骨算命</a></span><span class="time"></span></p>
			</li>
			<li>
			<a target="_blank" href="/name/divine/7/index.do" class="img"><img src="/template/name/divine/pic/guandi.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/divine/7/index.do">关帝灵签</a></div>
			<p style="text-align:center">分类:<span><a href="/name/divine/index.do">抽签占卜</a></span><span class="time"></span></p>
			</li>
			
	
	
	
	
	<li>
			<a target="_blank" href="/name/divine/1/index.do" class="img"><img src="/template/name/pic/divine/list/guanyin.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/divine/1/index.do">观音灵签</a></div>
			<p style="text-align:center">分类:<span><a href="/name/divine/index.do">抽签占卜</a></span><span class="time"></span></p>
			</li>
			<li>
			<a target="_blank" href="/name/divine/4/index.do" class="img"><img src="/template/name/pic/divine/list/zhuge.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/divine/4/index.do">诸葛神算</a></div>
			<p style="text-align:center">分类:<span><a href="/name/divine/index.do">抽签占卜</a></span><span class="time"></span></p>
			</li>
			<li >
			<a target="_blank" href="/name/hehun/xingzuo/index.do" class="img"><img src="/template/name/hehun/pic/3.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/xingzuo/index.do">星座合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/index.do">缘分合婚</a></span><span class="time"></span></p>
</li>
	
	       
	       <li>
			<a target="_blank" href="/name/hehun/lvcai/index.do" class="img"><img src="/template/name/hehun/pic/11.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/lvcai/index.do">呂才合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/index.do">缘分合婚 </a></span><span class="time"></span></p>
			</li>
			<li>
			<a target="_blank" href="/name/hehun/shengxiao/index.do" class="img"><img src="/template/name/hehun/pic/2.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/shengxiao/index.do">属相合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/index.do">缘分合婚</a></span><span class="time"></span></p>
			</li>
			<li>
			<a target="_blank" href="/name/hehun/benminggua/index.do" class="img"><img src="/template/name/hehun/pic/5.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/benminggua/index.do">本命卦</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/index.do">缘分合婚</a></span><span class="time"></span></p>
			</li>

	</ul>
	
	
	</div>
  
  
  
 </div>       
     <div class="col-lg-3"  style="border-left:1px dashed #00a0e9 ;">	   
       <br><a href="/name/NameAll.do">姓名大全</a> 
      <hr style="border:1px solid #00a0e9;margin-bottom:10px;">
     <div id="hpage" style="margin-top:0px ;margin-left:2px ;padding-right:10px;">
    <div id="righ">
      <ul>
        <lli> 
        <c:forEach items="${lst}" var="a"  begin="0"  end="260" step="1" varStatus="status">
        <c:if test="${a.namenumber==1}">
				<div class="imgh">
							<a href="/name/${a.nameid}/name.do">${a.name}</a>
						</div>
                </c:if>
		</c:forEach>
     
        </lli> 

      </ul>
      <br class="clear" /> <div class="clear"></div>
   </div>
</div>
     
       
       </div> <div class="clearfix"></div> 
   </div>     
     
  <div class="col-lg-12"  style="border-top:1px dashed #00a0e9 ;padding-top:15px;">	      
       
        
  <div class="col-sm-4">
						<div class="contact-box"  style="max-height:213px" >
							<a href="/name/topiccover_70.do">  <!-- topiccover.do?topicid=70 -->
								<div class="col-sm-4">
									<div class="text-center">
										<img alt="image" class="img-circle m-t-xs img-responsive"   style="max-height:180px" 
											src="/pic/topicimage/151_20200708211710350.gif">
										<!--  <div class="m-t-xs font-bold">CTO</div>-->
									</div>
								</div>
								<div class="col-sm-8">
									<h3>
										<strong >手相</strong>
									</h3>
 									<address style="height: 120px; line-height: 25px; overflow: hidden"> 

										我们可以发现，一个人的运气好，他的气色就好，手的色泽看起来也一样比较健 康；同样地，他的手相纹路看起来比较清晰，直观上就是一个思路清楚而理性的人；如果一个人的手相纹路很复杂，直观上就是一个思绪较复杂的</address>
								</div>
								<div class="clearfix"></div>
							</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="contact-box"  style="max-height:213px" >
							<a href="/name/topiccover_71.do">  <!-- topiccover.do?topicid=71 -->
								<div class="col-sm-4">
									<div class="text-center">
										<img alt="image" class="img-circle m-t-xs img-responsive"   style="max-height:180px" 
											src="/pic/topicimage/151_20200708212217593.gif">
										<!--  <div class="m-t-xs font-bold">CTO</div>-->
									</div>
								</div>
								<div class="col-sm-8">
									<h3>
										<strong >面相</strong>
									</h3>
 									<address style="height: 120px; line-height: 25px; overflow: hidden"> 

										面相是一种透过观看面部特征的方式来论命的民间学问，其是古典哲学阴阳五行体系学说的分支。阴阳五行之气化生天地万物，人禀命于天则有表候于体，一切外在体表特征均蕴含着不同的命运信息，所以古人认为只要把握规律</address>
								</div>
								<div class="clearfix"></div>
							</a>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="contact-box"  style="max-height:213px" >
							<a href="/name/topiccover_72.do">  <!-- topiccover.do?topicid=72 -->
								<div class="col-sm-4">
									<div class="text-center">
										<img alt="image" class="img-circle m-t-xs img-responsive"   style="max-height:180px" 
											src="/pic/topicimage/151_20200708213701644.jpg">
										<!--  <div class="m-t-xs font-bold">CTO</div>-->
									</div>
								</div>
								<div class="col-sm-8">
									<h3>
										<strong >痣相</strong>
									</h3>
 									<address style="height: 120px; line-height: 25px; overflow: hidden"> 

										 所谓的痣相又分为显痣和隐痣，在面上的为显痣（显是明显的意思），在身上看不见的痣叫隐痣，一般来说，痣生于人体的隐处多吉，生于显处则多凶。</address>
								</div>
								<div class="clearfix"></div>
							</a>
						</div>
					</div>

       
       
       
       
     </div>  
       
       
 <!-- -------------专题开始---------------  -->

				<div class="ato-content  clearfix" style="min-height: 800px;">
					<div class="ato-list">
						<ul>
							<c:forEach items="${topicList}" var="a" varStatus="status"
								begin="1" end="6" step="1">
								<c:if test="${a.top==1}">
									<li>
										<div>
											<img src="${a.topicimage}" alt="" class="ato-logo001">
										</div>
										<h3>${a.topicname}</h3>
										<p>
											<c:if test="${fn:length(a.topicintro)>100 }">${ fn:substring( a.topicintro ,0,100)} ...</c:if>
											<c:if test="${fn:length(a.topicintro)<=100 }">${  a.topicintro }</c:if>
										</p> <a href="/${item}/topiccover_${a.topicid}.do"
										class="ato-more">查看详情</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<br>
<!-- -------------专题结束--------------  -->
   
        
   <div class="clear"></div> 
 <%@ include file="/template/name/footer.jsp"%>  
    <!-- 全局js -->
    <script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/name/js/content.js?v=1.0.0"></script>
   <script src="/template/name/kjs/common.js"></script>
   <script src="/template/name/kjs/portal.js"></script>
 
   <script type="text/javascript">

function  love(){
var woman =  $("#woman").val();
var man =   $("#man").val() ;
$.ajax({
	type : "GET",
	url : "/name/TwoLove.do",
	data: {woman: woman ,man: man},
	async : false,
	dataType : "text",
	success : function(data) {	
			$("#lov").html(data)  ;
	}
});		
}









</script>
   
   
   
   
   
   
   
   
   
   
<script type="text/javascript">
$(document).ready(function(){
	var arrLinks = $(".ranklist a");
	arrLinks.each(function(){
		var s = $(this).text(),l=$(this).text().length,n=18; //设置字符长度为32个
		if(l>n){
			$(this).attr("title",s); //讲文本所有内容用a标签的title属性提示文本全部内容
			s=$(this).text(s.substring(0,n)+"...");
		}
	});

});
</script>
   

</body>

</html>
