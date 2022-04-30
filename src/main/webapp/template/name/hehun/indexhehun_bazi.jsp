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


					<div class="col-lg-3">
<style type="text/css">
fff{
border:1px solid #00a0e9;
width:60px;
margin:2px;
line-height:20px;
float:right;
text-align:center ;
}
</style>

<div  style="text-align:right;float:right;padding-left:45px;line-height:30px;">
抽签占卜
<hr style="margin-bottom:15px;">
抽签占卜、抽签算命预测是什么？抽签占卜是我国民间一个具有重要意义的预测俗成方法，抽签占卜方法在我国民间具有广泛的信仰民众，神算网抽签算命要求抽签人诚心祈祷，把想预测的事项进行理清，主要讲究一个时间的关系，凡是周易和时间之间的关系活动如（观音灵签抽签）、诸葛算神、黄大仙灵签，都需要具有一棵真诚的心态，所谓的心诚则灵啊，之后才开始，神算网观音灵签抽签有较准的结果，每预测一项事情为一签。大凡抽签占卜后解签的人必须是一个对历史研究较深，并能把中华文化相融合的人来解签，才能准确把握住预测结果。
</div>

<div  style="text-align:right;float:right">
周公解梦:
<hr>
  <fff><a href="/name/zgjm/1/sx.do">人物称谓</a></fff><fff><a href="/name/zgjm/285/sx.do">身体器官</a></fff><fff><a href="/name/zgjm/936/sx.do">冷血类</a></fff><fff><a href="/name/zgjm/937/sx.do">哺乳类</a></fff><fff><a href="/name/zgjm/938/sx.do">鸟禽类</a></fff><fff><a href="/name/zgjm/1047/sx.do">其它动物</a></fff><fff><a href="/name/zgjm/1048/sx.do">昆虫类</a></fff><fff><a href="/name/zgjm/1586/sx.do">豆类</a></fff><fff><a href="/name/zgjm/1587/sx.do">果实</a></fff><fff><a href="/name/zgjm/1588/sx.do">瓜类</a></fff><fff><a href="/name/zgjm/1599/sx.do">其它植物</a></fff><fff><a href="/name/zgjm/1600/sx.do">树类</a></fff><fff><a href="/name/zgjm/1603/sx.do">花草</a></fff><fff><a href="/name/zgjm/1615/sx.do">粮食</a></fff><fff><a href="/name/zgjm/1707/sx.do">蔬菜</a></fff><fff><a href="/name/zgjm/2058/sx.do">其它物品</a></fff><fff><a href="/name/zgjm/2059/sx.do">财物宝石</a></fff><fff><a href="/name/zgjm/2060/sx.do">食品饮料</a></fff><fff><a href="/name/zgjm/2061/sx.do">生活用品</a></fff><fff><a href="/name/zgjm/2063/sx.do">服装饰品</a></fff><fff><a href="/name/zgjm/2067/sx.do">交通运输</a></fff><fff><a href="/name/zgjm/2077/sx.do">文化用品</a></fff><fff><a href="/name/zgjm/2173/sx.do">武器化学</a></fff><fff><a href="/name/zgjm/2484/sx.do">机械电器</a></fff><fff><a href="/name/zgjm/2518/sx.do">音乐舞蹈</a></fff><fff><a href="/name/zgjm/3883/sx.do">运动类</a></fff><fff><a href="/name/zgjm/3885/sx.do">动作类</a></fff><fff><a href="/name/zgjm/3886/sx.do">日常类</a></fff><fff><a href="/name/zgjm/3888/sx.do">劳动类</a></fff><fff><a href="/name/zgjm/3889/sx.do">娱乐类</a></fff><fff><a href="/name/zgjm/3893/sx.do">工作学习</a></fff><fff><a href="/name/zgjm/3918/sx.do">其它活动</a></fff><fff><a href="/name/zgjm/4886/sx.do">婚恋情感</a></fff><fff><a href="/name/zgjm/4889/sx.do">衣食住行</a></fff><fff><a href="/name/zgjm/4890/sx.do">医疗疾病</a></fff><fff><a href="/name/zgjm/4894/sx.do">灾难罪恶</a></fff><fff><a href="/name/zgjm/4901/sx.do">其它生活</a></fff><fff><a href="/name/zgjm/4922/sx.do">感觉表情</a></fff><fff><a href="/name/zgjm/7784/sx.do">自然现象</a></fff><fff><a href="/name/zgjm/7997/sx.do">地理环境</a></fff><fff><a href="/name/zgjm/8290/sx.do">其它鬼神</a></fff><fff><a href="/name/zgjm/8302/sx.do">神仙类</a></fff><fff><a href="/name/zgjm/8304/sx.do">宗教类</a></fff><fff><a href="/name/zgjm/8308/sx.do">鬼怪类</a></fff><fff><a href="/name/zgjm/8678/sx.do">场所类</a></fff><fff><a href="/name/zgjm/8681/sx.do">建筑类</a></fff><fff><a href="/name/zgjm/9095/sx.do">其它</a></fff><fff><a href="/name/zgjm/9321/sx.do">颜色气味</a></fff><fff><a href="/name/zgjm/9330/sx.do">时间节日</a></fff><fff><a href="/name/zgjm/9431/sx.do">数字形状</a></fff>
</div>



    </div>











                

<div class="col-lg-6" style="padding-left:2px;padding-right:0px;text-align:center;">

<h3 style="border-bottom:1px solid #00a0e9;padding-bottom:15px;margin-top:35px;width:100%;text-align:center;font-size:20px;">八字合婚</h3>





<div style="border:1px solid #D4D4D4;padding-top:40px;padding-left:100px;padding-bottom:20px;text-align:left;font: 16px 'Microsoft YaHei', 微软雅黑, 'Microsoft JhengHei', 宋体;">





帅哥姓名：<input name="name1" type="text" placeholder="梁山伯" size="18" class="inputt"><br>
公历生日：
<select name="year1" class="select"><option>1958</option><option>1959</option><option>1960</option><option>1961</option><option>1962</option><option>1963</option><option>1964</option><option>1965</option><option>1966</option><option>1967</option><option>1968</option><option>1969</option><option>1970</option><option>1971</option><option>1972</option><option>1973</option><option>1974</option><option>1975</option><option>1976</option><option>1977</option><option>1978</option><option>1979</option><option>1980</option><option>1981</option><option>1982</option><option>1983</option><option>1984</option><option>1985</option><option>1986</option><option>1987</option><option>1988</option><option>1989</option><option selected>1990</option><option>1991</option><option>1992</option><option>1993</option><option>1994</option><option>1995</option><option>1996</option><option>1997</option><option>1998</option><option>1999</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option> </select> 年
<select name="month1" class="select"><option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option></select> 月
<select name="day1" class="select"><option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option>    <option>13</option>    <option>14</option>    <option>15</option>    <option>16</option>    <option>17</option>    <option>18</option>    <option>19</option>    <option>20</option>    <option>21</option>    <option>22</option>    <option>23</option>    <option>24</option>    <option>25</option>    <option>26</option>    <option>27</option>    <option>28</option>    <option>29</option>    <option>30</option>    <option>31</option></select> 日<br/>			
出生时辰：<select name="hour1" class="select"><option>0</option>    <option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option>    <option>13</option>    <option>14</option>    <option>15</option>    <option>16</option>    <option>17</option>    <option>18</option>    <option>19</option>    <option>20</option>    <option>21</option>    <option>22</option>    <option>23</option></select> 时
			<div style="padding-top:5px;margin-bottom:20px;border-bottom:1px dashed #d0ad9a ;width:75%"></div>
靓女姓名：<input name="name2" type="text" placeholder="祝英台" size="18" class="inputt"><br>
公历生日：<select name="year2" class="select"><option>1958</option><option>1959</option><option>1960</option><option>1961</option><option>1962</option><option>1963</option><option>1964</option><option>1965</option><option>1966</option><option>1967</option><option>1968</option><option>1969</option><option>1970</option><option>1971</option><option>1972</option><option>1973</option><option>1974</option><option>1975</option><option>1976</option><option>1977</option><option>1978</option><option>1979</option><option>1980</option><option>1981</option><option>1982</option><option>1983</option><option>1984</option><option>1985</option><option>1986</option><option>1987</option><option>1988</option><option>1989</option><option>1990</option><option selected>1991</option><option>1992</option><option>1993</option><option>1994</option><option>1995</option><option>1996</option><option>1997</option><option>1998</option><option>1999</option><option>2000</option><option>2001</option><option>2002</option><option>2003</option><option>2004</option><option>2005</option><option>2006</option><option>2007</option><option>2008</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option> </select> 年
<select name="month2" class="select"><option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option></select> 月
<select name="day2" class="select"><option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option>    <option>13</option>    <option>14</option>    <option>15</option>    <option>16</option>    <option>17</option>    <option>18</option>    <option>19</option>    <option>20</option>    <option>21</option>    <option>22</option>    <option>23</option>    <option>24</option>    <option>25</option>    <option>26</option>    <option>27</option>    <option>28</option>    <option>29</option>    <option>30</option>    <option>31</option></select> 日<br/>
出生时辰：<select name="hour2" class="select"><option>0</option>    <option>1</option>    <option>2</option>    <option>3</option>    <option>4</option>    <option>5</option>    <option>6</option>    <option>7</option>    <option>8</option>    <option>9</option>    <option>10</option>    <option>11</option>    <option>12</option>    <option>13</option>    <option>14</option>    <option>15</option>    <option>16</option>    <option>17</option>    <option>18</option>    <option>19</option>    <option>20</option>    <option>21</option>    <option>22</option>    <option>23</option></select> 时<br>
<input  type="button" value="开始测试" size="20" class="button">

</div>














	
			





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
	function shengxiao_hehen_js() {
		var y = $("#shengxiao1").val();
		var m = $("#shengxiao2").val();
		alert(y);
		$.ajax({
			type : "GET",
			url : "/name/hehun/hehun_shengxiao_js.do",
			data : {y : y ,m : m },
			async : false,
			dataType : "text",
			success : function(data) {
				alert(data);
				var dataObj = eval("(" + data + ")");
				alert(dataObj[0].title);
			title.innerHTML = dataObj[0].title;
			content.innerHTML = dataObj[0].content ;
			intro.innerHTML = dataObj[0].shorttxt ;
			}
		});
	}
</script >	

	
	
	
	
	
	
</body>

</html>
