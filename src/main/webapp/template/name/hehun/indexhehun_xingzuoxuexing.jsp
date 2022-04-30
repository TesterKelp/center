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
					<select id="shengxiao1" name="dq"   class="select" style="width:200px;">
				<option selected="" value="白羊座">白羊座</option>
                                                        <option value="金牛座">金牛座</option>
                                                        <option value="双子座">双子座</option>
                                                        <option value="巨蟹座">巨蟹座</option>
                                                        <option value="狮子座">狮子座</option>
                                                        <option value="处女座">处女座</option>
                                                        <option value="天秤座">天秤座</option>
                                                        <option value="天蝎座">天蝎座</option>
                                                        <option value="射手座">射手座</option>
                                                        <option value="摩羯座">摩羯座</option>
                                                        <option value="水瓶座">水瓶座</option>
                                                        <option value="双鱼座">双鱼座</option>


					</select>
				</div>

				<label class="col-sm-2 control-label">VS：</label>
				<div class="col-sm-5">
					<select id="shengxiao2"  class="select" style="width:200px;">
						 	<option value="AB型">AB型</option>
                                                        <option value="A型">A型</option>
                                                        <option value="B型">B型</option>
                                                        <option value="O型">O型</option>

					</select>
				</div>
			</div>
<div class="form-group">
				<div class="col-sm-5"></div>
				<div class="col-sm-2">
				<button type="button"  onclick="shengxiao_hehen_js()"  class="button"  style="width:100px;font-size: 10px;">查看姻缘</button>
				</div><div class="col-sm-5"></div>
</div>

<br><br>
<div style="margin:40px;" id="title"></div>
<div style="margin:40px;" id="content"></div>
<div style="margin:40px;" id="intro"></div>





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
	//	alert(y);
		$.ajax({
			type : "GET",
			url : "/name/hehun/hehun_shengxiao_js.do",
			data : {y : y ,m : m },
			async : false,
			dataType : "text",
			success : function(data) {
			//	alert(data);
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
