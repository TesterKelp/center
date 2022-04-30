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

<div style="float:right;border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>十二生肖</strong></div>
<div class="rightbox">	<a href="/name/topiccover_73.${suffix}" >子鼠</a></div>
<div class="rightbox">	<a href="/name/topiccover_74.${suffix}" >丑牛</a> </div>
<div class="rightbox">	<a href="/name/topiccover_75.${suffix}" >寅虎</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_76.${suffix}" >卯兔</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_77.${suffix}" >辰龙</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_78.${suffix}" >巳蛇</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_79.${suffix}" >午马</a> </div>
<div class="rightbox">	<a href="/name/topiccover_80.${suffix}" >未羊</a> </div>
<div class="rightbox">	<a href="/name/topiccover_81.${suffix}" >申猴</a> </div>
<div class="rightbox">	<a href="/name/topiccover_82.${suffix}" >酉鸡</a></div>
<div class="rightbox">	<a href="/name/topiccover_83.${suffix}" >戌狗</a> </div>
<div class="rightbox">	<a href="/name/topiccover_84.${suffix}" >亥猪</a> </div>

<div class="rightbox">	<a href="/name/12sx/shengxiaoxingg/list_1.${suffix}">生肖性格</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxjieshuo/list_1.${suffix}" >生肖解说</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxyunshi/list_1.${suffix}" >生肖运势</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxaiqing/list_1.${suffix}" >生肖爱情</a> </div>
</div>

<div style="float:right;border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>十二星座</strong></div>
<div class="rightbox">	<a href="/name/topiccover_86.${suffix}">白羊星座</a></div>
<div class="rightbox">	<a href="/name/topiccover_87.${suffix}">金牛星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_88.${suffix}">双子星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_89.${suffix}">巨蟹星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_90.${suffix}">狮子星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_91.${suffix}">处女星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_92.${suffix}">天秤星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_93.${suffix}">天蝎星座</a></div>
<div class="rightbox">	<a href="/name/topiccover_94.${suffix}">射手星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_85.${suffix}">魔羯星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_95.${suffix}">水瓶星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_96.${suffix}">双鱼星座</a>  </div>

<div class="rightbox">	<a href="/name/sexz/xzaq/list_1.${suffix}"  >星座爱情</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzzhishi/list_1.${suffix}"  >星座知识</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzys/list_1.${suffix}"  >星座运势</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzmm/list_1.${suffix}"  >星座密码</a>   </div>

</div>




<div style="float:right;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>趣味测试</strong></div>
<div class="leftbox">	<a href="/name/test/love/list_1.${suffix}" >爱情测试 </a> </div>
<div class="leftbox">	<a href="/name/test/xingge/list_1.${suffix}" >性格测试</a>  </div>
<div class="leftbox">	<a href="/name/test/zhiye/list_1.${suffix}"  >职业测试</a>  </div>
<div class="leftbox">	<a href="/name/test/shejiao/list_1.${suffix}"  >社交测试</a>  </div>
<div class="leftbox">	<a href="/name/test/zhishang/list_1.${suffix}"  >智商测试</a>  </div>
<div class="leftbox">	<a href="/name/test/caifu/list_1.${suffix}"  >财富测试</a>  </div>
</div>

<div style="float:right;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>相学知识</strong></div>
<div class="leftbox">	<a href="/name/topiccover_70.${suffix}" >手相 </a> </div>
<div class="leftbox">	<a href="/name/topiccover_71.${suffix}" >面相 </a>  </div>
<div class="leftbox">	<a href="/name/topiccover_72.${suffix}"  >痣相</a>  </div>
<div class="leftbox">	<a href="/name/xiangxue/index.${suffix}"  >相学知识</a>  </div>

</div>



<div style="float:right;border:1px solid #DADADA;clear:both;height:200px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>周公解梦</strong></div>
<div class="rightbox">	<a href="/name/zgjm/1/bx.do" >人物篇 </a> </div>
<div class="rightbox">	<a href="/name/zgjm/936/bx.do" >动物篇 </a>  </div>
<div class="rightbox">	<a href="/name/zgjm/1586/bx.do"  >植物篇 </a>  </div>
<div class="rightbox">	<a href="/name/zgjm/2058/bx.do"  >物品篇</a>  </div>
<div class="rightbox">	<a href="/name/zgjm/3883/bx.do"  >活动篇</a>  </div>
<div class="rightbox">	<a href="/name/zgjm/4886/bx.do"  >生活篇</a>  </div>
<div class="rightbox">	<a href="/name/zgjm/7784/bx.do"  >自然篇</a> </div>
<div class="rightbox">	<a href="/name/zgjm/8290/bx.do"  >鬼神篇</a> </div>
<div class="rightbox">	<a href="/name/zgjm/8678/bx.do"  >建筑篇</a> </div>
<div class="rightbox">	<a href="/name/zgjm/9095/bx.do"  >其它篇</a> </div>
<div class="rightbox">	<a href="/name/zgjm/index.do"  >周公解梦</a> </div>


</div>






    </div>











                

<div class="col-lg-6" style="padding-left:2px;padding-right:0px;text-align:center">

<style type="text/css">

ul {list-style: none; margin: 0px; padding: 0px;margin-right:0px;}
/* 抽签占卜 ---*/
.txPiclist {float:left;width:100%;}
.txPiclist li{border: 1px solid #E8EAEA;background-color: #FFFCF5;display:inline-block;margin-bottom: 10px;padding-top: 3px;width: 215px;margin-right:0px;padding-right:0px;}
.txPiclist li .img {display: block;height: 240px;overflow: hidden;width: 215px;}
.txPiclist li .title {border-bottom: 1px dashed #C0D7DD;height: 43px;line-height: 43px;margin: 0 auto 10px;overflow: hidden;text-align: center;width: 210px;}
.txPiclist li .title a {color: #442F00;font-size: 14px;}
.txPiclist li p {color: #442F00;line-height: 22px;margin: 8px auto;width: 215px;}
.txPiclist li p a {color: #000000;font-size: 12px;}
.txPiclist li p span {color: #000000;margin-left:5px;}
.txPiclist li p .time {margin-left: 10px;}
.txPiclist li:nth-child(4n-7){margin-left:0;}
</style>

<div style="text-align:center;height:40px;padding-top:5px;border: 1px dashed #C0D7DD;margin-bottom:10px;"><h3>缘分合婚</h3>    </div>




	<div class="txPiclist" style="text-align:center">
	<ul >
	
			
			
	<li>
			<a target="_blank" href="/name/hehun/benminggua/index.do" class="img"><img src="/template/name/hehun/pic/5.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/benminggua/index.do">本命卦合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/benminggua/index.do">本命卦合婚</a></span><span class="time">共100签</span></p>
			</li>
			
		
			
			
			<li>
			<a target="_blank" href="/name/hehun/lvcai/index.do" class="img"><img src="/template/name/hehun/pic/11.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/lvcai/index.do">呂才合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/lvcai/index.do">呂才合婚</a></span><span class="time">共100签</span></p>
			</li>
			
			
			
			
			<li>
			<a target="_blank" href="/name/hehun/shengxiao/index.do" class="img"><img src="/template/name/hehun/pic/2.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/shengxiao/index.do">属相合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/shengxiao/index.do">属相合婚</a></span><span class="time">共100签</span></p>
			</li>
			<li>
			<a target="_blank" href="/name/hehun/xingzuo/index.do" class="img"><img src="/template/name/hehun/pic/3.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/xingzuo/index.do">星座合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/xingzuo/index.do">星座合婚</a></span><span class="time">共100签</span></p>
			</li>
			
			
				<li>
			<a target="_blank" href="/name/hehun/xuexing/index.do" class="img"><img src="/template/name/hehun/pic/4.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/xuexing/index.do">血型合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/xuexing/index.do">血型合婚</a></span><span class="time">共100签</span></p>
			</li>

  
			<li>
			<a target="_blank" href="/name/hehun/xingzuoxuexing/index.do" class="img"><img src="/template/name/hehun/pic/17.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/xingzuoxuexing/index.do">星座血型合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/xingzuoxuexing/index.do">星座血型合婚</a></span><span class="time">共100签</span></p>
			</li>


			<li>
			<a target="_blank" href="/name/hehun/shengxiaoxuexing/index.do" class="img"><img src="/template/name/hehun/pic/22.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/shengxiaoxuexing/index.do">生肖血型合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/shengxiaoxuexing/index.do">生肖血型合婚</a></span><span class="time">共100签</span></p>
			</li>


			<li>
			<a target="_blank" href="/name/hehun/xingzuoshengxiao/index.do" class="img"><img src="/template/name/hehun/pic/19.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/xingzuoshengxiao/index.do">星座生肖合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/xingzuoshengxiao/index.do">星座生肖合婚</a></span><span class="time">共100签</span></p>
			</li>
			
			
			
			<!-- 
				<li>
			<a target="_blank" href="/name/hehun/bazi/index.do" class="img"><img src="/template/name/hehun/pic/15.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/name/hehun/bazi/index.do">八字合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/name/hehun/bazi/index.do">八字合婚</a></span><span class="time">共100签</span></p>
			</li>
			
	<li>
			<a target="_blank" href="/chouqian/guanyin/" class="img"><img src="/template/name/hehun/pic/16.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/chouqian/guanyin/">纳音五行合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/chouqian/guanyin/">纳音五行合婚</a></span><span class="time">共100签</span></p>
			</li>
			<li>
			<a target="_blank" href="/chouqian/guandi/" class="img"><img src="/template/name/hehun/pic/20.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/chouqian/guandi/">星煞合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/chouqian/guandi/">星煞合婚</a></span><span class="time">共100签</span></p>
			</li>
			<li>
			<a target="_blank" href="/chouqian/lvzu/" class="img"><img src="/template/name/hehun/pic/21.jpg" width="207" height="240"></a>
			<div class="title"><a  target="_blank" href="/chouqian/guanyin/">六亲合婚</a></div>
			<p style="text-align:center">分类:<span><a href="/chouqian/lvzu/">六亲合婚</a></span><span class="time">共100签</span></p>
			</li>
			
	 -->
	
	
	
	
	</ul>
	
	
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
<style type="text/css">
.rightbox{margin:5px;margin-left:8px;;line-height:25px;width:93px;float:left;display: block;background-color: #f6f6f6;border: 2px #f2f2f2 solid;color: #333;padding-left: 10px;}

.leftbox{margin:5px;;line-height:25px;width:93px;float:left;display: block;background-color: #f6f6f6;border: 2px #f2f2f2 solid;color: #333;padding-left: 10px;}

.tbox{margin:0 0 10px 0;border-bottom:1px solid #dadada;overflow:hidden;font-size:14px;}
.dt{padding-left:15px;height:32px;background-color:#f6f6f6;color:#505050;border-bottom:1px solid #DADADA;overflow:hidden;line-height:32px;clear:both;width:320px;}
.tbox dt strong{height:24px;line-height:30px;font-size:14px;margin-left:10px;background:url(/img/dt_arrow.png) 0px 10px no-repeat;display:block;float:left;padding-left:18px;padding-right:4px;}
.tbox dt strong a{color:#505050;}
.tbox dt strong a:hover{color:#596F37;text-decoration:none;}
</style>

<div style="border:1px solid #DADADA;clear:both;height:160px;width:322px;margin-bottom:8px;"  >
<div class="dt"><strong>名字</strong></div>
<div class="rightbox">	<a href="/name/NameFree.do" >免费起名 </a> </div>
<div class="rightbox">	<a href="/name/NameTest.do" >姓名测试 </a>  </div>
<div class="rightbox">	<a href="/name/nameword/index.${suffix}"  >名字世界 </a>  </div>
<div class="rightbox">	<a href="/name/nameword/qiming/list_1.${suffix}"  >起名必看</a>  </div>
<div class="rightbox">	<a href="/name/nameword/age/list_1.${suffix}"  >年龄字典</a>  </div>
<div class="rightbox">	<a href="/name/nameword/xingshi/list_1.${suffix}"  >姓氏起名</a>  </div>
<div class="rightbox">	<a href="/name/nameword/testname/list_1.${suffix}"  >测名文章</a> </div>
<div class="rightbox">	<a href="/name/NameAll.do"  >名字大全</a> </div>

</div>		
<div style="border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:8px;"   >		
<div class="dt"><strong>抽占算合</strong></div>
<div class="rightbox">	<a href="/name/suanming/indexchenggu.do" >称骨算命 </a> </div>
<div class="rightbox">	<a href="/name/divine/1/index.do" >观音灵签</a>  </div>
<div class="rightbox">	<a href="/name/divine/3/index.do"  >黄大仙灵签 </a>  </div>
<div class="rightbox">	<a href="/name/divine/4/index.do"  >诸葛神算</a>  </div>
<div class="rightbox">	<a href="/name/divine/5/index.do"  >吕祖灵签</a>  </div>
<div class="rightbox">	<a href="/name/divine/6/index.do"  >属相合婚</a>  </div>
<div class="rightbox">	<a href="/name/nameword/index.do"  >妈祖灵签</a> </div>
<div class="rightbox">	<a href="/name/divine/7/index.do"  >关帝灵签</a> </div>
<div class="rightbox">	<a href="/name/divine/8/index.do"  >车公灵签</a> </div>
<div class="rightbox">	<a href="/name/divine/9/index.do"  >王公灵签</a> </div>

<div class="rightbox">	<a href="/name/hehun/benminggua/index.do"  >本命卦合婚</a> </div>
<div class="rightbox">	<a href="/name/hehun/lvcai/index.do"  >呂才合婚</a>   </div>
<div class="rightbox">	<a href="/name/hehun/shengxiao/index.do"  >属相合婚</a>  </div>
<div class="rightbox">	<a href="/name/hehun/xingzuo/index.do"  >星座合婚</a>  </div>
<div class="rightbox">	<a href="/name/hehun/xuexing/index.do"  >血型合婚</a>  </div>

<div class="rightbox">	<a href="/name/hehun/xingzuoxuexing/index.do"  >星座血型合婚</a> </div>

<div class="rightbox">	<a href="/name/hehun/shengxiaoxuexing/index.do"  >生肖血型合婚</a>  </div>
<div class="rightbox">	<a href="/name/hehun/xingzuoshengxiao/index.do"  >星座生肖合婚</a>  </div>
</div>	
	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>传统民俗</strong></div>
<div class="rightbox">	<a href="/name/minsu/index.${suffix}" >传统民俗 </a> </div>
<div class="rightbox">	<a href="/name/minsu/jieri/list_1.${suffix}" >中国节日 </a>  </div>
<div class="rightbox">	<a href="/name/minsu/jieqi/list_1.${suffix}"  >节气 </a>  </div>
<div class="rightbox">	<a href="/name/minsu/zhufu/list_1.${suffix}"  >节日祝福</a>  </div>
<div class="rightbox">	<a href="/name/minsu/ctxs/list_1.${suffix}"  >传统习俗</a>  </div>

</div>	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>血型性格</strong></div>
<div class="rightbox">	<a href="/name/xuexing/a/list_1.${suffix}" >A型</a> </div>
<div class="rightbox">	<a href="/name/xuexing/b/list_1.${suffix}" >B型 </a>  </div>
<div class="rightbox">	<a href="/name/xuexing/o/list_1.${suffix}"  >O型 </a>  </div>
<div class="rightbox">	<a href="/name/xuexing/ab/list_1.${suffix}"  >AB型</a>  </div>
<div class="rightbox">	<a href="/name/xuexing/index.${suffix}"  >血型性格</a>  </div>

</div>	
	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>号码吉凶</strong></div>
<div class="rightbox">	<a href="/name/number/telephone/index.do" >手机号码测试</a> </div>
<div class="rightbox">	<a href="/name/number/qq/index.do" >QQ号码测试 </a>  </div>
<div class="rightbox">	<a href="/name/number/che/index.do"  >车牌号码测试 </a>  </div>
<div class="rightbox">	<a href="/name/number/dianhua/index.do"  >电话号码测试</a>  </div>
</div>	
	
<div style="border:1px solid #DADADA;clear:both;height:100px;width:322px;margin-bottom:8px;"   >
<div class="dt"><strong>其他</strong></div>
<div class="rightbox">	<a href="/name/wnl/today.do" >万年历 </a> </div>
<div class="rightbox">	<a href="/name/wnl/Wnlscbz.do" >生辰八字 </a>  </div>

</div>	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- 
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
 -->	
	
	
	
	
	
	
	
	
	
	
	
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
</body>

</html>
