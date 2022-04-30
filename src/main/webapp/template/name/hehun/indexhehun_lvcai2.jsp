<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖之_${m.item_name}_${c.catename}_主页</title>
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/name/css/animate.css" rel="stylesheet">
    <link href="/template/name/css/defect.css" rel="stylesheet">
    <link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="/template/name/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    
    <link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
         <link href="/template/name/hehun/hehun.css" type="text/css" rel="stylesheet"/>
        <link href="/template/kwz/indextop/zimeiti.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/template/name/55/css/blue/index.css"/>
    <link rel="stylesheet" type="text/css" href="/template/name/55/css/blue/common.css"/>
</head>
<body>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
/*
a,a:visited{color:#5e5e5e; text-decoration:none;}
a:hover{color:#b52725;text-decoration:underline;}*/
.clear{display:block;overflow:hidden;clear:both;height:0;line-height:0;font-size:0;}
.demo{width:340px;margin:40px auto;}
/* ranklist */
.ranklist{border:solid 1px #ddd;padding:10px 10px 0 10px;background:#F9F9F9;}
.ranklist li{height:16px;line-height:16px;overflow:hidden;position:relative;padding:0 70px 0 30px;margin:0 0 10px 0;}
.ranklist li em{background:url(/template/name/6/images/mun.gif) no-repeat;width:20px;height:16px;overflow:hidden;display:block;position:absolute;left:0;top:0;text-align:center;font-style:normal;color:#333;}
.ranklist li em{background-position:0 -16px;}
.ranklist li.top em{background-position:0 0;color:#fff;}
.ranklist li .num{position:absolute;right:0;top:0;color:#999;}

</style>


   <c:if test="${hhtml == '0' }">
   <%@ include file='/template/name/htmlheader2.jsp' %><Br><br>
   </c:if>
   <c:if test="${hhtml == '1' }">
   <%@ include file='/template/name/htmlheader1.jsp' %><Br><br>
   </c:if>  
           
               
                       <div class="ibox-content" style="height: 100%;">


					<div class="col-lg-3" >
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

<div  style="text-align:right;float:right;padding-left:45px;line-height:30px;">
抽签占卜
    <hr style="border:1px solid #00a0e9;margin-bottom:10px;">
抽签占卜、抽签算命预测是什么？抽签占卜是我国民间一个具有重要意义的预测俗成方法，抽签占卜方法在我国民间具有广泛的信仰民众，神算网抽签算命要求抽签人诚心祈祷，把想预测的事项进行理清，主要讲究一个时间的关系，凡是周易和时间之间的关系活动如（观音灵签抽签）、诸葛算神、黄大仙灵签，都需要具有一棵真诚的心态，所谓的心诚则灵啊，之后才开始，神算网观音灵签抽签有较准的结果，每预测一项事情为一签。大凡抽签占卜后解签的人必须是一个对历史研究较深，并能把中华文化相融合的人来解签，才能准确把握住预测结果。
</div>

<div  style="text-align:right;float:right;padding-left:45px;">
周公解梦:
    <hr style="border:1px solid #00a0e9;margin-bottom:10px;">
  <fff><a href="/name/zgjm/1/sx.do">人物称谓</a></fff><fff><a href="/name/zgjm/285/sx.do">身体器官</a></fff><fff><a href="/name/zgjm/936/sx.do">冷血类</a></fff><fff><a href="/name/zgjm/937/sx.do">哺乳类</a></fff><fff><a href="/name/zgjm/938/sx.do">鸟禽类</a></fff><fff><a href="/name/zgjm/1047/sx.do">其它动物</a></fff><fff><a href="/name/zgjm/1048/sx.do">昆虫类</a></fff><fff><a href="/name/zgjm/1586/sx.do">豆类</a></fff><fff><a href="/name/zgjm/1587/sx.do">果实</a></fff><fff><a href="/name/zgjm/1588/sx.do">瓜类</a></fff><fff><a href="/name/zgjm/1599/sx.do">其它植物</a></fff><fff><a href="/name/zgjm/1600/sx.do">树类</a></fff><fff><a href="/name/zgjm/1603/sx.do">花草</a></fff><fff><a href="/name/zgjm/1615/sx.do">粮食</a></fff><fff><a href="/name/zgjm/1707/sx.do">蔬菜</a></fff><fff><a href="/name/zgjm/2058/sx.do">其它物品</a></fff><fff><a href="/name/zgjm/2059/sx.do">财物宝石</a></fff><fff><a href="/name/zgjm/2060/sx.do">食品饮料</a></fff><fff><a href="/name/zgjm/2061/sx.do">生活用品</a></fff><fff><a href="/name/zgjm/2063/sx.do">服装饰品</a></fff><fff><a href="/name/zgjm/2067/sx.do">交通运输</a></fff><fff><a href="/name/zgjm/2077/sx.do">文化用品</a></fff><fff><a href="/name/zgjm/2173/sx.do">武器化学</a></fff><fff><a href="/name/zgjm/2484/sx.do">机械电器</a></fff><fff><a href="/name/zgjm/2518/sx.do">音乐舞蹈</a></fff><fff><a href="/name/zgjm/3883/sx.do">运动类</a></fff><fff><a href="/name/zgjm/3885/sx.do">动作类</a></fff><fff><a href="/name/zgjm/3886/sx.do">日常类</a></fff><fff><a href="/name/zgjm/3888/sx.do">劳动类</a></fff><fff><a href="/name/zgjm/3889/sx.do">娱乐类</a></fff><fff><a href="/name/zgjm/3893/sx.do">工作学习</a></fff><fff><a href="/name/zgjm/3918/sx.do">其它活动</a></fff><fff><a href="/name/zgjm/4886/sx.do">婚恋情感</a></fff><fff><a href="/name/zgjm/4889/sx.do">衣食住行</a></fff><fff><a href="/name/zgjm/4890/sx.do">医疗疾病</a></fff><fff><a href="/name/zgjm/4894/sx.do">灾难罪恶</a></fff><fff><a href="/name/zgjm/4901/sx.do">其它生活</a></fff><fff><a href="/name/zgjm/4922/sx.do">感觉表情</a></fff><fff><a href="/name/zgjm/7784/sx.do">自然现象</a></fff><fff><a href="/name/zgjm/7997/sx.do">地理环境</a></fff><fff><a href="/name/zgjm/8290/sx.do">其它鬼神</a></fff><fff><a href="/name/zgjm/8302/sx.do">神仙类</a></fff><fff><a href="/name/zgjm/8304/sx.do">宗教类</a></fff><fff><a href="/name/zgjm/8308/sx.do">鬼怪类</a></fff><fff><a href="/name/zgjm/8678/sx.do">场所类</a></fff><fff><a href="/name/zgjm/8681/sx.do">建筑类</a></fff><fff><a href="/name/zgjm/9095/sx.do">其它</a></fff><fff><a href="/name/zgjm/9321/sx.do">颜色气味</a></fff><fff><a href="/name/zgjm/9330/sx.do">时间节日</a></fff><fff><a href="/name/zgjm/9431/sx.do">数字形状</a></fff>
</div>



    </div>











                

<div class="col-lg-6" style="padding-left:2px;padding-right:0px;text-align:center">

<style type="text/css">

ul {list-style: none; margin: 0px; padding: 0px;margin-right:0px;}
/* 抽签占卜 ---*/
.txPiclist {float:left;width:100%;}
.txPiclist li{border: 1px solid #00a0e9;background-color: #FFFCF5;display:inline-block;margin-bottom: 10px;padding-top: 3px;width: 215px;margin-right:0px;padding-right:0px;}
.txPiclist li .img {display: block;height: 240px;overflow: hidden;width: 215px;}
.txPiclist li .title {border-bottom: 1px dashed #C0D7DD;height: 43px;line-height: 43px;margin: 0 auto 10px;overflow: hidden;text-align: center;width: 210px;}
.txPiclist li .title a {color: #442F00;font-size: 14px;}
.txPiclist li p {color: #442F00;line-height: 22px;margin: 8px auto;width: 215px;}
.txPiclist li p a {color: #000000;font-size: 12px;}
.txPiclist li p span {color: #000000;margin-left:5px;}
.txPiclist li p .time {margin-left: 10px;}
.txPiclist li:nth-child(4n-7){margin-left:0;}
</style>

	<div class="txPiclist" style="text-align:center">

	
	</div>
<Br><Br><Br><Br><Br><Br><Br>
			<div class="form-group">
				<div class="col-sm-5">
				
				
				男方农历出生年份：
					<select id="man" name="dq" class="select" style="height: 30px;width:200px;">
				
<option value="1912">1912</option><option value="1913">1913</option><option value="1914">1914</option><option value="1915">1915</option><option value="1916">1916</option><option value="1917">1917</option><option value="1918">1918</option><option value="1919">1919</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924" selected>1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option>


					</select>
				</div>

				<label class="col-sm-2 control-label">VS：</label>
				<div class="col-sm-5">
				女方农历出生年份：
					<select id="woman" class="select"  style="height: 30px;width:200px;">
					
<option value="1912">1912</option><option value="1913">1913</option><option value="1914">1914</option><option value="1915">1915</option><option value="1916">1916</option><option value="1917">1917</option><option value="1918">1918</option><option value="1919">1919</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924" >1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927" selected>1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option>



					</select>
				</div>
			</div>
<div class="form-group">
				<div class="col-sm-5"></div>
				<div class="col-sm-2">
				<button type="button"  onclick="lvcai_hehen_js()"  class="button" style="width:100px;font-size: 10px;">吕才合婚配对</button>
				</div><div class="col-sm-5"></div>
</div>

 <div class="clear"></div>  
    <hr style="border:1px solid #00a0e9;margin-bottom:10px;margin-left:30px;margin-right:30px;">
 
<div style="margin:40px;text-align:left" id="title"></div>
<div style="margin:40px;text-align:left" id="content"></div>
<div style="margin:40px;text-align:left" id="intro"></div>





		</div>
	
	
	
	
<!-- 
				     
<div class="col-lg-2" >
<style type="text/css">
.hd{position:relative;height:33px;line-height:33px;border-bottom:1px solid #f2d2b5;background-color:#fff7e8;}

.hd h3{padding-left:27px;color:#834b27;font-size:16px;font-family:"\5FAE\8F6F\96C5\9ED1","\9ED1\4F53";}

.bd{padding:6px;background-color:#ffffff;*zoom:1;}

.mod_txt{overflow:hidden;*zoom:1;}

.mod_txt li{float:left;display:inline;margin-left:10px;width:100px;padding-left:8px;height:27px;line-height:27px;overflow:hidden;background:url(../../../images/suanming/v2/common.png) no-repeat -147px -2px;}

.mod_txt_s1{margin-left:8px;}

.mod_txt_s1 li{display:block;float:none;width:auto;margin-left:0;height:21px;line-height:21px;background-position:-147px -5px;}

</style>
    <div class="hd hd_s1">
        <h3>算命大全</h3>
    </div>
    <div class="bd bd_s1">
        <ul class="mod_txt">
           <li><a  href="/suanming/fscs/"  title="风水测算">风水测算</a></li>
           <li><a  href="/xingming/gsqm/"  title="公司起名">公司起名</a></li>
           <li><a  href="/peidui/xingzuo/"  title="星座配对">星座配对</a></li>
           <li><a  href="/chouqian/lvzu/" class="cGreen" title="吕祖灵签">吕祖灵签</a></li>
           <li><a  href="/paipan/ziwei/"  title="紫薇排盘">紫薇排盘</a></li>
           <li><a  href="/chouqian/yuelao/"  title="月老灵签">月老灵签</a></li>
           <li><a  href="/haoma/dianhua/"  title="号码吉凶">号码吉凶</a></li>
           <li><a  href="/peidui/hehun/"  title="八字合婚">八字合婚</a></li>
           <li><a  href="/hdjr/" class="cGreen" title="黄道吉日">黄道吉日</a></li>
           <li><a  href="/shengxiao/"  title="十二生肖">十二生肖</a></li>
           <li><a  href="/zgjm/"  title="周公解梦">周公解梦</a></li>
           <li><a  href="/xingzuo/" class="cBlue" title="十二星座">十二星座</a></li>
           <li><a  href="/paipan/bazi/"  title="八字排盘">八字排盘</a></li>
           <li><a  href="/xingming/qiming/"  title="在线起名">在线起名</a></li>
           <li><a  href="/xingming/xmfx/"  title="名字分析">名字分析</a></li>
           <li><a  href="/suanming/bzcs/"  title="八字测算">八字测算</a></li>
           <li><a  href="/suanming/scbz/" class="cGreen" title="生辰八字">生辰八字</a></li>
           <li><a target="_blank" href="/paipan/qimendunjia/"  title="奇门遁甲">奇门遁甲</a></li>
            
        </ul>
    </div>

	
	
</div>
 -->

<div class="col-lg-3" >

	
	
	
	 <div class="mod tbox" id="today_news" alog-group="log-todaynews" style="padding-bottom:30px">
                <div class="hd"><h3>今日推荐</h3></div> 
                <div class="bd" style="overflow:hidden;width:100%;">
                     <ul class="w-ul ulist" style="width:100%">
                        
    	<li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_90.do" class="art-title">Eclipse中使用selenium</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/ManageTool/article_97.do" class="art-title">禅道官方下载地址</a><a href="#" class="art-author">管理工具</a></li>                             
       <li style="overflow:hidden;width:100%;"><a href="/softtest/ManageTool/article_98.do" class="art-title">禅道开源版演示地址</a><a href="#" class="art-author">管理工具</a></li>                             
       <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_101.do" class="art-title">eclipse中使用testng，eclipse安装testng</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/tools/virtualbox/article_100.do" class="art-title">HTTP服务器状态代码定义</a><a href="#" class="art-author">virtualbox</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_89.do" class="art-title">webdriver使用xpath定位父节点子节点及兄弟节点</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_88.do" class="art-title">jdk安装环境变量配置</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/ManageTool/article_96.do" class="art-title">缺陷管理系统禅道</a><a href="#" class="art-author">管理工具</a></li>                             
       <li style="overflow:hidden;width:100%;"><a href="/softtest/ItInfermation/article_87.do" class="art-title">华为起诉三星，为何国内手机厂商压力大？</a><a href="#" class="art-author">IT资讯</a></li>                             
       <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_92.do" class="art-title">webdriver 开发工具Eclipse的初次使用</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/webdriver/article_93.do" class="art-title">webdriver中calssname定位包含了空格或者.点的元素</a><a href="#" class="art-author">Webdriver</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/AppAutoTesting/article_94.do" class="art-title">搭建安卓自动化测试环境</a><a href="#" class="art-author">app自动化</a></li>                             
         <li style="overflow:hidden;width:100%;"><a href="/softtest/ItInfermation/article_95.do" class="art-title">北京五险查询网址</a><a href="#" class="art-author">IT资讯</a></li>                             
       <li style="overflow:hidden;width:100%;"><a href="/softtest/autotest/AppAutoTesting/article_102.do" class="art-title">uiautomatorviewer实现android脚本录制</a><a href="#" class="art-author">app自动化</a></li>                             
         </ul>
                </div>
            </div>
	
	

</div>
       <div class="clear"></div>                        
                            </div>
 <div class="clear"></div> 
 <%@ include file="/template/name/footer.jsp"%>  

    <!-- 全局js -->
    <script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 自定义js -->
    <script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/template/name/kjs/common.js"></script>
	
	
<script >	
	function lvcai_hehen_js() {
		var man = $("#man").val();
		var woman = $("#woman").val();
		//alert(woman);
		$.ajax({
			type : "GET",
			url : "/name/hehun/hehun_lvcai_js.do",
			data : {man : man ,woman : woman },
			async : false,
			dataType : "text",
			success : function(data) {
				//alert(data);
				var dataObj = eval("(" + data + ")");
			//	alert(dataObj[0].title);
			title.innerHTML = dataObj[0].title;
			content.innerHTML = dataObj[0].content ;
			intro.innerHTML = dataObj[0].shorttxt ;
			}
		});
	}
</script >	

	
	
	
	
	
	
</body>

</html>
