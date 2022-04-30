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
    <title>身在江湖之_${m.item_name}_抽签占卜</title>
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


<%@ include file="/template/name/htmlheader.jsp"%><Br><br>
           
               
                       <div class="ibox-content" style="height: 100%;">


					<div class="col-lg-3">
					
					
	<!--  			
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
<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
抽签占卜、抽签算命预测是什么？抽签占卜是我国民间一个具有重要意义的预测俗成方法，抽签占卜方法在我国民间具有广泛的信仰民众，神算网抽签算命要求抽签人诚心祈祷，把想预测的事项进行理清，主要讲究一个时间的关系，凡是周易和时间之间的关系活动如（观音灵签抽签）、诸葛算神、黄大仙灵签，都需要具有一棵真诚的心态，所谓的心诚则灵啊，之后才开始，神算网观音灵签抽签有较准的结果，每预测一项事情为一签。大凡抽签占卜后解签的人必须是一个对历史研究较深，并能把中华文化相融合的人来解签，才能准确把握住预测结果。
</div>

<div  style="text-align:right;float:right;padding-left:45px;">
<Br>周公解梦:<hr style="border:1px solid #00a0e9;margin-bottom:10px;">
  <fff><a href="/name/zgjm/1/sx.do">人物称谓</a></fff><fff><a href="/name/zgjm/285/sx.do">身体器官</a></fff><fff><a href="/name/zgjm/936/sx.do">冷血类</a></fff><fff><a href="/name/zgjm/937/sx.do">哺乳类</a></fff><fff><a href="/name/zgjm/938/sx.do">鸟禽类</a></fff><fff><a href="/name/zgjm/1047/sx.do">其它动物</a></fff><fff><a href="/name/zgjm/1048/sx.do">昆虫类</a></fff><fff><a href="/name/zgjm/1586/sx.do">豆类</a></fff><fff><a href="/name/zgjm/1587/sx.do">果实</a></fff><fff><a href="/name/zgjm/1588/sx.do">瓜类</a></fff><fff><a href="/name/zgjm/1599/sx.do">其它植物</a></fff><fff><a href="/name/zgjm/1600/sx.do">树类</a></fff><fff><a href="/name/zgjm/1603/sx.do">花草</a></fff><fff><a href="/name/zgjm/1615/sx.do">粮食</a></fff><fff><a href="/name/zgjm/1707/sx.do">蔬菜</a></fff><fff><a href="/name/zgjm/2058/sx.do">其它物品</a></fff><fff><a href="/name/zgjm/2059/sx.do">财物宝石</a></fff><fff><a href="/name/zgjm/2060/sx.do">食品饮料</a></fff><fff><a href="/name/zgjm/2061/sx.do">生活用品</a></fff><fff><a href="/name/zgjm/2063/sx.do">服装饰品</a></fff><fff><a href="/name/zgjm/2067/sx.do">交通运输</a></fff><fff><a href="/name/zgjm/2077/sx.do">文化用品</a></fff><fff><a href="/name/zgjm/2173/sx.do">武器化学</a></fff><fff><a href="/name/zgjm/2484/sx.do">机械电器</a></fff><fff><a href="/name/zgjm/2518/sx.do">音乐舞蹈</a></fff><fff><a href="/name/zgjm/3883/sx.do">运动类</a></fff><fff><a href="/name/zgjm/3885/sx.do">动作类</a></fff><fff><a href="/name/zgjm/3886/sx.do">日常类</a></fff><fff><a href="/name/zgjm/3888/sx.do">劳动类</a></fff><fff><a href="/name/zgjm/3889/sx.do">娱乐类</a></fff><fff><a href="/name/zgjm/3893/sx.do">工作学习</a></fff><fff><a href="/name/zgjm/3918/sx.do">其它活动</a></fff><fff><a href="/name/zgjm/4886/sx.do">婚恋情感</a></fff><fff><a href="/name/zgjm/4889/sx.do">衣食住行</a></fff><fff><a href="/name/zgjm/4890/sx.do">医疗疾病</a></fff><fff><a href="/name/zgjm/4894/sx.do">灾难罪恶</a></fff><fff><a href="/name/zgjm/4901/sx.do">其它生活</a></fff><fff><a href="/name/zgjm/4922/sx.do">感觉表情</a></fff><fff><a href="/name/zgjm/7784/sx.do">自然现象</a></fff><fff><a href="/name/zgjm/7997/sx.do">地理环境</a></fff><fff><a href="/name/zgjm/8290/sx.do">其它鬼神</a></fff><fff><a href="/name/zgjm/8302/sx.do">神仙类</a></fff><fff><a href="/name/zgjm/8304/sx.do">宗教类</a></fff><fff><a href="/name/zgjm/8308/sx.do">鬼怪类</a></fff><fff><a href="/name/zgjm/8678/sx.do">场所类</a></fff><fff><a href="/name/zgjm/8681/sx.do">建筑类</a></fff><fff><a href="/name/zgjm/9095/sx.do">其它</a></fff><fff><a href="/name/zgjm/9321/sx.do">颜色气味</a></fff><fff><a href="/name/zgjm/9330/sx.do">时间节日</a></fff><fff><a href="/name/zgjm/9431/sx.do">数字形状</a></fff>
</div>

-->	


<div style="float:right;border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>十二生肖</strong></div>
<div class="rightbox">	<a href="/name/topiccover_73.do" >子鼠</a></div>
<div class="rightbox">	<a href="/name/topiccover_74.do" >丑牛</a> </div>
<div class="rightbox">	<a href="/name/topiccover_75.do" >寅虎</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_76.do" >卯兔</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_77.do" >辰龙</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_78.do" >巳蛇</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_79.do" >午马</a> </div>
<div class="rightbox">	<a href="/name/topiccover_80.do" >未羊</a> </div>
<div class="rightbox">	<a href="/name/topiccover_81.do" >申猴</a> </div>
<div class="rightbox">	<a href="/name/topiccover_82.do" >酉鸡</a></div>
<div class="rightbox">	<a href="/name/topiccover_83.do" >戌狗</a> </div>
<div class="rightbox">	<a href="/name/topiccover_84.do" >亥猪</a> </div>

<div class="rightbox">	<a href="/name/12sx/shengxiaoxingg/list_1.do">生肖性格</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxjieshuo/list_1.do" >生肖解说</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxyunshi/list_1.do" >生肖运势</a> </div>
<div class="rightbox">	<a href="/name/12sx/sxaiqing/list_1.do" >生肖爱情</a> </div>
</div>

<div style="float:right;border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>十二星座</strong></div>
<div class="rightbox">	<a href="/name/topiccover_86.do">白羊星座</a></div>
<div class="rightbox">	<a href="/name/topiccover_87.do">金牛星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_88.do">双子星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_89.do">巨蟹星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_90.do">狮子星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_91.do">处女星座</a>  </div>
<div class="rightbox">	<a href="/name/topiccover_92.do">天秤星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_93.do">天蝎星座</a></div>
<div class="rightbox">	<a href="/name/topiccover_94.do">射手星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_85.do">魔羯星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_95.do">水瓶星座</a> </div>
<div class="rightbox">	<a href="/name/topiccover_96.do">双鱼星座</a>  </div>

<div class="rightbox">	<a href="/name/sexz/xzaq/list_1.do"  >星座爱情</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzzhishi/list_1.do"  >星座知识</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzys/list_1.do"  >星座运势</a>   </div>
<div class="rightbox">	<a href="/name/sexz/xzmm/list_1.do"  >星座密码</a>   </div>

</div>




<div style="float:right;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>趣味测试</strong></div>
<div class="leftbox">	<a href="/name/test/love/list_1.do" >爱情测试 </a> </div>
<div class="leftbox">	<a href="/name/test/xingge/list_1.do" >性格测试</a>  </div>
<div class="leftbox">	<a href="/name/test/zhiye/list_1.do"  >职业测试</a>  </div>
<div class="leftbox">	<a href="/name/test/shejiao/list_1.do"  >社交测试</a>  </div>
<div class="leftbox">	<a href="/name/test/zhishang/list_1.do"  >智商测试</a>  </div>
<div class="leftbox">	<a href="/name/test/caifu/list_1.do"  >财富测试</a>  </div>
</div>

<div style="float:right;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>相学知识</strong></div>
<div class="leftbox">	<a href="/name/topiccover_70.do" >手相 </a> </div>
<div class="leftbox">	<a href="/name/topiccover_71.do" >面相 </a>  </div>
<div class="leftbox">	<a href="/name/topiccover_72.do"  >痣相</a>  </div>
<div class="leftbox">	<a href="/name/xiangxue/index.do"  >相学知识</a>  </div>

</div>



<div style="float:right;border:1px solid #DADADA;clear:both;height:200px;width:322px;margin-bottom:20px;"   >
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

.tt{float:left;width:20%;font-weight: bolder;margin:10px;}

</style>


<div style="text-align:center;height:40px;padding-top:5px;border: 1px dashed #C0D7DD;margin-bottom:10px;"><h3>康熙字典</h3>    </div>

	<div class="txPiclist" style="text-align:center">
	

<input type="text" id="word"  class="select" placeholder="请输入要查询的汉字"    style="margin-top:10px;width:150px;height:30px;" />
<button type="button"  onclick="kangxi()"  class="button"  style="width:150px;height:33px;">查询</button>

	<hr>
	<div  class="tt"   id="jtz"></div>
	<div  class="tt"   id="ftz"> 繁体字：</div>
	<div class="tt"   id="py">  拼音：</div>
	<div class="tt"   id="bs">  部首：</div>
	<div class="tt"   id="bsbh">   部首笔画：</div>
	<div class="tt"   id="bbbh">   部外笔画：</div>
	<div class="tt"   id="qmjx">   起名吉凶：</div>
	<div class="tt"   id="wx">   汉字五行：</div>
	
	<div class="tt"   id="ftbh">繁体笔画：</div>
	<div class="tt"   id="jtbh">简体笔画：</div>
	<div class="clear"></div>
	<hr>

	
	
		
		
		
	<div  style="width:45%;float:left;margin:20px;">
		<div style="text-align:left"  id="xmxjs"></div>
		<div  style="text-align:left" id="xgcy"><b>相关成语</b>：<br></div>
	</div>	
	
	
	
	<div  style="width:45%;float:left">
	
	<div id="hzxxjs" style="text-align:left"><b>汉字详细解释（仅供参考）</b>：<br></div>
	</div>		
		
<div class="clear"></div>
	<div id="content"></div>

	</div>
	
	
	
	
	
	
	
	
	
	
	
	</div>
	
	
	
	


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

<div style="border:1px solid #DADADA;clear:both;height:160px;width:322px;margin-bottom:20px;"  >
<div class="dt"><strong>名字</strong></div>
<div class="rightbox">	<a href="/name/NameFree.do" >免费起名 </a> </div>
<div class="rightbox">	<a href="/name/NameTest.do" >姓名测试 </a>  </div>
<div class="rightbox">	<a href="/name/nameword/index.do"  >名字世界 </a>  </div>
<div class="rightbox">	<a href="/name/nameword/qiming/list_1.do"  >起名必看</a>  </div>
<div class="rightbox">	<a href="/name/nameword/age/list_1.do"  >年龄字典</a>  </div>
<div class="rightbox">	<a href="/name/nameword/xingshi/list_1.do"  >姓氏起名</a>  </div>
<div class="rightbox">	<a href="/name/nameword/testname/list_1.do"  >测名文章</a> </div>
<div class="rightbox">	<a href="/name/NameAll.do"  >名字大全</a> </div>

</div>		
<div style="border:1px solid #DADADA;clear:both;height:280px;width:322px;margin-bottom:20px;"   >		
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
	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>传统民俗</strong></div>
<div class="rightbox">	<a href="/name/minsu/index.do" >传统民俗 </a> </div>
<div class="rightbox">	<a href="/name/minsu/jieri/list_1.do" >中国节日 </a>  </div>
<div class="rightbox">	<a href="/name/minsu/jieqi/list_1.do"  >节气 </a>  </div>
<div class="rightbox">	<a href="/name/minsu/zhufu/list_1.do"  >节日祝福</a>  </div>
<div class="rightbox">	<a href="/name/minsu/ctxs/list_1.do"  >传统习俗</a>  </div>

</div>	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>血型性格</strong></div>
<div class="rightbox">	<a href="/name/xuexing/a/list_1.do" >A型</a> </div>
<div class="rightbox">	<a href="/name/xuexing/b/list_1.do" >B型 </a>  </div>
<div class="rightbox">	<a href="/name/xuexing/o/list_1.do"  >O型 </a>  </div>
<div class="rightbox">	<a href="/name/xuexing/ab/list_1.do"  >AB型</a>  </div>
<div class="rightbox">	<a href="/name/xuexing/index.do"  >血型性格</a>  </div>

</div>	
	
<div style="float:left;border:1px solid #DADADA;clear:both;height:125px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>号码吉凶</strong></div>
<div class="rightbox">	<a href="/name/number/telephone/index.do" >手机号码测试</a> </div>
<div class="rightbox">	<a href="/name/number/qq/index.do" >QQ号码测试 </a>  </div>
<div class="rightbox">	<a href="/name/number/che/index.do"  >车牌号码测试 </a>  </div>
<div class="rightbox">	<a href="/name/number/dianhua/index.do"  >电话号码测试</a>  </div>
</div>	
	
<div style="border:1px solid #DADADA;clear:both;height:100px;width:322px;margin-bottom:20px;"   >
<div class="dt"><strong>其他</strong></div>
<div class="rightbox">	<a href="/name/wnl/today.do" >万年历 </a> </div>
<div class="rightbox">	<a href="/name/wnl/Wnlscbz.do" >生辰八字 </a>  </div>

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
	function kangxi() {
	var word = $("#word").val();
	alert(word);
	$.ajax({
		type : "GET",
		url : "/name/kangxi/word.do",
		data : {
			word : word
		},
		async : false,
		dataType : "text",
		success : function(data) {
			//	alert(data);
				var dj=eval("("+data+")");	
				
				jtz.innerHTML = "简体字："+ dj.jtz;
				ftz.innerHTML +=  dj.ftz;
				py.innerHTML +=  dj.py;
				bs.innerHTML +=  dj.bs;
				bsbh.innerHTML +=  dj.bsbh;
				
				bbbh.innerHTML +=  dj.bbbh;
				qmjx.innerHTML +=  dj.qmjx;
				wx.innerHTML +=  dj.wx;
				
				
				
				ftbh.innerHTML +=  dj.ftbh;
				jtbh.innerHTML +=dj.jtbh;
				xmxjs.innerHTML +=dj.xmxjs;
				hzxxjs.innerHTML ="<b>姓名学解释（仅供参考）</b>：<br>"+dj.hzxxjs;
				xgcy.innerHTML +=dj.xgcy;
			//	content.innerHTML +=dj.content;
		}
	});
}
	
	</script >
	
	
	
	
	
	
	
</body>

</html>
