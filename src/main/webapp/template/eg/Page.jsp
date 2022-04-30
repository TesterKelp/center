<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>H+ 后台主题UI框架 - 首页示例四</title>

</head>
<body style="background-color: #BEBEBE;">

<style type="text/css">
.w1 {width: 1260px;margin: 0 auto;}
.mt20 {margin-top: 20px;}
.clear{ display: block;}
.box { background-color: #fff;}
.jh_r { float: right; width: 620px;}
.jh_r .ti_01 {
    height: 42px;
    overflow: hidden;
}
.ti_01 {
    font-size: 12px;
    height: 50px;
    line-height: 50px;
    font-weight: bold;
    background: #fff;
    margin-bottom: 6px;
}
.ti_01:before {
    float: left;
    content: '';
    display: block;
    width: 3px;
    height: 20px;
    margin: 15px 10px 15px 5px;
    background: #149eff;
}
.ti_01 .span {
    float: right;
    font-weight: normal;
    font-size: 10px;
    color: #999;
    line-height: 50px;
}
.ti_01 .span a {
    font-size: 12px;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    padding: 0 5px;

}


a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}


li a  {

    text-decoration: none;
    color: #555;
    font-size: 13px;
}


.jh_l ul li .fl_t, .jh_r ul li .fl_t {
    color: #999;
}


div,li, ul {
    margin: 0;
    padding: 0;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}


.ti_01 .mo {
    color: #09f;
}

.ti_01 .c {
    color: #09f;
    font-size: 16px;
}
.list {
    font-family: 宋体;
 
}

h2 {
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.jh_r ul {
    float: left;
    margin-left: 20px;
    width: 280px;
    height: 340px;
    margin-bottom: 18px;
}



.jh_l {
    float: left;
    width: 620px;
}
.jh_l .ti_01, .jh_r .ti_01 {
    height: 42px;
    overflow: hidden;
}
.jh_l ul, .jh_r ul {
    float: left;
    margin-left: 20px;
    width: 280px;
    height: 340px;
    margin-bottom: 18px;
}
.jh_l ul li, .jh_r ul li {
    height: 29px;
    line-height: 29px;
    font-size: 13px;
    color: #CCC;
    overflow: hidden;
}
</style>

<div class="w1 clear mt20">
  <div class="jh_r box">
    <h2 class="ti_01"> <span class="span"> <a href="/category/soft.html" target="_blank">常用软件</a> <span> | </span> <a href="/category/design_theory.html" target="_blank">设计理论</a> <span> | </span> <a href="/category/operation.html" target="_blank">网站运营</a> <span> | </span>      <a href="/category/resource.html" class="mo">更多<font class="gd">>></font></a></span><font class="c">资源</font> Resources </h2>
    <ul class="list list21 mr10">
			   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1879.html" title="中文安卓开发工具 E4A 6.7 破解版" target="_blank">中文安卓开发工具 E4A 6.7 破解版</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1766.html" title="Bruteforcer：分布式多线程破解RAR文件密码（附工具下载）" target="_blank">Bruteforcer：分布式多线程破解RAR文件密码（附工具下载）</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1686.html" title="access转mysql(Access2MySQL) v5.7.1 特别版(含注册码)access数据库转换工具" target="_blank">access转mysql(Access2MySQL) v5.7.1 特别版(含注册码)access数据库转换工具</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1636.html" title="Linux安装DNSmasq搭建自己的公共DNS" target="_blank">Linux安装DNSmasq搭建自己的公共DNS</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1627.html" title="Seafile最新安装教程-搭建个人/团队文件同步服务(云存储网盘)" target="_blank">Seafile最新安装教程-搭建个人/团队文件同步服务(云存储网盘)</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1595.html" title="Mac／Linux／Windos下仿站工具，基于Python的仿站工具，earnp/imitation仿站工具" target="_blank">Mac／Linux／Windos下仿站工具，基于Python的仿站工具，earnp/imitation仿站工具</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1585.html" title="正确的 Composer 扩展包安装方法" target="_blank">正确的 Composer 扩展包安装方法</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1566.html" title="命令行下的2款网页截图工具推荐" target="_blank">命令行下的2款网页截图工具推荐</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1565.html" title="wkhtmltopdf 最好用Html转pdf的工具" target="_blank">wkhtmltopdf 最好用Html转pdf的工具</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1546.html" title="gocron - 定时任务web管理系统" target="_blank">gocron - 定时任务web管理系统</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1517.html" title="windows下使用ssh 做socks代理的方法 " target="_blank">windows下使用ssh 做socks代理的方法 </a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1513.html" title="用NW.js(node-webkit)开发多平台的桌面客户端" target="_blank">用NW.js(node-webkit)开发多平台的桌面客户端</a> </li>
          </ul>
    <!-- E list21 -->
    <ul class="list list21">
     	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1512.html" title="git 使用简易指南" target="_blank">git 使用简易指南</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1479.html" title="免费开源GIF动画录制工具 ScreenToGif v2.9" target="_blank">免费开源GIF动画录制工具 ScreenToGif v2.9</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1461.html" title="Cmder--Windows下命令行利器" target="_blank">Cmder--Windows下命令行利器</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1429.html" title="PHPstorm快捷键" target="_blank">PHPstorm快捷键</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1415.html" title="进行数据挖掘的 8 个最佳开源工具" target="_blank">进行数据挖掘的 8 个最佳开源工具</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1411.html" title="几个PHP常用 composer 包推荐" target="_blank">几个PHP常用 composer 包推荐</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1404.html" title="十款被人忽视的堪称神器的Windows软件，你都用过吗？" target="_blank">十款被人忽视的堪称神器的Windows软件，你都用过吗？</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1392.html" title="wget for windows 含 基本使用方法 说明" target="_blank">wget for windows 含 基本使用方法 说明</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1373.html" title="10款数据库管理工具" target="_blank">10款数据库管理工具</a> </li>
      	   <li><a href="/category/soft.html"  target="_blank" class="fl_t">常用软件</a><span class="span">|</span><a href="/detail/1313.html" title="强大的Web调试工具Fiddler" target="_blank">强大的Web调试工具Fiddler</a> </li>
      	   <li><a href="/category/operation.html"  target="_blank" class="fl_t">网站运营</a><span class="span">|</span><a href="/detail/1304.html" title="面临新媒体转型，企业「真的」需要做公众号么？" target="_blank">面临新媒体转型，企业「真的」需要做公众号么？</a> </li>
      	   <li><a href="/category/operation.html"  target="_blank" class="fl_t">网站运营</a><span class="span">|</span><a href="/detail/1303.html" title="15种免费的网络推广方法" target="_blank">15种免费的网络推广方法</a> </li>
          </ul>
    <div style="clear:both;"></div>
  </div>
  <div class="jh_l box">
    <h2 class="ti_01"> <span class="span"> <a href="/category/Industry.html" target="_blank">行业新闻</a> <span> | </span> <a href="/category/webmaster.html" target="_blank">站长杂谈</a> <span> | </span>       <a href="/category/news.html" class="mo">更多<font class="gd">>></font></a></span><font class="c">资讯</font> News </h2>
    <ul class="list list21">
			   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1740.html" title="百度起诉今日头条公然窃取不正当竞争 索赔9000万" target="_blank">百度起诉今日头条公然窃取不正当竞争 索赔9000万</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1707.html" title="一人经济兴起 其中蕴含着哪些创业方式" target="_blank">一人经济兴起 其中蕴含着哪些创业方式</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1682.html" title="从免费到收费 6款SSL证书介绍" target="_blank">从免费到收费 6款SSL证书介绍</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1671.html" title="ThinkPHP5 getshell漏洞预警" target="_blank">ThinkPHP5 getshell漏洞预警</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1594.html" title="如何正确设计404错误页面?5个让你的404页面变的更加实用的技巧" target="_blank">如何正确设计404错误页面?5个让你的404页面变的更加实用的技巧</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1593.html" title="浅谈网站建设中容易忽略的重要细节" target="_blank">浅谈网站建设中容易忽略的重要细节</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1592.html" title="PHP和Python如何选择？或许可以考虑这三个问题" target="_blank">PHP和Python如何选择？或许可以考虑这三个问题</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1591.html" title="中国巨头们的区块链布局：从金融到游戏，版图不断扩张" target="_blank">中国巨头们的区块链布局：从金融到游戏，版图不断扩张</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1562.html" title="股市已经涨疯了，可你却还不知道是什么？1分钟读懂区块链！" target="_blank">股市已经涨疯了，可你却还不知道是什么？1分钟读懂区块链！</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1367.html" title="超实用黑科技！微软将在 Windows 10 原生支持「眼球控制」" target="_blank">超实用黑科技！微软将在 Windows 10 原生支持「眼球控制」</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1366.html" title="又要背锅？女孩骑共享单车逆行车祸身亡 家属索赔108万" target="_blank">又要背锅？女孩骑共享单车逆行车祸身亡 家属索赔108万</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1305.html" title="全球最大婚纱零售商Alfred Angelo Bridal申请破产" target="_blank">全球最大婚纱零售商Alfred Angelo Bridal申请破产</a> </li>
      
    </ul>
    <!-- E list21 -->
    <ul class="list list21">
			   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1296.html" title="微信分销将重新洗牌？微信分销企业要如何突围？" target="_blank">微信分销将重新洗牌？微信分销企业要如何突围？</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1295.html" title="企鹅智酷：摩拜ofo们的用户与未来" target="_blank">企鹅智酷：摩拜ofo们的用户与未来</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1294.html" title="企鹅智酷：2017中国电竞发展报告" target="_blank">企鹅智酷：2017中国电竞发展报告</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1293.html" title="2017年中盘点|微信价值排行榜" target="_blank">2017年中盘点|微信价值排行榜</a> </li>
      	   <li><a href="/category/webmaster.html"  target="_blank" class="fl_t">站长杂谈</a><span class="span">|</span><a href="/detail/1292.html" title="谷歌搜索揭示人类最黑暗的秘密" target="_blank">谷歌搜索揭示人类最黑暗的秘密</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1290.html" title="15个月后，直播的泡沫破了" target="_blank">15个月后，直播的泡沫破了</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1269.html" title="互联网公司换Logo的那些事" target="_blank">互联网公司换Logo的那些事</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1268.html" title="商业周刊专访腾讯“关键先生”刘炽平：我们要成为全球性的消费类科技巨头" target="_blank">商业周刊专访腾讯“关键先生”刘炽平：我们要成为全球性的消费类科技巨头</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1267.html" title="2017中国互联网大会开幕，众力金融应邀参会" target="_blank">2017中国互联网大会开幕，众力金融应邀参会</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1266.html" title="腾讯要退出支付大战？官方回应：你逗我呢？" target="_blank">腾讯要退出支付大战？官方回应：你逗我呢？</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1265.html" title="达达与京东到家合并；阿里巴巴与中国反侵权假冒联盟达成战略合作...." target="_blank">达达与京东到家合并；阿里巴巴与中国反侵权假冒联盟达成战略合作....</a> </li>
      	   <li><a href="/category/Industry.html"  target="_blank" class="fl_t">行业新闻</a><span class="span">|</span><a href="/detail/1264.html" title="SpaceX最后9秒取消猎鹰9号发射 原因不详" target="_blank">SpaceX最后9秒取消猎鹰9号发射 原因不详</a> </li>
          </ul>
    <div style="clear:both;"></div>
  </div>
</div>







<hr><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br><Br>



<style type="text/css">
.col{
width:300px;
}
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
.box h5, .box h6 {
    color: #333;
    height: 35px;
    line-height: 40px;
    overflow: hidden;
    padding-left: 15px;
}
.box .digg li {
    background: url("/template/name/love/li1.gif") no-repeat left 8px;
    padding-left: 16px;
    height: 28px;
    line-height: 28px;
    overflow: hidden;
    position: relative;
}

</style>





<div class="col">
<div class="box">
            <h5 class="title-2">热门排行</h5>
            <dl class="digg lmtj">
                 	   <ul><li><a href="/detail/1507.html" target="_blank">THINKPHP5+GatewayWorker+Workerman 开发在线客服系统</a></li></ul>
                                <ul><li><a href="/detail/1511.html" target="_blank">在手机浏览器网页中点击链接跳转到微信界面的方法</a></li> </ul>
                                <ul><li><a href="/detail/1513.html" target="_blank">用NW.js(node-webkit)开发多平台的桌面客户端</a></li></ul>
                                <ul><li><a href="/detail/1475.html" target="_blank">AdminTemplate 基于LayUI 2.4.5实现的网站后台管理模板</a></li></ul>
                                <ul><li><a href="/detail/1680.html" target="_blank">CentOS 7安装shadowsock（一键安装脚本）</a></li>                </ul>
                                <ul><li><a href="/detail/1306.html" target="_blank">织梦（DEDECMS）微信支付接口 微信插件</a></li>                </ul>
                                <ul><li><a href="/detail/1468.html" target="_blank">PHP生成随机昵称/用户名</a></li>                </ul>
                                <ul><li><a href="/detail/1481.html" target="_blank">THINKPHP5网站分类目录程序 尊云网站目录系统</a></li>                </ul>
                                <ul><li><a href="/detail/1393.html" target="_blank">基于LayUI开发的 网站后台管理模板 BeginnerAdmin</a></li>                </ul>
                   <ul><li><a href="/detail/1315.html" target="_blank">简洁清爽的会员中心模板</a></li>                </ul>
                                <ul>	<li><a href="/detail/1331.html" target="_blank">响应式后台网站模板 - AMA.ADMIN</a></li>                </ul>

			</dl>
 	</div>
	</div>
















<TABLE cellSpacing=0 cellPadding=0 width='1000px' align=center>
<TBODY>
<TR>
<TD class=topic>
<DIV>颜色名称及色样表(HTML版)</DIV></TD></TR>
<TR>
<TD class=content>
<DIV>
<TABLE width='100%'>
<TBODY>
<TR>
<TD width='15%' align=middle>&nbsp;</TD>
<TD align=middle>颜色名</TD>
<TD height=28 align=middle>中文名称</TD>
<TD align=middle>Hex&nbsp;RGB</TD>
<TD align=middle>十进制 Decimal</TD>
<TD width='15%' align=middle>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffb6c1>&nbsp;</TD>
<TD bgColor=#dedede>LightPink</TD>
<TD bgColor=#dedede height=28>浅粉红</TD>
<TD bgColor=#c0c0c0>#FFB6C1</TD>
<TD bgColor=#c0c0c0>255,182,193</TD>
<TD bgColor=#ffb6c1>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffc0cb>&nbsp;</TD>
<TD bgColor=#dedede>Pink</TD>
<TD bgColor=#dedede height=28>粉红</TD>
<TD bgColor=#c0c0c0>#FFC0CB</TD>
<TD bgColor=#c0c0c0>255,192,203</TD>
<TD bgColor=#ffc0cb>&nbsp;</TD></TR>
<TR>
<TD bgColor=#dc143c>&nbsp;</TD>
<TD bgColor=#dedede>Crimson</TD>
<TD bgColor=#dedede height=28>深红(猩红)</TD>
<TD bgColor=#c0c0c0>#DC143C</TD>
<TD bgColor=#c0c0c0>220,20,60</TD>
<TD bgColor=#dc143c>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fff0f5>&nbsp;</TD>
<TD bgColor=#dedede>LavenderBlush</TD>
<TD bgColor=#dedede height=28>淡紫红</TD>
<TD bgColor=#c0c0c0>#FFF0F5</TD>
<TD bgColor=#c0c0c0>255,240,245</TD>
<TD bgColor=#fff0f5>&nbsp;</TD></TR>
<TR>
<TD bgColor=#db7093>&nbsp;</TD>
<TD bgColor=#dedede>PaleVioletRed</TD>
<TD bgColor=#dedede height=28>弱紫罗兰红</TD>
<TD bgColor=#c0c0c0>#DB7093</TD>
<TD bgColor=#c0c0c0>219,112,147</TD>
<TD bgColor=#db7093>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff69b4>&nbsp;</TD>
<TD bgColor=#dedede>HotPink</TD>
<TD bgColor=#dedede height=28>热情的粉红</TD>
<TD bgColor=#c0c0c0>#FF69B4</TD>
<TD bgColor=#c0c0c0>255,105,180</TD>
<TD bgColor=#ff69b4>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff1493>&nbsp;</TD>
<TD bgColor=#dedede>DeepPink</TD>
<TD bgColor=#dedede height=28>深粉红</TD>
<TD bgColor=#c0c0c0>#FF1493</TD>
<TD bgColor=#c0c0c0>255,20,147</TD>
<TD bgColor=#ff1493>&nbsp;</TD></TR>
<TR>
<TD bgColor=#c71585>&nbsp;</TD>
<TD bgColor=#dedede>MediumVioletRed</TD>
<TD bgColor=#dedede height=28>中紫罗兰红</TD>
<TD bgColor=#c0c0c0>#C71585</TD>
<TD bgColor=#c0c0c0>199,21,133</TD>
<TD bgColor=#c71585>&nbsp;</TD></TR>
<TR>
<TD bgColor=#da70d6>&nbsp;</TD>
<TD bgColor=#dedede>Orchid</TD>
<TD bgColor=#dedede height=28>暗紫色(兰花紫)</TD>
<TD bgColor=#c0c0c0>#DA70D6</TD>
<TD bgColor=#c0c0c0>218,112,214</TD>
<TD bgColor=#da70d6>&nbsp;</TD></TR>
<TR>
<TD bgColor=#d8bfd8>&nbsp;</TD>
<TD bgColor=#dedede>Thistle</TD>
<TD bgColor=#dedede height=28>蓟色</TD>
<TD bgColor=#c0c0c0>#D8BFD8</TD>
<TD bgColor=#c0c0c0>216,191,216</TD>
<TD bgColor=#d8bfd8>&nbsp;</TD></TR>
<TR>
<TD bgColor=#dda0dd>&nbsp;</TD>
<TD bgColor=#dedede>Plum</TD>
<TD bgColor=#dedede height=28>洋李色(李子紫)</TD>
<TD bgColor=#c0c0c0>#DDA0DD</TD>
<TD bgColor=#c0c0c0>221,160,221</TD>
<TD bgColor=#dda0dd>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ee82ee>&nbsp;</TD>
<TD bgColor=#dedede>Violet</TD>
<TD bgColor=#dedede height=28>紫罗兰</TD>
<TD bgColor=#c0c0c0>#EE82EE</TD>
<TD bgColor=#c0c0c0>238,130,238</TD>
<TD bgColor=#ee82ee>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff00ff>&nbsp;</TD>
<TD bgColor=#dedede>Magenta</TD>
<TD bgColor=#dedede height=28>洋红(玫瑰红)</TD>
<TD bgColor=#c0c0c0>#FF00FF</TD>
<TD bgColor=#c0c0c0>255,0,255</TD>
<TD bgColor=#ff00ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff00ff>&nbsp;</TD>
<TD bgColor=#dedede>Fuchsia</TD>
<TD bgColor=#dedede height=28>紫红(灯笼海棠)</TD>
<TD bgColor=#c0c0c0>#FF00FF</TD>
<TD bgColor=#c0c0c0>255,0,255</TD>
<TD bgColor=#ff00ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#8b008b>&nbsp;</TD>
<TD bgColor=#dedede>DarkMagenta</TD>
<TD bgColor=#dedede height=28>深洋红</TD>
<TD bgColor=#c0c0c0>#8B008B</TD>
<TD bgColor=#c0c0c0>139,0,139</TD>
<TD bgColor=#8b008b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#800080>&nbsp;</TD>
<TD bgColor=#dedede>Purple</TD>
<TD bgColor=#dedede height=28>紫色</TD>
<TD bgColor=#c0c0c0>#800080</TD>
<TD bgColor=#c0c0c0>128,0,128</TD>
<TD bgColor=#800080>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ba55d3>&nbsp;</TD>
<TD bgColor=#dedede>MediumOrchid</TD>
<TD bgColor=#dedede height=28>中兰花紫</TD>
<TD bgColor=#c0c0c0>#BA55D3</TD>
<TD bgColor=#c0c0c0>186,85,211</TD>
<TD bgColor=#ba55d3>&nbsp;</TD></TR>
<TR>
<TD bgColor=#9400d3>&nbsp;</TD>
<TD bgColor=#dedede>DarkViolet</TD>
<TD bgColor=#dedede height=28>暗紫罗兰</TD>
<TD bgColor=#c0c0c0>#9400D3</TD>
<TD bgColor=#c0c0c0>148,0,211</TD>
<TD bgColor=#9400d3>&nbsp;</TD></TR>
<TR>
<TD bgColor=#9932cc>&nbsp;</TD>
<TD bgColor=#dedede>DarkOrchid</TD>
<TD bgColor=#dedede height=28>暗兰花紫</TD>
<TD bgColor=#c0c0c0>#9932CC</TD>
<TD bgColor=#c0c0c0>153,50,204</TD>
<TD bgColor=#9932cc>&nbsp;</TD></TR>
<TR>
<TD bgColor=#4b0082>&nbsp;</TD>
<TD bgColor=#dedede>Indigo</TD>
<TD bgColor=#dedede height=28>靛青/紫兰色</TD>
<TD bgColor=#c0c0c0>#4B0082</TD>
<TD bgColor=#c0c0c0>75,0,130</TD>
<TD bgColor=#4b0082>&nbsp;</TD></TR>
<TR>
<TD bgColor=#8a2be2>&nbsp;</TD>
<TD bgColor=#dedede>BlueViolet</TD>
<TD bgColor=#dedede height=28>蓝紫罗兰</TD>
<TD bgColor=#c0c0c0>#8A2BE2</TD>
<TD bgColor=#c0c0c0>138,43,226</TD>
<TD bgColor=#8a2be2>&nbsp;</TD></TR>
<TR>
<TD bgColor=#9370db>&nbsp;</TD>
<TD bgColor=#dedede>MediumPurple</TD>
<TD bgColor=#dedede height=28>中紫色</TD>
<TD bgColor=#c0c0c0>#9370DB</TD>
<TD bgColor=#c0c0c0>147,112,219</TD>
<TD bgColor=#9370db>&nbsp;</TD></TR>
<TR>
<TD bgColor=#7b68ee>&nbsp;</TD>
<TD bgColor=#dedede>MediumSlateBlue</TD>
<TD bgColor=#dedede height=28>中暗蓝色(中板岩蓝)</TD>
<TD bgColor=#c0c0c0>#7B68EE</TD>
<TD bgColor=#c0c0c0>123,104,238</TD>
<TD bgColor=#7b68ee>&nbsp;</TD></TR>
<TR>
<TD bgColor=#6a5acd>&nbsp;</TD>
<TD bgColor=#dedede>SlateBlue</TD>
<TD bgColor=#dedede height=28>石蓝色(板岩蓝)</TD>
<TD bgColor=#c0c0c0>#6A5ACD</TD>
<TD bgColor=#c0c0c0>106,90,205</TD>
<TD bgColor=#6a5acd>&nbsp;</TD></TR>
<TR>
<TD bgColor=#483d8b>&nbsp;</TD>
<TD bgColor=#dedede>DarkSlateBlue</TD>
<TD bgColor=#dedede height=28>暗灰蓝色(暗板岩蓝)</TD>
<TD bgColor=#c0c0c0>#483D8B</TD>
<TD bgColor=#c0c0c0>72,61,139</TD>
<TD bgColor=#483d8b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#e6e6fa>&nbsp;</TD>
<TD bgColor=#dedede>Lavender</TD>
<TD bgColor=#dedede height=28>淡紫色(熏衣草淡紫)</TD>
<TD bgColor=#c0c0c0>#E6E6FA</TD>
<TD bgColor=#c0c0c0>230,230,250</TD>
<TD bgColor=#e6e6fa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f8f8ff>&nbsp;</TD>
<TD bgColor=#dedede>GhostWhite</TD>
<TD bgColor=#dedede height=28>幽灵白</TD>
<TD bgColor=#c0c0c0>#F8F8FF</TD>
<TD bgColor=#c0c0c0>248,248,255</TD>
<TD bgColor=#f8f8ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#0000ff>&nbsp;</TD>
<TD bgColor=#dedede>Blue</TD>
<TD bgColor=#dedede height=28>纯蓝</TD>
<TD bgColor=#c0c0c0>#0000FF</TD>
<TD bgColor=#c0c0c0>0,0,255</TD>
<TD bgColor=#0000ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#0000cd>&nbsp;</TD>
<TD bgColor=#dedede>MediumBlue</TD>
<TD bgColor=#dedede height=28>中蓝色</TD>
<TD bgColor=#c0c0c0>#0000CD</TD>
<TD bgColor=#c0c0c0>0,0,205</TD>
<TD bgColor=#0000cd>&nbsp;</TD></TR>
<TR>
<TD bgColor=#191970>&nbsp;</TD>
<TD bgColor=#dedede>MidnightBlue</TD>
<TD bgColor=#dedede height=28>午夜蓝</TD>
<TD bgColor=#c0c0c0>#191970</TD>
<TD bgColor=#c0c0c0>25,25,112</TD>
<TD bgColor=#191970>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00008b>&nbsp;</TD>
<TD bgColor=#dedede>DarkBlue</TD>
<TD bgColor=#dedede height=28>暗蓝色</TD>
<TD bgColor=#c0c0c0>#00008B</TD>
<TD bgColor=#c0c0c0>0,0,139</TD>
<TD bgColor=#00008b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#000080>&nbsp;</TD>
<TD bgColor=#dedede>Navy</TD>
<TD bgColor=#dedede height=28>海军蓝</TD>
<TD bgColor=#c0c0c0>#000080</TD>
<TD bgColor=#c0c0c0>0,0,128</TD>
<TD bgColor=#000080>&nbsp;</TD></TR>
<TR>
<TD bgColor=#4169e1>&nbsp;</TD>
<TD bgColor=#dedede>RoyalBlue</TD>
<TD bgColor=#dedede height=28>皇家蓝/宝蓝</TD>
<TD bgColor=#c0c0c0>#4169E1</TD>
<TD bgColor=#c0c0c0>65,105,225</TD>
<TD bgColor=#4169e1>&nbsp;</TD></TR>
<TR>
<TD bgColor=#6495ed>&nbsp;</TD>
<TD bgColor=#dedede>CornflowerBlue</TD>
<TD bgColor=#dedede height=28>矢车菊蓝</TD>
<TD bgColor=#c0c0c0>#6495ED</TD>
<TD bgColor=#c0c0c0>100,149,237</TD>
<TD bgColor=#6495ed>&nbsp;</TD></TR>
<TR>
<TD bgColor=#b0c4de>&nbsp;</TD>
<TD bgColor=#dedede>LightSteelBlue</TD>
<TD bgColor=#dedede height=28>亮钢蓝</TD>
<TD bgColor=#c0c0c0>#B0C4DE</TD>
<TD bgColor=#c0c0c0>176,196,222</TD>
<TD bgColor=#b0c4de>&nbsp;</TD></TR>
<TR>
<TD bgColor=#778899>&nbsp;</TD>
<TD bgColor=#dedede>LightSlateGray</TD>
<TD bgColor=#dedede height=28>亮蓝灰(亮石板灰)</TD>
<TD bgColor=#c0c0c0>#778899</TD>
<TD bgColor=#c0c0c0>119,136,153</TD>
<TD bgColor=#778899>&nbsp;</TD></TR>
<TR>
<TD bgColor=#708090>&nbsp;</TD>
<TD bgColor=#dedede>SlateGray</TD>
<TD bgColor=#dedede height=28>灰石色(石板灰)</TD>
<TD bgColor=#c0c0c0>#708090</TD>
<TD bgColor=#c0c0c0>112,128,144</TD>
<TD bgColor=#708090>&nbsp;</TD></TR>
<TR>
<TD bgColor=#1e90ff>&nbsp;</TD>
<TD bgColor=#dedede>DodgerBlue</TD>
<TD bgColor=#dedede height=28>闪兰色(道奇蓝)</TD>
<TD bgColor=#c0c0c0>#1E90FF</TD>
<TD bgColor=#c0c0c0>30,144,255</TD>
<TD bgColor=#1e90ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f0f8ff>&nbsp;</TD>
<TD bgColor=#dedede>AliceBlue</TD>
<TD bgColor=#dedede height=28>爱丽丝蓝</TD>
<TD bgColor=#c0c0c0>#F0F8FF</TD>
<TD bgColor=#c0c0c0>240,248,255</TD>
<TD bgColor=#f0f8ff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#4682b4>&nbsp;</TD>
<TD bgColor=#dedede>SteelBlue</TD>
<TD bgColor=#dedede height=28>钢蓝/铁青</TD>
<TD bgColor=#c0c0c0>#4682B4</TD>
<TD bgColor=#c0c0c0>70,130,180</TD>
<TD bgColor=#4682b4>&nbsp;</TD></TR>
<TR>
<TD bgColor=#87cefa>&nbsp;</TD>
<TD bgColor=#dedede>LightSkyBlue</TD>
<TD bgColor=#dedede height=28>亮天蓝色</TD>
<TD bgColor=#c0c0c0>#87CEFA</TD>
<TD bgColor=#c0c0c0>135,206,250</TD>
<TD bgColor=#87cefa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#87ceeb>&nbsp;</TD>
<TD bgColor=#dedede>SkyBlue</TD>
<TD bgColor=#dedede height=28>天蓝色</TD>
<TD bgColor=#c0c0c0>#87CEEB</TD>
<TD bgColor=#c0c0c0>135,206,235</TD>
<TD bgColor=#87ceeb>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00bfff>&nbsp;</TD>
<TD bgColor=#dedede>DeepSkyBlue</TD>
<TD bgColor=#dedede height=28>深天蓝</TD>
<TD bgColor=#c0c0c0>#00BFFF</TD>
<TD bgColor=#c0c0c0>0,191,255</TD>
<TD bgColor=#00bfff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#add8e6>&nbsp;</TD>
<TD bgColor=#dedede>LightBlue</TD>
<TD bgColor=#dedede height=28>亮蓝</TD>
<TD bgColor=#c0c0c0>#ADD8E6</TD>
<TD bgColor=#c0c0c0>173,216,230</TD>
<TD bgColor=#add8e6>&nbsp;</TD></TR>
<TR>
<TD bgColor=#b0e0e6>&nbsp;</TD>
<TD bgColor=#dedede>PowderBlue</TD>
<TD bgColor=#dedede height=28>粉蓝色(火药青)</TD>
<TD bgColor=#c0c0c0>#B0E0E6</TD>
<TD bgColor=#c0c0c0>176,224,230</TD>
<TD bgColor=#b0e0e6>&nbsp;</TD></TR>
<TR>
<TD bgColor=#5f9ea0>&nbsp;</TD>
<TD bgColor=#dedede>CadetBlue</TD>
<TD bgColor=#dedede height=28>军兰色(军服蓝)</TD>
<TD bgColor=#c0c0c0>#5F9EA0</TD>
<TD bgColor=#c0c0c0>95,158,160</TD>
<TD bgColor=#5f9ea0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f0ffff>&nbsp;</TD>
<TD bgColor=#dedede>Azure</TD>
<TD bgColor=#dedede height=28>蔚蓝色</TD>
<TD bgColor=#c0c0c0>#F0FFFF</TD>
<TD bgColor=#c0c0c0>240,255,255</TD>
<TD bgColor=#f0ffff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#e0ffff>&nbsp;</TD>
<TD bgColor=#dedede>LightCyan</TD>
<TD bgColor=#dedede height=28>淡青色</TD>
<TD bgColor=#c0c0c0>#E0FFFF</TD>
<TD bgColor=#c0c0c0>224,255,255</TD>
<TD bgColor=#e0ffff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#afeeee>&nbsp;</TD>
<TD bgColor=#dedede>PaleTurquoise</TD>
<TD bgColor=#dedede height=28>弱绿宝石</TD>
<TD bgColor=#c0c0c0>#AFEEEE</TD>
<TD bgColor=#c0c0c0>175,238,238</TD>
<TD bgColor=#afeeee>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00ffff>&nbsp;</TD>
<TD bgColor=#dedede>Cyan</TD>
<TD bgColor=#dedede height=28>青色</TD>
<TD bgColor=#c0c0c0>#00FFFF</TD>
<TD bgColor=#c0c0c0>0,255,255</TD>
<TD bgColor=#00ffff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00ffff>&nbsp;</TD>
<TD bgColor=#dedede>Aqua</TD>
<TD bgColor=#dedede height=28>浅绿色(水色)</TD>
<TD bgColor=#c0c0c0>#00FFFF</TD>
<TD bgColor=#c0c0c0>0,255,255</TD>
<TD bgColor=#00ffff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00ced1>&nbsp;</TD>
<TD bgColor=#dedede>DarkTurquoise</TD>
<TD bgColor=#dedede height=28>暗绿宝石</TD>
<TD bgColor=#c0c0c0>#00CED1</TD>
<TD bgColor=#c0c0c0>0,206,209</TD>
<TD bgColor=#00ced1>&nbsp;</TD></TR>
<TR>
<TD bgColor=#2f4f4f>&nbsp;</TD>
<TD bgColor=#dedede>DarkSlateGray</TD>
<TD bgColor=#dedede height=28>暗瓦灰色(暗石板灰)</TD>
<TD bgColor=#c0c0c0>#2F4F4F</TD>
<TD bgColor=#c0c0c0>47,79,79</TD>
<TD bgColor=#2f4f4f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#008b8b>&nbsp;</TD>
<TD bgColor=#dedede>DarkCyan</TD>
<TD bgColor=#dedede height=28>暗青色</TD>
<TD bgColor=#c0c0c0>#008B8B</TD>
<TD bgColor=#c0c0c0>0,139,139</TD>
<TD bgColor=#008b8b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#008080>&nbsp;</TD>
<TD bgColor=#dedede>Teal</TD>
<TD bgColor=#dedede height=28>水鸭色</TD>
<TD bgColor=#c0c0c0>#008080</TD>
<TD bgColor=#c0c0c0>0,128,128</TD>
<TD bgColor=#008080>&nbsp;</TD></TR>
<TR>
<TD bgColor=#48d1cc>&nbsp;</TD>
<TD bgColor=#dedede>MediumTurquoise</TD>
<TD bgColor=#dedede height=28>中绿宝石</TD>
<TD bgColor=#c0c0c0>#48D1CC</TD>
<TD bgColor=#c0c0c0>72,209,204</TD>
<TD bgColor=#48d1cc>&nbsp;</TD></TR>
<TR>
<TD bgColor=#20b2aa>&nbsp;</TD>
<TD bgColor=#dedede>LightSeaGreen</TD>
<TD bgColor=#dedede height=28>浅海洋绿</TD>
<TD bgColor=#c0c0c0>#20B2AA</TD>
<TD bgColor=#c0c0c0>32,178,170</TD>
<TD bgColor=#20b2aa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#40e0d0>&nbsp;</TD>
<TD bgColor=#dedede>Turquoise</TD>
<TD bgColor=#dedede height=28>绿宝石</TD>
<TD bgColor=#c0c0c0>#40E0D0</TD>
<TD bgColor=#c0c0c0>64,224,208</TD>
<TD bgColor=#40e0d0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#7fffd4>&nbsp;</TD>
<TD bgColor=#dedede>Aquamarine</TD>
<TD bgColor=#dedede height=28>宝石碧绿</TD>
<TD bgColor=#c0c0c0>#7FFFD4</TD>
<TD bgColor=#c0c0c0>127,255,212</TD>
<TD bgColor=#7fffd4>&nbsp;</TD></TR>
<TR>
<TD bgColor=#66cdaa>&nbsp;</TD>
<TD bgColor=#dedede>MediumAquamarine</TD>
<TD bgColor=#dedede height=28>中宝石碧绿</TD>
<TD bgColor=#c0c0c0>#66CDAA</TD>
<TD bgColor=#c0c0c0>102,205,170</TD>
<TD bgColor=#66cdaa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00fa9a>&nbsp;</TD>
<TD bgColor=#dedede>MediumSpringGreen</TD>
<TD bgColor=#dedede height=28>中春绿色</TD>
<TD bgColor=#c0c0c0>#00FA9A</TD>
<TD bgColor=#c0c0c0>0,250,154</TD>
<TD bgColor=#00fa9a>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f5fffa>&nbsp;</TD>
<TD bgColor=#dedede>MintCream</TD>
<TD bgColor=#dedede height=28>薄荷奶油</TD>
<TD bgColor=#c0c0c0>#F5FFFA</TD>
<TD bgColor=#c0c0c0>245,255,250</TD>
<TD bgColor=#f5fffa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00ff7f>&nbsp;</TD>
<TD bgColor=#dedede>SpringGreen</TD>
<TD bgColor=#dedede height=28>春绿色</TD>
<TD bgColor=#c0c0c0>#00FF7F</TD>
<TD bgColor=#c0c0c0>0,255,127</TD>
<TD bgColor=#00ff7f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#3cb371>&nbsp;</TD>
<TD bgColor=#dedede>MediumSeaGreen</TD>
<TD bgColor=#dedede height=28>中海洋绿</TD>
<TD bgColor=#c0c0c0>#3CB371</TD>
<TD bgColor=#c0c0c0>60,179,113</TD>
<TD bgColor=#3cb371>&nbsp;</TD></TR>
<TR>
<TD bgColor=#2e8b57>&nbsp;</TD>
<TD bgColor=#dedede>SeaGreen</TD>
<TD bgColor=#dedede height=28>海洋绿</TD>
<TD bgColor=#c0c0c0>#2E8B57</TD>
<TD bgColor=#c0c0c0>46,139,87</TD>
<TD bgColor=#2e8b57>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f0fff0>&nbsp;</TD>
<TD bgColor=#dedede>Honeydew</TD>
<TD bgColor=#dedede height=28>蜜色(蜜瓜色)</TD>
<TD bgColor=#c0c0c0>#F0FFF0</TD>
<TD bgColor=#c0c0c0>240,255,240</TD>
<TD bgColor=#f0fff0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#90ee90>&nbsp;</TD>
<TD bgColor=#dedede>LightGreen</TD>
<TD bgColor=#dedede height=28>淡绿色</TD>
<TD bgColor=#c0c0c0>#90EE90</TD>
<TD bgColor=#c0c0c0>144,238,144</TD>
<TD bgColor=#90ee90>&nbsp;</TD></TR>
<TR>
<TD bgColor=#98fb98>&nbsp;</TD>
<TD bgColor=#dedede>PaleGreen</TD>
<TD bgColor=#dedede height=28>弱绿色</TD>
<TD bgColor=#c0c0c0>#98FB98</TD>
<TD bgColor=#c0c0c0>152,251,152</TD>
<TD bgColor=#98fb98>&nbsp;</TD></TR>
<TR>
<TD bgColor=#8fbc8f>&nbsp;</TD>
<TD bgColor=#dedede>DarkSeaGreen</TD>
<TD bgColor=#dedede height=28>暗海洋绿</TD>
<TD bgColor=#c0c0c0>#8FBC8F</TD>
<TD bgColor=#c0c0c0>143,188,143</TD>
<TD bgColor=#8fbc8f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#32cd32>&nbsp;</TD>
<TD bgColor=#dedede>LimeGreen</TD>
<TD bgColor=#dedede height=28>闪光深绿</TD>
<TD bgColor=#c0c0c0>#32CD32</TD>
<TD bgColor=#c0c0c0>50,205,50</TD>
<TD bgColor=#32cd32>&nbsp;</TD></TR>
<TR>
<TD bgColor=#00ff00>&nbsp;</TD>
<TD bgColor=#dedede>Lime</TD>
<TD bgColor=#dedede height=28>闪光绿</TD>
<TD bgColor=#c0c0c0>#00FF00</TD>
<TD bgColor=#c0c0c0>0,255,0</TD>
<TD bgColor=#00ff00>&nbsp;</TD></TR>
<TR>
<TD bgColor=#228b22>&nbsp;</TD>
<TD bgColor=#dedede>ForestGreen</TD>
<TD bgColor=#dedede height=28>森林绿</TD>
<TD bgColor=#c0c0c0>#228B22</TD>
<TD bgColor=#c0c0c0>34,139,34</TD>
<TD bgColor=#228b22>&nbsp;</TD></TR>
<TR>
<TD bgColor=#008000>&nbsp;</TD>
<TD bgColor=#dedede>Green</TD>
<TD bgColor=#dedede height=28>纯绿</TD>
<TD bgColor=#c0c0c0>#008000</TD>
<TD bgColor=#c0c0c0>0,128,0</TD>
<TD bgColor=#008000>&nbsp;</TD></TR>
<TR>
<TD bgColor=#006400>&nbsp;</TD>
<TD bgColor=#dedede>DarkGreen</TD>
<TD bgColor=#dedede height=28>暗绿色</TD>
<TD bgColor=#c0c0c0>#006400</TD>
<TD bgColor=#c0c0c0>0,100,0</TD>
<TD bgColor=#006400>&nbsp;</TD></TR>
<TR>
<TD bgColor=#7fff00>&nbsp;</TD>
<TD bgColor=#dedede>Chartreuse</TD>
<TD bgColor=#dedede height=28>黄绿色(查特酒绿)</TD>
<TD bgColor=#c0c0c0>#7FFF00</TD>
<TD bgColor=#c0c0c0>127,255,0</TD>
<TD bgColor=#7fff00>&nbsp;</TD></TR>
<TR>
<TD bgColor=#7cfc00>&nbsp;</TD>
<TD bgColor=#dedede>LawnGreen</TD>
<TD bgColor=#dedede height=28>草绿色(草坪绿_</TD>
<TD bgColor=#c0c0c0>#7CFC00</TD>
<TD bgColor=#c0c0c0>124,252,0</TD>
<TD bgColor=#7cfc00>&nbsp;</TD></TR>
<TR>
<TD bgColor=#adff2f>&nbsp;</TD>
<TD bgColor=#dedede>GreenYellow</TD>
<TD bgColor=#dedede height=28>绿黄色</TD>
<TD bgColor=#c0c0c0>#ADFF2F</TD>
<TD bgColor=#c0c0c0>173,255,47</TD>
<TD bgColor=#adff2f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#556b2f>&nbsp;</TD>
<TD bgColor=#dedede>DarkOliveGreen</TD>
<TD bgColor=#dedede height=28>暗橄榄绿</TD>
<TD bgColor=#c0c0c0>#556B2F</TD>
<TD bgColor=#c0c0c0>85,107,47</TD>
<TD bgColor=#556b2f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#9acd32>&nbsp;</TD>
<TD bgColor=#dedede>YellowGreen</TD>
<TD bgColor=#dedede height=28>黄绿色</TD>
<TD bgColor=#c0c0c0>#9ACD32</TD>
<TD bgColor=#c0c0c0>154,205,50</TD>
<TD bgColor=#9acd32>&nbsp;</TD></TR>
<TR>
<TD bgColor=#6b8e23>&nbsp;</TD>
<TD bgColor=#dedede>OliveDrab</TD>
<TD bgColor=#dedede height=28>橄榄褐色</TD>
<TD bgColor=#c0c0c0>#6B8E23</TD>
<TD bgColor=#c0c0c0>107,142,35</TD>
<TD bgColor=#6b8e23>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f5f5dc>&nbsp;</TD>
<TD bgColor=#dedede>Beige</TD>
<TD bgColor=#dedede height=28>米色/灰棕色</TD>
<TD bgColor=#c0c0c0>#F5F5DC</TD>
<TD bgColor=#c0c0c0>245,245,220</TD>
<TD bgColor=#f5f5dc>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fafad2>&nbsp;</TD>
<TD bgColor=#dedede>LightGoldenrodYellow</TD>
<TD bgColor=#dedede height=28>亮菊黄</TD>
<TD bgColor=#c0c0c0>#FAFAD2</TD>
<TD bgColor=#c0c0c0>250,250,210</TD>
<TD bgColor=#fafad2>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fffff0>&nbsp;</TD>
<TD bgColor=#dedede>Ivory</TD>
<TD bgColor=#dedede height=28>象牙色</TD>
<TD bgColor=#c0c0c0>#FFFFF0</TD>
<TD bgColor=#c0c0c0>255,255,240</TD>
<TD bgColor=#fffff0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffffe0>&nbsp;</TD>
<TD bgColor=#dedede>LightYellow</TD>
<TD bgColor=#dedede height=28>浅黄色</TD>
<TD bgColor=#c0c0c0>#FFFFE0</TD>
<TD bgColor=#c0c0c0>255,255,224</TD>
<TD bgColor=#ffffe0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffff00>&nbsp;</TD>
<TD bgColor=#dedede>Yellow</TD>
<TD bgColor=#dedede height=28>纯黄</TD>
<TD bgColor=#c0c0c0>#FFFF00</TD>
<TD bgColor=#c0c0c0>255,255,0</TD>
<TD bgColor=#ffff00>&nbsp;</TD></TR>
<TR>
<TD bgColor=#808000>&nbsp;</TD>
<TD bgColor=#dedede>Olive</TD>
<TD bgColor=#dedede height=28>橄榄</TD>
<TD bgColor=#c0c0c0>#808000</TD>
<TD bgColor=#c0c0c0>128,128,0</TD>
<TD bgColor=#808000>&nbsp;</TD></TR>
<TR>
<TD bgColor=#bdb76b>&nbsp;</TD>
<TD bgColor=#dedede>DarkKhaki</TD>
<TD bgColor=#dedede height=28>暗黄褐色(深卡叽布)</TD>
<TD bgColor=#c0c0c0>#BDB76B</TD>
<TD bgColor=#c0c0c0>189,183,107</TD>
<TD bgColor=#bdb76b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fffacd>&nbsp;</TD>
<TD bgColor=#dedede>LemonChiffon</TD>
<TD bgColor=#dedede height=28>柠檬绸</TD>
<TD bgColor=#c0c0c0>#FFFACD</TD>
<TD bgColor=#c0c0c0>255,250,205</TD>
<TD bgColor=#fffacd>&nbsp;</TD></TR>
<TR>
<TD bgColor=#eee8aa>&nbsp;</TD>
<TD bgColor=#dedede>PaleGoldenrod</TD>
<TD bgColor=#dedede height=28>灰菊黄(苍麒麟色)</TD>
<TD bgColor=#c0c0c0>#EEE8AA</TD>
<TD bgColor=#c0c0c0>238,232,170</TD>
<TD bgColor=#eee8aa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f0e68c>&nbsp;</TD>
<TD bgColor=#dedede>Khaki</TD>
<TD bgColor=#dedede height=28>黄褐色(卡叽布)</TD>
<TD bgColor=#c0c0c0>#F0E68C</TD>
<TD bgColor=#c0c0c0>240,230,140</TD>
<TD bgColor=#f0e68c>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffd700>&nbsp;</TD>
<TD bgColor=#dedede>Gold</TD>
<TD bgColor=#dedede height=28>金色</TD>
<TD bgColor=#c0c0c0>#FFD700</TD>
<TD bgColor=#c0c0c0>255,215,0</TD>
<TD bgColor=#ffd700>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fff8dc>&nbsp;</TD>
<TD bgColor=#dedede>Cornsilk</TD>
<TD bgColor=#dedede height=28>玉米丝色</TD>
<TD bgColor=#c0c0c0>#FFF8DC</TD>
<TD bgColor=#c0c0c0>255,248,220</TD>
<TD bgColor=#fff8dc>&nbsp;</TD></TR>
<TR>
<TD bgColor=#daa520>&nbsp;</TD>
<TD bgColor=#dedede>Goldenrod</TD>
<TD bgColor=#dedede height=28>金菊黄</TD>
<TD bgColor=#c0c0c0>#DAA520</TD>
<TD bgColor=#c0c0c0>218,165,32</TD>
<TD bgColor=#daa520>&nbsp;</TD></TR>
<TR>
<TD bgColor=#b8860b>&nbsp;</TD>
<TD bgColor=#dedede>DarkGoldenrod</TD>
<TD bgColor=#dedede height=28>暗金菊黄</TD>
<TD bgColor=#c0c0c0>#B8860B</TD>
<TD bgColor=#c0c0c0>184,134,11</TD>
<TD bgColor=#b8860b>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fffaf0>&nbsp;</TD>
<TD bgColor=#dedede>FloralWhite</TD>
<TD bgColor=#dedede height=28>花的白色</TD>
<TD bgColor=#c0c0c0>#FFFAF0</TD>
<TD bgColor=#c0c0c0>255,250,240</TD>
<TD bgColor=#fffaf0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fdf5e6>&nbsp;</TD>
<TD bgColor=#dedede>OldLace</TD>
<TD bgColor=#dedede height=28>老花色(旧蕾丝)</TD>
<TD bgColor=#c0c0c0>#FDF5E6</TD>
<TD bgColor=#c0c0c0>253,245,230</TD>
<TD bgColor=#fdf5e6>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f5deb3>&nbsp;</TD>
<TD bgColor=#dedede>Wheat</TD>
<TD bgColor=#dedede height=28>浅黄色(小麦色)</TD>
<TD bgColor=#c0c0c0>#F5DEB3</TD>
<TD bgColor=#c0c0c0>245,222,179</TD>
<TD bgColor=#f5deb3>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffe4b5>&nbsp;</TD>
<TD bgColor=#dedede>Moccasin</TD>
<TD bgColor=#dedede height=28>鹿皮色(鹿皮靴)</TD>
<TD bgColor=#c0c0c0>#FFE4B5</TD>
<TD bgColor=#c0c0c0>255,228,181</TD>
<TD bgColor=#ffe4b5>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffa500>&nbsp;</TD>
<TD bgColor=#dedede>Orange</TD>
<TD bgColor=#dedede height=28>橙色</TD>
<TD bgColor=#c0c0c0>#FFA500</TD>
<TD bgColor=#c0c0c0>255,165,0</TD>
<TD bgColor=#ffa500>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffefd5>&nbsp;</TD>
<TD bgColor=#dedede>PapayaWhip</TD>
<TD bgColor=#dedede height=28>番木色(番木瓜)</TD>
<TD bgColor=#c0c0c0>#FFEFD5</TD>
<TD bgColor=#c0c0c0>255,239,213</TD>
<TD bgColor=#ffefd5>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffebcd>&nbsp;</TD>
<TD bgColor=#dedede>BlanchedAlmond</TD>
<TD bgColor=#dedede height=28>白杏色</TD>
<TD bgColor=#c0c0c0>#FFEBCD</TD>
<TD bgColor=#c0c0c0>255,235,205</TD>
<TD bgColor=#ffebcd>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffdead>&nbsp;</TD>
<TD bgColor=#dedede>NavajoWhite</TD>
<TD bgColor=#dedede height=28>纳瓦白(土著白)</TD>
<TD bgColor=#c0c0c0>#FFDEAD</TD>
<TD bgColor=#c0c0c0>255,222,173</TD>
<TD bgColor=#ffdead>&nbsp;</TD></TR>
<TR>
<TD bgColor=#faebd7>&nbsp;</TD>
<TD bgColor=#dedede>AntiqueWhite</TD>
<TD bgColor=#dedede height=28>古董白</TD>
<TD bgColor=#c0c0c0>#FAEBD7</TD>
<TD bgColor=#c0c0c0>250,235,215</TD>
<TD bgColor=#faebd7>&nbsp;</TD></TR>
<TR>
<TD bgColor=#d2b48c>&nbsp;</TD>
<TD bgColor=#dedede>Tan</TD>
<TD bgColor=#dedede height=28>茶色</TD>
<TD bgColor=#c0c0c0>#D2B48C</TD>
<TD bgColor=#c0c0c0>210,180,140</TD>
<TD bgColor=#d2b48c>&nbsp;</TD></TR>
<TR>
<TD bgColor=#deb887>&nbsp;</TD>
<TD bgColor=#dedede>BurlyWood</TD>
<TD bgColor=#dedede height=28>硬木色</TD>
<TD bgColor=#c0c0c0>#DEB887</TD>
<TD bgColor=#c0c0c0>222,184,135</TD>
<TD bgColor=#deb887>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffe4c4>&nbsp;</TD>
<TD bgColor=#dedede>Bisque</TD>
<TD bgColor=#dedede height=28>陶坯黄</TD>
<TD bgColor=#c0c0c0>#FFE4C4</TD>
<TD bgColor=#c0c0c0>255,228,196</TD>
<TD bgColor=#ffe4c4>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff8c00>&nbsp;</TD>
<TD bgColor=#dedede>DarkOrange</TD>
<TD bgColor=#dedede height=28>深橙色</TD>
<TD bgColor=#c0c0c0>#FF8C00</TD>
<TD bgColor=#c0c0c0>255,140,0</TD>
<TD bgColor=#ff8c00>&nbsp;</TD></TR>
<TR>
<TD bgColor=#faf0e6>&nbsp;</TD>
<TD bgColor=#dedede>Linen</TD>
<TD bgColor=#dedede height=28>亚麻布</TD>
<TD bgColor=#c0c0c0>#FAF0E6</TD>
<TD bgColor=#c0c0c0>250,240,230</TD>
<TD bgColor=#faf0e6>&nbsp;</TD></TR>
<TR>
<TD bgColor=#cd853f>&nbsp;</TD>
<TD bgColor=#dedede>Peru</TD>
<TD bgColor=#dedede height=28>秘鲁色</TD>
<TD bgColor=#c0c0c0>#CD853F</TD>
<TD bgColor=#c0c0c0>205,133,63</TD>
<TD bgColor=#cd853f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffdab9>&nbsp;</TD>
<TD bgColor=#dedede>PeachPuff</TD>
<TD bgColor=#dedede height=28>桃肉色</TD>
<TD bgColor=#c0c0c0>#FFDAB9</TD>
<TD bgColor=#c0c0c0>255,218,185</TD>
<TD bgColor=#ffdab9>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f4a460>&nbsp;</TD>
<TD bgColor=#dedede>SandyBrown</TD>
<TD bgColor=#dedede height=28>沙棕色</TD>
<TD bgColor=#c0c0c0>#F4A460</TD>
<TD bgColor=#c0c0c0>244,164,96</TD>
<TD bgColor=#f4a460>&nbsp;</TD></TR>
<TR>
<TD bgColor=#d2691e>&nbsp;</TD>
<TD bgColor=#dedede>Chocolate</TD>
<TD bgColor=#dedede height=28>巧克力色</TD>
<TD bgColor=#c0c0c0>#D2691E</TD>
<TD bgColor=#c0c0c0>210,105,30</TD>
<TD bgColor=#d2691e>&nbsp;</TD></TR>
<TR>
<TD bgColor=#8b4513>&nbsp;</TD>
<TD bgColor=#dedede>SaddleBrown</TD>
<TD bgColor=#dedede height=28>重褐色(马鞍棕色)</TD>
<TD bgColor=#c0c0c0>#8B4513</TD>
<TD bgColor=#c0c0c0>139,69,19</TD>
<TD bgColor=#8b4513>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fff5ee>&nbsp;</TD>
<TD bgColor=#dedede>Seashell</TD>
<TD bgColor=#dedede height=28>海贝壳</TD>
<TD bgColor=#c0c0c0>#FFF5EE</TD>
<TD bgColor=#c0c0c0>255,245,238</TD>
<TD bgColor=#fff5ee>&nbsp;</TD></TR>
<TR>
<TD bgColor=#a0522d>&nbsp;</TD>
<TD bgColor=#dedede>Sienna</TD>
<TD bgColor=#dedede height=28>黄土赭色</TD>
<TD bgColor=#c0c0c0>#A0522D</TD>
<TD bgColor=#c0c0c0>160,82,45</TD>
<TD bgColor=#a0522d>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffa07a>&nbsp;</TD>
<TD bgColor=#dedede>LightSalmon</TD>
<TD bgColor=#dedede height=28>浅鲑鱼肉色</TD>
<TD bgColor=#c0c0c0>#FFA07A</TD>
<TD bgColor=#c0c0c0>255,160,122</TD>
<TD bgColor=#ffa07a>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff7f50>&nbsp;</TD>
<TD bgColor=#dedede>Coral</TD>
<TD bgColor=#dedede height=28>珊瑚</TD>
<TD bgColor=#c0c0c0>#FF7F50</TD>
<TD bgColor=#c0c0c0>255,127,80</TD>
<TD bgColor=#ff7f50>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff4500>&nbsp;</TD>
<TD bgColor=#dedede>OrangeRed</TD>
<TD bgColor=#dedede height=28>橙红色</TD>
<TD bgColor=#c0c0c0>#FF4500</TD>
<TD bgColor=#c0c0c0>255,69,0</TD>
<TD bgColor=#ff4500>&nbsp;</TD></TR>
<TR>
<TD bgColor=#e9967a>&nbsp;</TD>
<TD bgColor=#dedede>DarkSalmon</TD>
<TD bgColor=#dedede height=28>深鲜肉/鲑鱼色</TD>
<TD bgColor=#c0c0c0>#E9967A</TD>
<TD bgColor=#c0c0c0>233,150,122</TD>
<TD bgColor=#e9967a>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff6347>&nbsp;</TD>
<TD bgColor=#dedede>Tomato</TD>
<TD bgColor=#dedede height=28>番茄红</TD>
<TD bgColor=#c0c0c0>#FF6347</TD>
<TD bgColor=#c0c0c0>255,99,71</TD>
<TD bgColor=#ff6347>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffe4e1>&nbsp;</TD>
<TD bgColor=#dedede>MistyRose</TD>
<TD bgColor=#dedede height=28>浅玫瑰色(薄雾玫瑰)</TD>
<TD bgColor=#c0c0c0>#FFE4E1</TD>
<TD bgColor=#c0c0c0>255,228,225</TD>
<TD bgColor=#ffe4e1>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fa8072>&nbsp;</TD>
<TD bgColor=#dedede>Salmon</TD>
<TD bgColor=#dedede height=28>鲜肉/鲑鱼色</TD>
<TD bgColor=#c0c0c0>#FA8072</TD>
<TD bgColor=#c0c0c0>250,128,114</TD>
<TD bgColor=#fa8072>&nbsp;</TD></TR>
<TR>
<TD bgColor=#fffafa>&nbsp;</TD>
<TD bgColor=#dedede>Snow</TD>
<TD bgColor=#dedede height=28>雪白色</TD>
<TD bgColor=#c0c0c0>#FFFAFA</TD>
<TD bgColor=#c0c0c0>255,250,250</TD>
<TD bgColor=#fffafa>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f08080>&nbsp;</TD>
<TD bgColor=#dedede>LightCoral</TD>
<TD bgColor=#dedede height=28>淡珊瑚色</TD>
<TD bgColor=#c0c0c0>#F08080</TD>
<TD bgColor=#c0c0c0>240,128,128</TD>
<TD bgColor=#f08080>&nbsp;</TD></TR>
<TR>
<TD bgColor=#bc8f8f>&nbsp;</TD>
<TD bgColor=#dedede>RosyBrown</TD>
<TD bgColor=#dedede height=28>玫瑰棕色</TD>
<TD bgColor=#c0c0c0>#BC8F8F</TD>
<TD bgColor=#c0c0c0>188,143,143</TD>
<TD bgColor=#bc8f8f>&nbsp;</TD></TR>
<TR>
<TD bgColor=#cd5c5c>&nbsp;</TD>
<TD bgColor=#dedede>IndianRed</TD>
<TD bgColor=#dedede height=28>印度红</TD>
<TD bgColor=#c0c0c0>#CD5C5C</TD>
<TD bgColor=#c0c0c0>205,92,92</TD>
<TD bgColor=#cd5c5c>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ff0000>&nbsp;</TD>
<TD bgColor=#dedede>Red</TD>
<TD bgColor=#dedede height=28>纯红</TD>
<TD bgColor=#c0c0c0>#FF0000</TD>
<TD bgColor=#c0c0c0>255,0,0</TD>
<TD bgColor=#ff0000>&nbsp;</TD></TR>
<TR>
<TD bgColor=#a52a2a>&nbsp;</TD>
<TD bgColor=#dedede>Brown</TD>
<TD bgColor=#dedede height=28>棕色</TD>
<TD bgColor=#c0c0c0>#A52A2A</TD>
<TD bgColor=#c0c0c0>165,42,42</TD>
<TD bgColor=#a52a2a>&nbsp;</TD></TR>
<TR>
<TD bgColor=#b22222>&nbsp;</TD>
<TD bgColor=#dedede>FireBrick</TD>
<TD bgColor=#dedede height=28>火砖色(耐火砖)</TD>
<TD bgColor=#c0c0c0>#B22222</TD>
<TD bgColor=#c0c0c0>178,34,34</TD>
<TD bgColor=#b22222>&nbsp;</TD></TR>
<TR>
<TD bgColor=#8b0000>&nbsp;</TD>
<TD bgColor=#dedede>DarkRed</TD>
<TD bgColor=#dedede height=28>深红色</TD>
<TD bgColor=#c0c0c0>#8B0000</TD>
<TD bgColor=#c0c0c0>139,0,0</TD>
<TD bgColor=#8b0000>&nbsp;</TD></TR>
<TR>
<TD bgColor=#800000>&nbsp;</TD>
<TD bgColor=#dedede>Maroon</TD>
<TD bgColor=#dedede height=28>栗色</TD>
<TD bgColor=#c0c0c0>#800000</TD>
<TD bgColor=#c0c0c0>128,0,0</TD>
<TD bgColor=#800000>&nbsp;</TD></TR>
<TR>
<TD bgColor=#ffffff>&nbsp;</TD>
<TD bgColor=#dedede>White</TD>
<TD bgColor=#dedede height=28>纯白</TD>
<TD bgColor=#c0c0c0>#FFFFFF</TD>
<TD bgColor=#c0c0c0>255,255,255</TD>
<TD bgColor=#ffffff>&nbsp;</TD></TR>
<TR>
<TD bgColor=#f5f5f5>&nbsp;</TD>
<TD bgColor=#dedede>WhiteSmoke</TD>
<TD bgColor=#dedede height=28>白烟</TD>
<TD bgColor=#c0c0c0>#F5F5F5</TD>
<TD bgColor=#c0c0c0>245,245,245</TD>
<TD bgColor=#f5f5f5>&nbsp;</TD></TR>
<TR>
<TD bgColor=#dcdcdc>&nbsp;</TD>
<TD bgColor=#dedede>Gainsboro</TD>
<TD bgColor=#dedede height=28>淡灰色(庚斯博罗灰)</TD>
<TD bgColor=#c0c0c0>#DCDCDC</TD>
<TD bgColor=#c0c0c0>220,220,220</TD>
<TD bgColor=#dcdcdc>&nbsp;</TD></TR>
<TR>
<TD bgColor=#d3d3d3>&nbsp;</TD>
<TD bgColor=#dedede>LightGrey</TD>
<TD bgColor=#dedede height=28>浅灰色</TD>
<TD bgColor=#c0c0c0>#D3D3D3</TD>
<TD bgColor=#c0c0c0>211,211,211</TD>
<TD bgColor=#d3d3d3>&nbsp;</TD></TR>
<TR>
<TD bgColor=#c0c0c0>&nbsp;</TD>
<TD bgColor=#dedede>Silver</TD>
<TD bgColor=#dedede height=28>银灰色</TD>
<TD bgColor=#c0c0c0>#C0C0C0</TD>
<TD bgColor=#c0c0c0>192,192,192</TD>
<TD bgColor=#c0c0c0>&nbsp;</TD></TR>
<TR>
<TD bgColor=#a9a9a9>&nbsp;</TD>
<TD bgColor=#dedede>DarkGray</TD>
<TD bgColor=#dedede height=28>深灰色</TD>
<TD bgColor=#c0c0c0>#A9A9A9</TD>
<TD bgColor=#c0c0c0>169,169,169</TD>
<TD bgColor=#a9a9a9>&nbsp;</TD></TR>
<TR>
<TD bgColor=#808080>&nbsp;</TD>
<TD bgColor=#dedede>Gray</TD>
<TD bgColor=#dedede height=28>灰色</TD>
<TD bgColor=#c0c0c0>#808080</TD>
<TD bgColor=#c0c0c0>128,128,128</TD>
<TD bgColor=#808080>&nbsp;</TD></TR>
<TR>
<TD bgColor=#696969>&nbsp;</TD>
<TD bgColor=#dedede>DimGray</TD>
<TD bgColor=#dedede height=28>暗淡的灰色</TD>
<TD bgColor=#c0c0c0>#696969</TD>
<TD bgColor=#c0c0c0>105,105,105</TD>
<TD bgColor=#696969>&nbsp;</TD></TR>
<TR>
<TD bgColor=#000000>&nbsp;</TD>
<TD bgColor=#dedede>Black</TD>
<TD bgColor=#dedede height=28>纯黑</TD>
<TD bgColor=#c0c0c0>#000000</TD>
<TD bgColor=#c0c0c0>0,0,0</TD>
<TD bgColor=#000000>&nbsp;</TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>

















</body>
</html>