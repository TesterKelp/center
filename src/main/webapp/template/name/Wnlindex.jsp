<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>身在江湖_万年历</TITLE>
<META content="农历; 阳历; 月历; 节日; 时区; 节气; 八字; 干支; 生肖; gregorian solar; chinese lunar; calendar; hua3a02;" name=keywords>
<META content=All name=robots>
<META content="gregorian solar calendar and chinese lunar calendar" name=description>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META http-equiv="refresh" content="1800;url=NameWnl.do">
<link href="/template/name/css/animate.css" rel="stylesheet">
<!--  
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
-->


<style type="text/css">
	TD {FONT-SIZE: 9pt; font-family:Arial, Helvetica, sans-serif;} 
	INPUT {FONT-SIZE: 9pt;}
	SELECT {FONT-SIZE: 9pt;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />






<link rel="stylesheet" href="/template/name/styles/datatimelayout.css" type="text/css" />
<script type="text/javascript" src="/template/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.tabs.setup.js"></script>
<link rel="stylesheet" href="/template/name/css/style2.css">
<script src="/template/name/js/libs/modernizr.js"></script>
<SCRIPT language=JavaScript>
<!--
/*****************************************************************************
                                   日期资料
*****************************************************************************/
var lunarInfo=new Array(
        0x4bd8, 0x4ae0, 0xa570, 0x54d5, 0xd260, 0xd950, 0x5554, 0x56af, 0x9ad0, 0x55d2,
        0x4ae0, 0xa5b6, 0xa4d0, 0xd250, 0xd255, 0xb54f, 0xd6a0, 0xada2, 0x95b0, 0x4977,
        0x497f, 0xa4b0, 0xb4b5, 0x6a50, 0x6d40, 0xab54, 0x2b6f, 0x9570, 0x52f2, 0x4970,
        0x6566, 0xd4a0, 0xea50, 0x6a95, 0x5adf, 0x2b60, 0x86e3, 0x92ef, 0xc8d7, 0xc95f,
        0xd4a0, 0xd8a6, 0xb55f, 0x56a0, 0xa5b4, 0x25df, 0x92d0, 0xd2b2, 0xa950, 0xb557,
        0x6ca0, 0xb550, 0x5355, 0x4daf, 0xa5b0, 0x4573, 0x52bf, 0xa9a8, 0xe950, 0x6aa0,
        0xaea6, 0xab50, 0x4b60, 0xaae4, 0xa570, 0x5260, 0xf263, 0xd950, 0x5b57, 0x56a0,
        0x96d0, 0x4dd5, 0x4ad0, 0xa4d0, 0xd4d4, 0xd250, 0xd558, 0xb540, 0xb6a0, 0x95a6,
        0x95bf, 0x49b0, 0xa974, 0xa4b0, 0xb27a, 0x6a50, 0x6d40, 0xaf46, 0xab60, 0x9570,
        0x4af5, 0x4970, 0x64b0, 0x74a3, 0xea50, 0x6b58, 0x5ac0, 0xab60, 0x96d5, 0x92e0,
        0xc960, 0xd954, 0xd4a0, 0xda50, 0x7552, 0x56a0, 0xabb7, 0x25d0, 0x92d0, 0xcab5,
        0xa950, 0xb4a0, 0xbaa4, 0xad50, 0x55d9, 0x4ba0, 0xa5b0, 0x5176, 0x52bf, 0xa930,
        0x7954, 0x6aa0, 0xad50, 0x5b52, 0x4b60, 0xa6e6, 0xa4e0, 0xd260, 0xea65, 0xd530,
        0x5aa0, 0x76a3, 0x96d0, 0x4afb, 0x4ad0, 0xa4d0, 0xd0b6, 0xd25f, 0xd520, 0xdd45,
        0xb5a0, 0x56d0, 0x55b2, 0x49b0, 0xa577, 0xa4b0, 0xaa50, 0xb255, 0x6d2f, 0xada0,
        0x4b63, 0x937f, 0x49f8, 0x4970, 0x64b0, 0x68a6, 0xea5f, 0x6b20, 0xa6c4, 0xaaef,
        0x92e0, 0xd2e3, 0xc960, 0xd557, 0xd4a0, 0xda50, 0x5d55, 0x56a0, 0xa6d0, 0x55d4,
        0x52d0, 0xa9b8, 0xa950, 0xb4a0, 0xb6a6, 0xad50, 0x55a0, 0xaba4, 0xa5b0, 0x52b0,
        0xb273, 0x6930, 0x7337, 0x6aa0, 0xad50, 0x4b55, 0x4b6f, 0xa570, 0x54e4, 0xd260,
        0xe968, 0xd520, 0xdaa0, 0x6aa6, 0x56df, 0x4ae0, 0xa9d4, 0xa4d0, 0xd150, 0xf252,
        0xd520);

var solarMonth=new Array(31,28,31,30,31,30,31,31,30,31,30,31);

var Gan=new Array("甲","乙","丙","丁","戊","己","庚","辛","壬","癸");

var Zhi=new Array("子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥");

var Gan1=new Array(
	'甲子乙丑丙寅丁卯戊辰己巳庚午辛未壬申癸酉甲戌乙亥','丙子丁丑戊寅己卯庚辰辛巳壬午癸未甲申乙酉丙戌丁亥',
	'戊子己丑庚寅辛卯壬辰癸巳甲午乙未丙申丁酉戊戌己亥','庚子辛丑壬寅癸卯甲辰乙巳丙午丁未戊申己酉庚戌辛亥',
	'壬子癸丑甲寅乙卯丙辰丁巳戊午己未庚申辛酉壬戌癸亥','甲子乙丑丙寅丁卯戊辰己巳庚午辛未壬申癸酉甲戌乙亥',
	'丙子丁丑戊寅己卯庚辰辛巳壬午癸未甲申乙酉丙戌丁亥','戊子己丑庚寅辛卯壬辰癸巳甲午乙未丙申丁酉戊戌己亥',
	'庚子辛丑壬寅癸卯甲辰乙巳丙午丁未戊申己酉庚戌辛亥','壬子癸丑甲寅乙卯丙辰丁巳戊午己未庚申辛酉壬戌癸亥'); 

var Gan2=new Array(
	'1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀',
	'2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂',
	'1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈',
	'1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武',
	'2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂',
	'2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德',
	'1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀',
	'2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂',
	'1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武1司命2勾陈',
	'1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂2天牢2玄武',
	'2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德2白虎1玉堂',
	'2白虎1玉堂2天牢2玄武1司命2勾陈1青龙1明堂2天刑2朱雀1金匮1天德');

var Animals=new Array("鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪");

var solarTerm = new Array("小寒","大寒","立春","雨水","惊蛰","春分","清明","谷雨","立夏","小满","芒种","夏至","小暑","大暑","立秋","处暑","白露","秋分","寒露","霜降","立冬","小雪","大雪","冬至");

var STA=new Array(
	"摩蝎座：12 . 22—01 . 19","水瓶座：01 . 20—02 . 18","双鱼座：02 . 19—03 . 20","白羊座：03 . 21—04 . 19",
	"金牛座：04 . 20—05 . 20","双子座：05 . 21—06 . 20","巨蟹座：06 . 21—07 . 21","狮子座：07 . 22—08 . 22",
	"处女座：08 . 23—09 . 22","天秤座：09 . 23—10 . 22","天蝎座：10 . 23—11 . 21","射手座：11 . 22—12 . 21");

var sTermInfo = new Array(0,21208,42467,63836,85337,107014,128867,150921,173149,195551,218072,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795,462224,483532,504758);

var nStr1 = new Array('日','一','二','三','四','五','六','七','八','九','十');

var nStr2 = new Array('初','十','廿','卅','□');

//国历节日 *表示放假日
var sFtv = new Array(
	"0101*元旦",
	"0110 中国110宣传日",
	
	"0202 世界湿地日",
	"0204 世界抗癌症日",
	"0207 国际声援南非日",
	"0210 国际气象节",
	"0214 情人节",
	"0221 国际母语日",
	
	"0301 国际海豹日",
	"0303 全国爱耳日",
	"0305 学雷锋纪念日",
	"0308 妇女节",
	"0312 植树节 孙中山逝世纪念日",
	"0314 国际警察日",
	"0315 消费者权益日",
	"0317 中国国医节 国际航海日",
	"0321 世界森林日 消除种族歧视国际日 世界儿歌日",
	"0322 世界水日",
	"0323 世界气象日",
	"0324 世界防治结核病日",
	"0325 全国中小学生安全教育日",
	
	"0401 愚人节 全国爱国卫生运动月(四月) 税收宣传月(四月)",
	"0407 世界卫生日",
	"0422 世界地球日",
	"0423 世界图书和版权日",
	"0424 亚非新闻工作者日",
	
	"0501*劳动节",
	"0504 青年节",
	"0505 碘缺乏病防治日",
	"0508 世界红十字日",
	"0512 国际护士节",
	"0515 国际家庭日",
	"0517 世界电信日",
	"0518 国际博物馆日",
	"0519 全国助残日",
	"0520 全国学生营养日",
	"0522 国际生物多样性日",
	"0523 国际牛奶日",
	"0531 世界无烟日", 
	
	"0601 国际儿童节",
	"0605 世界环境保护日",
	"0606 全国爱眼日",
	"0617 防治荒漠化和干旱日",
	"0623 国际奥林匹克日",
	"0625 全国土地日",
	"0626 国际禁毒日",
	
	"0701 中共诞辰 香港回归纪念日 世界建筑日",
	"0702 国际体育记者日",
	"0707 抗日战争纪念日",
	"0711 世界人口日",
	
	"0801 八一建军节",
	"0808 中国男子节(爸爸节)",
	"0815 抗日战争胜利纪念",
	
	"0908 国际扫盲日 国际新闻工作者日",
	"0909 毛泽东逝世纪念",
	"0910 教师节", 
	"0914 世界清洁地球日",
	"0916 国际臭氧层保护日",
	"0917 国际和平日",
	"0918 九·一八事变纪念日",
	"0920 国际爱牙日",
	"0927 世界旅游日",
	"0928 孔子诞辰",
	
	"1001*国庆节 世界音乐节 国际老人节",
	"1002 国际和平与民主自由斗争日",
	"1004 世界动物日",
	"1006 老人节",
	"1007 国际住房日",
	"1008 全国高血压日 世界视觉日",
	"1009 世界邮政日 万国邮联日",
	"1010 辛亥革命纪念日 世界精神卫生日",
	"1013 世界保健日 国际教师节",
	"1014 世界标准日",
	"1015 国际盲人节(白手杖节)",
	"1016 世界粮食日",
	"1017 世界消除贫困日",
	"1022 世界传统医药日",
	"1024 联合国日",
	"1026 足球诞生日",
	"1031 世界勤俭日 万圣节(鬼节)",
	
	"1108 中国记者日",
	"1109 消防宣传日",
	"1110 世界青年节",
	"1111 光棍节 国际科学与和平周(本日所属的一周)",
	"1112 孙中山诞辰",
	"1114 世界糖尿病日",
	"1117 国际大学生节 世界学生节",
	"1120 彝族年",
	"1121 彝族年 世界问候日 世界电视日",
	"1122 彝族年",
	
	"1201 世界艾滋病日",
	"1203 世界残疾人日",
	"1205 国际经济和社会发展志愿人员日",
	"1208 国际儿童电视日",
	"1209 世界足球日",
	"1210 世界人权日",
	"1213 南京大屠杀(1937年)纪念日！",
	"1220 澳门回归纪念",
	"1221 国际篮球日",
	"1224 平安夜",
	"1225 圣诞节 世界强化免疫日",
	"1226 毛泽东诞辰纪念")

//农历节日 *表示放假日
var lFtv = new Array(
	"0101*春节",
	"0102*初二",
	"0103*初三",
	"0105 路神生日",
	"0115 元宵节",
	"0125 填仓节",
	"0126 生菜会",
	"0202 龙头节",
	"0206 东华帝君诞", 
	"0215 涅槃节",
	"0219 观世音圣诞",
	"0323 妈祖诞、天后诞",
	"0404 寒食节",
	"0408 佛诞节 牛王诞",
	"0505*端午节",
	"0508 龙母诞", 
	"0520 分龙节",
	"0606 天贶节 姑姑节",
	"0616 鲁班节",
	"0630 围香节",
	"0624 彝族火把节 关帝节",
	"0707 七夕情人节",
	"0714 鬼节(南方)",
	"0715 中元节 盂兰节",
	"0730 地藏节",
	"0802 灶君诞",
	"0815*中秋节",
	"0827 先师诞",
	"0909 重阳节",
	"1001 祭祖节 祀靴节",
	"1025 感天上帝诞",
	"1117 阿弥陀佛圣诞",
	"1208 腊八节 释迦如来成道日",
	"1220 鲁班公诞",
	"1223 小年",
	"1224 祀灶",
	"0100*除夕")

//某月的第几个星期几
var wFtv = new Array(
	"0150 世界麻风日", //一月的最后一个星期日（月倒数第一个星期日）
	"0520 国际母亲节",
	"0530 全国助残日",
	"0630 父亲节",
	"0716 合作节",
	"0730 被奴役国家周",
	"0932 国际和平日",
	"0940 国际聋人节 世界儿童日",
	"0950 世界海事日",
	"1011 国际住房日",
	"1013 国际减轻自然灾害日(减灾日)",
	"1144 感恩节")

/*****************************************************************************
黄历宜忌计算
*****************************************************************************/
var jcName0 = new Array('建', '除', '满', '平', '定', '执', '破', '危', '成', '收', '开', '闭');
var jcName1 = new Array('闭', '建', '除', '满', '平', '定', '执', '破', '危', '成', '收', '开');
var jcName2 = new Array('开', '闭', '建', '除', '满', '平', '定', '执', '破', '危', '成', '收');
var jcName3 = new Array('收', '开', '闭', '建', '除', '满', '平', '定', '执', '破', '危', '成');
var jcName4 = new Array('成', '收', '开', '闭', '建', '除', '满', '平', '定', '执', '破', '危');
var jcName5 = new Array('危', '成', '收', '开', '闭', '建', '除', '满', '平', '定', '执', '破');
var jcName6 = new Array('破', '危', '成', '收', '开', '闭', '建', '除', '满', '平', '定', '执');
var jcName7 = new Array('执', '破', '危', '成', '收', '开', '闭', '建', '除', '满', '平', '定');
var jcName8 = new Array('定', '执', '破', '危', '成', '收', '开', '闭', '建', '除', '满', '平');
var jcName9 = new Array('平', '定', '执', '破', '危', '成', '收', '开', '闭', '建', '除', '满');
var jcName10 = new Array('满', '平', '定', '执', '破', '危', '成', '收', '开', '闭', '建', '除');
var jcName11 = new Array('除', '满', '平', '定', '执', '破', '危', '成', '收', '开', '闭', '建');

var jcrjxy = new Array(
	'出行.上任.会友.上书.见工','除服.疗病.出行.拆卸.入宅',
	'祈福.祭祀.结亲.开市.交易','祭祀.修填.涂泥.余事勿取',
	'易.立券.会友.签约.纳畜','祈福.祭祀.求子.结婚.立约',
	'求医.赴考.祭祀.余事勿取','经营.交易.求官.纳畜.动土',
	'祈福.入学.开市.求医.成服','祭祀.求财.签约.嫁娶.订盟',
	'疗病.结婚.交易.入仓.求职','祭祀.交易.收财.安葬'
	);
	
var jcrjxj = new Array(
	'动土.开仓.嫁娶.纳采','求官.上任.开张.搬家.探病',
	'服药.求医.栽种.动土.迁移','移徙.入宅.嫁娶.开市.安葬',
	'种植.置业.卖田.掘井.造船','开市.交易.搬家.远行',
	'动土.出行.移徙.开市.修造','登高.行船.安床.入宅.博彩',
	'词讼.安门.移徙','开市.安床.安葬.入宅.破土',
	'安葬.动土.针灸','宴会.安床.出行.嫁娶.移徙'
	);
	
var yj0 = '<font style="background-color:red; color:#FFF">&nbsp;宜&nbsp;</font>&nbsp;';
var yj1 = '<font style="background-color:green; color:#FFF">&nbsp;忌&nbsp;</font>&nbsp;';
	
var sk = new Array(
	'子时','一刻','凶。','二刻','平。平。','三刻','吉。旺财丁。','四刻','吉。旺财丁。','五刻','吉。旺人丁。','六刻','平。平。','七刻','凶。','八刻','凶。',
	'丑时','一刻','凶。','二刻','凶。','三刻','吉。生贵子。','四刻','吉。吉利。','五刻','吉。大吉利。','六刻','凶。','七刻','凶。','八刻','凶。',
	'寅时','一刻','凶。','二刻','吉。旺子孙。','三刻','吉。发大财。','四刻','凶。','五刻','吉。旺人丁。','六刻','吉。旺人丁。','七刻','凶。','八刻','凶。'
,	'卯时','一刻','吉。发福吉。','二刻','凶。','三刻','凶。','四刻','吉。吉利。','五刻','凶。','六刻','吉。发人丁。','七刻','吉。吉利。','八刻','吉。发横财。',
	'辰时','一刻','吉。旺财吉。','二刻','凶。','三刻','吉。旺财丁。','四刻','吉。大旺财。','五刻','凶。','六刻','吉。大旺财。','七刻','吉。吉利。','八刻','吉。发福吉。',
	'巳时','一刻','吉。发横财。','二刻','吉。发横财。','三刻','吉。发横财。','四刻','吉。发横财。','五刻','吉。大福贵。','六刻','吉。大福贵。','七刻','凶。','八刻','凶。',
	'午时','一刻','凶。','二刻','平。平。','三刻','吉。吉利。','四刻','吉。旺财吉。','五刻','吉。吉利。','六刻','吉。旺六畜。','七刻','凶。','八刻','凶。',
	'未时','一刻','凶。','二刻','凶。','三刻','吉。旺财丁。','四刻','吉。旺财丁。','五刻','吉。旺财丁。','六刻','吉。旺财丁。','七刻','吉。旺六畜。','八刻','凶。',
	'申时','一刻','凶。','二刻','凶。','三刻','凶。','四刻','凶。','五刻','吉。旺财丁。','六刻','吉。旺财丁。','七刻','凶。','八刻','凶。',
	'酉时','一刻','吉。发财吉。','二刻','吉。发财吉。','三刻','吉。发财吉。','四刻','吉。发财吉。','五刻','吉。大吉利。','六刻','吉。发财吉。','七刻','凶。','八刻','凶。',
	'戍时','一刻','吉。发财丁。','二刻','吉。发财丁。','三刻','凶。','四刻','凶。','五刻','凶。','六刻','凶。','七刻','凶。','八刻','凶。',
	'亥时','一刻','吉。吉利。','二刻','凶。','三刻','凶。','四刻','凶。','五刻','凶。','六刻','凶。','七刻','凶。','八刻','凶。'
);

function jcrt(d) {
    var jcrjxt;
    if (d == '建') jcrjxt = yj0 + jcrjxy[0] + '&nbsp; ' + yj1 + jcrjxj[0];
    if (d == '除') jcrjxt = yj0 + jcrjxy[1] + '&nbsp; ' + yj1 + jcrjxj[1];
    if (d == '满') jcrjxt = yj0 + jcrjxy[2] + '&nbsp; ' + yj1 + jcrjxj[2];
    if (d == '平') jcrjxt = yj0 + jcrjxy[3] + '&nbsp; ' + yj1 + jcrjxj[3];
    if (d == '定') jcrjxt = yj0 + jcrjxy[4] + '&nbsp; ' + yj1 + jcrjxj[4];
    if (d == '执') jcrjxt = yj0 + jcrjxy[5] + '&nbsp; ' + yj1 + jcrjxj[5];
    if (d == '破') jcrjxt = yj0 + jcrjxy[6] + '&nbsp; ' + yj1 + jcrjxj[6];
    if (d == '危') jcrjxt = yj0 + jcrjxy[7] + '&nbsp; ' + yj1 + jcrjxj[7];
    if (d == '成') jcrjxt = yj0 + jcrjxy[8] + '&nbsp; ' + yj1 + jcrjxj[8];
    if (d == '收') jcrjxt = yj0 + jcrjxy[9] + '&nbsp; ' + yj1 + jcrjxj[9];
    if (d == '开') jcrjxt = yj0 + jcrjxy[10] + '&nbsp; ' + yj1 + jcrjxj[10];
    if (d == '闭') jcrjxt = yj0 + jcrjxy[11] + '&nbsp; ' + yj1 + jcrjxj[11];
    return(jcrjxt);
}

function jcr(d) {
    var jcrjx;
    if (d == '建') jcrjx = yj0 + jcrjxy[0] + '<br>' + yj1 + jcrjxj[0];
    if (d == '除') jcrjx = yj0 + jcrjxy[1] + '<br>' + yj1 + jcrjxj[1];
    if (d == '满') jcrjx = yj0 + jcrjxy[2] + '<br>' + yj1 + jcrjxj[2];
    if (d == '平') jcrjx = yj0 + jcrjxy[3] + '<br>' + yj1 + jcrjxj[3];
    if (d == '定') jcrjx = yj0 + jcrjxy[4] + '<br>' + yj1 + jcrjxj[4];
    if (d == '执') jcrjx = yj0 + jcrjxy[5] + '<br>' + yj1 + jcrjxj[5];
    if (d == '破') jcrjx = yj0 + jcrjxy[6] + '<br>' + yj1 + jcrjxj[6];
    if (d == '危') jcrjx = yj0 + jcrjxy[7] + '<br>' + yj1 + jcrjxj[7];
    if (d == '成') jcrjx = yj0 + jcrjxy[8] + '<br>' + yj1 + jcrjxj[8];
    if (d == '收') jcrjx = yj0 + jcrjxy[9] + '<br>' + yj1 + jcrjxj[9];
    if (d == '开') jcrjx = yj0 + jcrjxy[10] + '<br>' + yj1 + jcrjxj[10];
    if (d == '闭') jcrjx = yj0 + jcrjxy[11] + '<br>' + yj1 + jcrjxj[11];
    return(jcrjx);
}

function cyclical2(num, num2) {
    if (num == 0) return(jcName0[num2]);
    if (num == 1) return(jcName1[num2]);
    if (num == 2) return(jcName2[num2]);
    if (num == 3) return(jcName3[num2]);
    if (num == 4) return(jcName4[num2]);
    if (num == 5) return(jcName5[num2]);
    if (num == 6) return(jcName6[num2]);
    if (num == 7) return(jcName7[num2]);
    if (num == 8) return(jcName8[num2]);
    if (num == 9) return(jcName9[num2]);
    if (num == 10) return(jcName10[num2]);
    if (num == 11) return(jcName11[num2]);
}

function CalConv2(yy, mm, dd, y, d, m, dt, nm) {
    var dy = d + '' + dd
    if ((yy == 0 && dd == 6) || (yy == 6 && dd == 0) || (yy == 1 && dd == 7) || (yy == 7 && dd == 1) || (yy == 2 && dd == 8) || (yy == 8 && dd == 2) || (yy == 3 && dd == 9) || (yy == 9 && dd == 3) || (yy == 4 && dd == 10) || (yy == 10 && dd == 4) || (yy == 5 && dd == 11) || (yy == 11 && dd == 5)) {
        return '<FONT color="#0000A0">日值岁破 大事不宜</font>';
    }
    else if ((mm == 0 && dd == 6) || (mm == 6 && dd == 0) || (mm == 1 && dd == 7) || (mm == 7 && dd == 1) || (mm == 2 && dd == 8) || (mm == 8 && dd == 2) || (mm == 3 && dd == 9) || (mm == 9 && dd == 3) || (mm == 4 && dd == 10) || (mm == 10 && dd == 4) || (mm == 5 && dd == 11) || (mm == 11 && dd == 5)) {
        return '<FONT color="#0000A0">日值月破 大事不宜</font>';
    }
    else if ((y == 0 && dy == '911') || (y == 1 && dy == '55') || (y == 2 && dy == '111') || (y == 3 && dy == '75') || (y == 4 && dy == '311') || (y == 5 && dy == '95') || (y == 6 && dy == '511') || (y == 7 && dy == '15') || (y == 8 && dy == '711') || (y == 9 && dy == '35')) {
        return '<FONT color="#0000A0">日值上朔 大事不宜</font>';
    }
    else if ((m == 1 && dt == 13) || (m == 2 && dt == 11) || (m == 3 && dt == 9) || (m == 4 && dt == 7) || (m == 5 && dt == 5) || (m == 6 && dt == 3) || (m == 7 && dt == 1) || (m == 7 && dt == 29) || (m == 8 && dt == 27) || (m == 9 && dt == 25) || (m == 10 && dt == 23) || (m == 11 && dt == 21) || (m == 12 && dt == 19)) {
        return '<FONT color="#0000A0">日值杨公十三忌 大事不宜</font>';
    }
    else {
        return 0;
    }
}

/*****************************************************************************
日期计算
*****************************************************************************/

//====================================== 返回农历 y年的总天数
function lYearDays(y) {
	var i, sum = 348;
	for(i=0x8000; i>0x8; i>>=1) sum += (lunarInfo[y-1900] & i)? 1: 0;
	return(sum+leapDays(y));
}

//====================================== 返回农历 y年闰月的天数
function leapDays(y) {
    if (leapMonth(y)) return( (lunarInfo[y - 1899] & 0xf) == 0xf ? 30 : 29);
    else return(0);
}

//====================================== 返回农历 y年闰哪个月 1-12 , 没闰返回 0
function leapMonth(y) {
    var lm = lunarInfo[y - 1900] & 0xf;
    return(lm == 0xf ? 0 : lm);
}

//====================================== 返回农历 y年m月的总天数
function monthDays(y,m) {
	return( (lunarInfo[y-1900] & (0x10000>>m))? 30: 29 );
}

//====================================== 算出农历, 传入日期控件, 返回农历日期控件, 该控件属性有 .year .month .day .isLeap
function Lunar(objDate) {
	var i, leap=0, temp=0;
	var offset   = (Date.UTC(objDate.getFullYear(),objDate.getMonth(),objDate.getDate()) - Date.UTC(1900,0,31))/86400000;
	for(i=1900; i<2100 && offset>0; i++) { 
		temp=lYearDays(i); 
		offset-=temp; 
	}
	if(offset<0) { 
		offset+=temp; 
		i--; 
	}
	this.year = i;
	leap = leapMonth(i); //闰哪个月
	this.isLeap = false;
	for(i=1; i<13 && offset>0; i++) {
	//闰月
		if(leap>0 && i==(leap+1) && this.isLeap==false){ 
			--i; 
			this.isLeap = true; 
			temp = leapDays(this.year); 
		}
		else{ 
			temp = monthDays(this.year, i); 
		}
	//解除闰月
		if(this.isLeap==true && i==(leap+1)) this.isLeap = false;
		offset -= temp;
	}
	if(offset==0 && leap>0 && i==leap+1)
	if(this.isLeap){ 
		this.isLeap = false; 
	}
	else{ 
		this.isLeap = true; 
		--i; 
	}
	if(offset<0){ 
		offset += temp; 
		--i; 
	}
	this.month = i;
	this.day = offset + 1;
}

//==============================返回公历 y年某m+1月的天数
function solarDays(y,m) {
	if(m==1)
	return(((y%4 == 0) && (y%100 != 0) || (y%400 == 0))? 29: 28);
	else
	return(solarMonth[m]);
}

//============================== 传入 offset 返回干支, 0=甲子
function cyclical(num) {
	return(Gan[num%10]+Zhi[num%12]);
}

//============================== 阴历属性
function calElement(sYear,sMonth,sDay,week,lYear,lMonth,lDay,isLeap,cYear,cMonth,cDay) {
	this.isToday = false;
	//瓣句
	this.sYear = sYear;    //公元年4位数字
	this.sMonth = sMonth;  //公元月数字
	this.sDay = sDay;      //公元日数字
	this.week = week;      //星期, 1个中文
	//农历
	this.lYear = lYear;    //公元年4位数字
	this.lMonth = lMonth;  //农历月数字
	this.lDay = lDay;      //农历日数字
	this.isLeap = isLeap;  //是否为农历闰月?
	//八字
	this.cYear = cYear;    //年柱, 2个中文
	this.cMonth = cMonth;  //月柱, 2个中文
	this.cDay = cDay;      //日柱, 2个中文
	this.color = '';
	this.lunarFestival = ''; //农历节日
	this.solarFestival = ''; //公历节日
	this.solarTerms = '';    //节气
}

//===== 某年的第n个节气为几日(从0小寒起算)
function sTerm(y,n) {
	var offDate = new Date( ( 31556925974.7*(y-1900) + sTermInfo[n]*60000  ) + Date.UTC(1900,0,6,2,5) );
	return(offDate.getUTCDate());
}

//============================== 返回阴历控件 (y年,m+1月)
/*
功能说明: 返回整个月的日期资料控件
使用方式: OBJ = new calendar(年,零起算月);
OBJ.length      返回当月最大日
OBJ.firstWeek   返回当月一日星期
由 OBJ[日期].属性名称 即可取得各项值
OBJ[日期].isToday  返回是否为今日 true 或 false
其他 OBJ[日期] 属性参见 calElement() 中的注解
*/

function cyclical3(num) {
   return(Gan1[num%10])
}

function cyclical4(num) {
   return(Gan2[num%12])
}

function calendar(y,m) {
	var sDObj, lDObj, lY, lM, lD=1, lL, lX=0, tmp1, tmp2, tmp3, lM2, lY2, lD2, xs, fs, cs;
	var cY, cM, cD; //年柱,月柱,日柱
	var lDPOS = new Array(3);
	var n = 0;
	var firstLM = 0;
	sDObj = new Date(y,m,1,0,0,0,0);    //当月一日日期
	this.length = solarDays(y,m);       //公历当月天数
	this.firstWeek = sDObj.getDay();    //公历当月1日星期几
	////////年柱 1900年立春后为庚子年(60进制36)
	if(m<2) cY=cyclical(y-1900+36-1);
	else cY=cyclical(y-1900+36);
	var term2=sTerm(y,2); //立春日期
	////////月柱 1900年1月小寒以前为 丙子月(60进制12)
	var firstNode = sTerm(y,m*2) //返回当月「节」为几日开始
	cM = cyclical((y-1900)*12+m+12);
	lM2 = (y - 1900) * 12 + m + 12;
	//当月一日与 1900/1/1 相差天数
	//1900/1/1与 1970/1/1 相差25567日, 1900/1/1 日柱为甲戌日(60进制10)
	var dayCyclical = Date.UTC(y,m,1,0,0,0,0)/86400000+25567+10;
	for(var i=0;i<this.length;i++) {
		if(lD>lX) {
			sDObj = new Date(y,m,i+1);    //当月一日日期
			lDObj = new Lunar(sDObj);     //农历
			lY = lDObj.year;              //农历年
			lM = lDObj.month;             //农历月
			lD = lDObj.day;               //农历日
			lL = lDObj.isLeap;            //农历是否闰月
			lX = lL? leapDays(lY): monthDays(lY,lM); //农历当月最后一天
			if(n==0) firstLM = lM;
			lDPOS[n++] = i-lD+1;
		}
		//依节气调整二月分的年柱, 以立春为界
		if(m==1 && (i+1)==term2) {
            cY = cyclical(y - 1900 + 36);
            lY2 = (y - 1900 + 36);
        }
		//依节气月柱, 以「节」为界
		if((i+1)==firstNode) {
            cM = cyclical((y - 1900) * 12 + m + 13);
            lM2 = (y - 1900) * 12 + m + 13;
        }
		//日柱
		cD = cyclical(dayCyclical+i);
		lD2 = (dayCyclical + i);
		//sYear,sMonth,sDay,week,
		//lYear,lMonth,lDay,isLeap,
		//cYear,cMonth,cDay
		this[i] = new calElement(y, m+1, i+1, nStr1[(i+this.firstWeek)%7],lY, lM, lD++, lL,cY ,cM, cD );
		this[i].sgz5 = CalConv2(lY2 % 12, lM2 % 12, (lD2) % 12, lY2 % 10, (lD2) % 10, lM, lD - 1, m + 1);
        this[i].sgz3 = cyclical2(lM2 % 12, (lD2) % 12);
		this[i].dGz = cyclical3(lD2);
		this[i].sgz = cyclical4(lD2); 
		//喜神、福神、财神位
		if((lD2)%10==0 || (lD2)%10==5){xs='东北';} 
			else if((lD2)%10==1 || (lD2)%10==6){xs='西北';} 
			else if((lD2)%10==2 || (lD2)%10==7){xs='西南';} 
			else if((lD2)%10==3 || (lD2)%10==8){xs='正南';} 
			else if((lD2)%10==4 || (lD2)%10==9){xs='东南';} 
		if((lD2)%10==0 || (lD2)%10==1){fs='东南';} 
			else if((lD2)%10==2 || (lD2)%10==3){fs='正东';} 
			else if((lD2)%10==4){fs='正北';} 
			else if((lD2)%10==5){fs='正南';} 
			else if((lD2)%10==6 || (lD2)%10==7){fs='西南';} 
			else if((lD2)%10==8){fs='西北';} 
			else if((lD2)%10==9){fs='正西';} 
		if((lD2)%10==0 || (lD2)%10==1){cs='东北';} 
			else if((lD2)%10==2 || (lD2)%10==3){cs='西南';} 
			else if((lD2)%10==4 || (lD2)%10==5){cs='正北';} 
			else if((lD2)%10==6 || (lD2)%10==7){cs='正东';} 
			else if((lD2)%10==8 || (lD2)%10==9){cs='正南';}
		this[i].xsfw ='<font color="#800080">\u25C7喜神：</font>'+xs;
		this[i].fsfw ='<font color="#800080">\u25C7福神：</font>'+fs;
		this[i].csfw ='<font color="#800080">\u25C7财神：</font>'+cs;
	}
	//节气
	tmp1=sTerm(y,m*2  )-1;
	tmp2=sTerm(y,m*2+1)-1;
	this[tmp1].solarTerms = solarTerm[m*2];
	this[tmp2].solarTerms = solarTerm[m*2+1];
	if(m==3) this[tmp1].color = 'red'; //清明颜色
	//公历节日
	for(i in sFtv)
	if(sFtv[i].match(/^(\d{2})(\d{2})([\s\*])(.+)$/))
	if(Number(RegExp.$1)==(m+1)) {
		this[Number(RegExp.$2)-1].solarFestival += RegExp.$4 + ' ';
		if(RegExp.$3=='*') this[Number(RegExp.$2)-1].color = 'red';
	}
	//月周节日
	for(i in wFtv)
	if(wFtv[i].match(/^(\d{2})(\d)(\d)([\s\*])(.+)$/))
	if(Number(RegExp.$1)==(m+1)) {
		tmp1=Number(RegExp.$2);
		tmp2=Number(RegExp.$3);
		if(tmp1<5)
			this[((this.firstWeek>tmp2)?7:0) + 7*(tmp1-1) + tmp2 - this.firstWeek].solarFestival += RegExp.$5 + ' ';
		else {
			tmp1 -= 5;
			tmp3 = (this.firstWeek+this.length-1)%7; //当月最后一天星期?
			this[this.length - tmp3 - 7*tmp1 + tmp2 - (tmp2>tmp3?7:0) - 1 ].solarFestival += RegExp.$5 + ' ';
		}
	}
	//农历节日
	for(i in lFtv)
	if(lFtv[i].match(/^(\d{2})(.{2})([\s\*])(.+)$/)) {
		tmp1=Number(RegExp.$1)-firstLM;
		if(tmp1==-11) tmp1=1;
		if(tmp1 >=0 && tmp1<n) {
			tmp2 = lDPOS[tmp1] + Number(RegExp.$2) -1;
			if( tmp2 >= 0 && tmp2<this.length && this[tmp2].isLeap!=true) {
				this[tmp2].lunarFestival += RegExp.$4 + ' ';
				if(RegExp.$3=='*') this[tmp2].color = 'red';
			}
		}
	}
	//复活节只出现在3或4月
	if(m==2 || m==3) {
		var estDay = new easter(y);
		if(m == estDay.m)
		this[estDay.d-1].solarFestival = this[estDay.d-1].solarFestival+' 复活节 Easter Sunday';
	}
	if(m==2) this[20].solarFestival = this[20].solarFestival+unescape('%20%u6D35%u8CE2%u751F%u65E5');
	//黑色星期五
	if((this.firstWeek+12)%7==5)
	this[12].solarFestival += '黑色星期五';
	//今日
	if(y==tY && m==tM) this[tD-1].isToday = true;
}

//======================================= 返回该年的复活节(春分后第一次满月周后的第一主日)
function easter(y) {
	var term2=sTerm(y,5); //取得春分日期
	var dayTerm2 = new Date(Date.UTC(y,2,term2,0,0,0,0)); //取得春分的公历日期控件(春分一定出现在3月)
	var lDayTerm2 = new Lunar(dayTerm2); //取得取得春分农历
	if(lDayTerm2.day<15) //取得下个月圆的相差天数
		var lMlen= 15-lDayTerm2.day;
	else
		var lMlen= (lDayTerm2.isLeap? leapDays(y): monthDays(y,lDayTerm2.month)) - lDayTerm2.day + 15;
	//一天等于 1000*60*60*24 = 86400000 毫秒
	var l15 = new Date(dayTerm2.getTime() + 86400000*lMlen ); //求出第一次月圆为公历几日
	var dayEaster = new Date(l15.getTime() + 86400000*( 7-l15.getUTCDay() ) ); //求出下个周日
	this.m = dayEaster.getUTCMonth();
	this.d = dayEaster.getUTCDate();
}

//====================== 中文日期
function cDay(d){
	var s;
	switch (d) {
		case 10: s = '初十'; break;
		case 20: s = '二十'; break;
		case 30: s = '三十'; break;
		break;
		default :
			s = nStr2[Math.floor(d/10)];
			s += nStr1[d%10];
	}
	return(s);
}

///////////////////////////////////////////////////////////////////////////////
var cld,SCT,SCTS,SJT,RCT;
var rymdwT,rfromtdT,rdateT,rnlwT,rjznT,rjryjT,rjyT;
function drawCld(SY,SM) {
	var i,sD,s,size,jyt,jyt1;
	cld = new calendar(SY,SM);
	if(SY>1874 && SY<1909) yDisplay = '<font color="#ffff00">光绪' + (((SY-1874)==1)?'元':SY-1874);
	if(SY>1908 && SY<1912) yDisplay = '<font color="#ffff00">宣统' + (((SY-1908)==1)?'元':SY-1908);
	if(SY>1911 && SY<1950) yDisplay = '<font color="#ffff00">民国' + (((SY-1911)==1)?'元':SY-1911);
	if(SY>1949) yDisplay = '<font color="#ffff00">建国' + (((SY-1949)==1)?'元':SY-1949);
	GZ.innerHTML = yDisplay +'年</font> 农历 ' + cyclical(SY-1900+36) + '年 【'+Animals[(SY-4)%12]+'年】';
	for(i=0;i<42;i++) {
		sObj=eval('SD'+ i);
		gObj=eval('GD'+ i);
		lObj=eval('LD'+ i);
		sObj.className = '';
		gObj.style.background = '#ffffff';
		sD = i - cld.firstWeek;
		if(sD>-1 && sD<cld.length) { //日期内
			sObj.innerHTML = sD+1;
			if(cld[sD].isToday){
				//今日颜色
				gObj.style.background = '#FC9';//'#CEE27E';//'#FEF693'//
				//框架时父框架输出
				//parent.document.getElementById('Tdate').innerHTML = '【今天】 &nbsp;' + cld[sD].sYear + '年' + cld[sD].sMonth + '月' + cld[sD].sDay + '日 &nbsp;星期' + cld[sD].week + ' &nbsp;农历'+(cld[sD].isLeap?'闰 ':'') + FormatLunarMonth(cld[sD].lMonth)+'月' + FormatLunarDay(cld[sD].lDay) + ' &nbsp;' + cld[sD].cYear + '年 ' + cld[sD].cMonth + '月 ' + cld[sD].cDay + '日  &nbsp;' + cld[sD].solarTerms + ' &nbsp;' + cld[sD].solarFestival + ' &nbsp;' + cld[sD].lunarFestival;
				//节日
				TFestival.innerHTML = '<font color = "#ffff00">【今天节日】</font> &nbsp;<font color = "#00ff">' + cld[sD].solarTerms + '</font> &nbsp;<font color = "#00ffff">' + cld[sD].solarFestival + '</font> &nbsp;<font color = "#ff9966">' + cld[sD].lunarFestival + "</font>";
				//宜忌
				if (cld[sD].sgz5 != 0) {
					jyt = cld[sD].sgz5;
					jyt1 = cld[sD].sgz5;
        		} else {
            		jyt = jcrt(cld[sD].sgz3);
					jyt1 = jcr(cld[sD].sgz3);
        		}
				NTD.innerHTML = '<font color="red">【今日宜忌】</font> ' + jyt;
				//日辰
				RCT = cld[sD].cDay.substring(1,2);				
				for(j=0;j<12;j++){
					rObj=eval('RC'+ j);
					rObj.style.background = '#ffffff';
					if(Zhi[j]==RCT){ rObj.style.background = '#FC9';
					// $("#w3").val(j);alert(j); 
					}
					
					
				}
				//时辰
				SCT = cld[sD].dGz;
				SCTS = cld[sD].sDay;
				//吉凶
				SJT = cld[sD].sgz;
				//喜神、福神、财神位
				dayglu0.innerHTML =cld[sD].xsfw;
				dayglu1.innerHTML =cld[sD].fsfw;
				dayglu2.innerHTML =cld[sD].csfw;
				//右边显示
				rymdw.innerHTML = cld[sD].sYear+'&nbsp;年&nbsp;'+cld[sD].sMonth+'&nbsp;月&nbsp;'+cld[sD].sDay+'&nbsp;日&nbsp;星期'+cld[sD].week;
				rymdwT = rymdw.innerHTML;
				rfromtd.innerHTML = '距离今天&nbsp;&nbsp;<font color="red">0</font>&nbsp;&nbsp;天';
				rfromtdT = rfromtd.innerHTML;
				rdate.innerHTML = '<font size="7" face="Arial Black">' + cld[sD].sDay + '</font>';
				rdateT = rdate.innerHTML;
				rnlw.innerHTML = '农历'+(cld[sD].isLeap?'&nbsp;闰':'&nbsp;')+FormatLunarMonth(cld[sD].lMonth)+'月'+FormatLunarDay(cld[sD].lDay)+'&nbsp;第'+getYearWeek(cld[sD].sYear,cld[sD].sMonth,cld[sD].sDay)+'周';
				rnlwT = rnlw.innerHTML;
				rjzn.innerHTML = cld[sD].cYear+'年&nbsp;'+cld[sD].cMonth+'月&nbsp;'+cld[sD].cDay + '日';
				rjznT = rjzn.innerHTML;
				setInterval(function(){with(new Date)document.getElementById("rtime1").innerHTML = (getHours()<10? ('0'+getHours()):getHours())+':'+(getMinutes()<10? ('0'+getMinutes()):getMinutes())+':'+(getSeconds()<10? ('0'+getSeconds()):getSeconds())},1000)
				setInterval(function(){with(new Date)document.getElementById("rtime2").innerHTML = '（'+'子丑丑寅寅卯卯辰辰巳巳午午未未申申酉酉戌戌亥亥子'.charAt(getHours())+'时'+(getHours()%2==0?'五六七八':'一二三四').charAt(parseInt(getMinutes()/15))+'刻）'},1000)
				rjryj.innerHTML = '<table width="100%"><tr><td rowspan="3" width="30px" align="center" bgcolor="#FEF693"><font color="red">节<br><br>日</font></td><td height="36px" bgcolor="#FEF693"><FONT color="blue">&nbsp;&nbsp;'+ cld[sD].solarFestival + '</FONT></td></tr><tr><td height="22px" bgcolor="#FEF693"><FONT color="red">&nbsp;&nbsp;' + cld[sD].lunarFestival + '</FONT></td></tr><tr><td height="22px" bgcolor="#FEF693"><FONT color="#006600">&nbsp;&nbsp;' + cld[sD].solarTerms+'</FONT></td></tr></table>';
				rjryjT = rjryj.innerHTML;
				rjy.innerHTML = jyt1;
				rjyT = rjy.innerHTML;
			}
			sObj.style.color = cld[sD].color; //法定假日颜色			
			if(cld[sD].lDay==1) //显示农历月
				lObj.innerHTML = '<b>'+(cld[sD].isLeap?'闰':'') + cld[sD].lMonth + '月' + (monthDays(cld[sD].lYear,cld[sD].lMonth)==29?'小':'大')+'</b>';
			else //显示农历日
				lObj.innerHTML = cDay(cld[sD].lDay);
				s=cld[sD].lunarFestival;
			if(s.length>0) { //农历节日
				if(s.length>6) s = s.substr(0, 4)+'...';
				s = s.fontcolor('red');
			}
			else { //公历节日
				s=cld[sD].solarFestival;
				if(s.length>0) {
					size = (s.charCodeAt(0)>0 && s.charCodeAt(0)<128)?8:4;
					if(s.length>size+2) s = s.substr(0, size)+'...';
					s=(s=='黑色星期五')?s.fontcolor('black'):s.fontcolor('blue');
				}
				else { //廿四节气
					s=cld[sD].solarTerms;
					if(s.length>0) s = s.fontcolor('green');
				}
			}
			if(cld[sD].solarTerms=='清明') s = '清明节'.fontcolor('red');
			if(cld[sD].solarTerms=='芒种') s = '芒种节'.fontcolor('red');
			if(cld[sD].solarTerms=='夏至') s = '夏至节'.fontcolor('red');
			if(cld[sD].solarTerms=='冬至') s = '冬至节'.fontcolor('red');
			if(s.length>0) lObj.innerHTML = s;
		}
		else { //非日期
			sObj.innerHTML = '';
			lObj.innerHTML = '';
		}
	}
	//时辰
	for(i=0;i<12;i++) {
		SCObj=eval('SC'+ i);
		SCObj.innerHTML = (SCT).substring(i*2,(i+1)*2);
		SC12.innerHTML =  SCTS + "日时辰：";
	}
	//吉凶
	for(i=0;i<12;i++) {
		SJObj=eval('SJ'+ i);
		SJObj.innerHTML = (SJT).substring(i*3+1,(i+1)*3);
		if((SJT).substring(i*3,i*3+1)==1) SJObj.style.color = "red";
		else SJObj.style.color = "#0000A0";
	}
}

//按钮的事件
function pushBtm(K) {
	switch (K){
		case 'YU' :
			if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
		break;
		case 'YD' :
			if(CLD.SY.selectedIndex<200) CLD.SY.selectedIndex++;
		break;
		case 'MU' :
			if(CLD.SM.selectedIndex>0) {
			CLD.SM.selectedIndex--;
			}
			else {
			CLD.SM.selectedIndex=11;
			if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
			}
		break;
		case 'MD' :
			if(CLD.SM.selectedIndex<11) {
				CLD.SM.selectedIndex++;
			}
			else {
				CLD.SM.selectedIndex=0;
				if(CLD.SY.selectedIndex<200) CLD.SY.selectedIndex++;
			}
		break;
		default :
			CLD.SY.selectedIndex=tY-1900;
			CLD.SM.selectedIndex=tM;
	}
	changeCld();
}

//选择某年某月时的事件
function changeCld() {
	var y,m;
	var kgm = '<span style="margin-left:15px;"></span>';
	y=CLD.SY.selectedIndex+1900;
	m=CLD.SM.selectedIndex;
	drawCld(y,m);	
	switch (m){
	case 0 : ST.innerHTML = '【 '+STA[0]+kgm+STA[1]+' 】'; 
	break;
	case 1 : ST.innerHTML = '【 '+STA[1]+kgm+STA[2]+' 】'; 
	break;
	case 2 : ST.innerHTML = '【 '+STA[2]+kgm+STA[3]+' 】'; 
	break;
	case 3 : ST.innerHTML = '【 '+STA[3]+kgm+STA[4]+' 】'; 
	break;
	case 4 : ST.innerHTML = '【 '+STA[4]+kgm+STA[5]+' 】'; 
	break;
	case 5 : ST.innerHTML = '【 '+STA[5]+kgm+STA[6]+' 】'; 
	break;
	case 6 : ST.innerHTML = '【 '+STA[6]+kgm+STA[7]+' 】'; 
	break;
	case 7 : ST.innerHTML = '【 '+STA[7]+kgm+STA[8]+' 】'; 
	break;
	case 8 : ST.innerHTML = '【 '+STA[8]+kgm+STA[9]+' 】';  
	break;
	case 9 : ST.innerHTML = '【 '+STA[9]+kgm+STA[10]+' 】'; 
	break;
	case 10 : ST.innerHTML = '【 '+STA[10]+kgm+STA[11]+' 】'; 
	break;
	default : ST.innerHTML = '【 '+STA[11]+kgm+STA[0]+' 】'; 
	}
}

var Today = new Date();
var tY = Today.getFullYear();
var tM = Today.getMonth();

var tD = Today.getDate();

//时间
setInterval(function(){with(new Date)document.getElementById("tim").innerHTML = '<font color="red">【现在时间】</font> '+(getHours()<10? ('0'+getHours()):getHours())+':'+(getMinutes()<10? ('0'+getMinutes()):getMinutes())+':'+(getSeconds()<10? ('0'+getSeconds()):getSeconds())+'（'+'子丑丑寅寅卯卯辰辰巳巳午午未未申申酉酉戌戌亥亥子'.charAt(getHours())+'时'+(getHours()%2==0?'五六七八':'一二三四').charAt(parseInt(getMinutes()/15))+'刻）'},1000)

//时辰光标
var tout;
function tick() {
   	var scolor,scolor1,j;
	var z = new Array(12); 
	var zc = "#ffffff";
   	var sccolor=new Array("red","green");
   	var today1 = new Date()
	var hours = today1.getHours();
	var minutes = today1.getMinutes();
	var seconds = today1.getSeconds();
	scolor=sccolor[seconds%2];
	if (( hours >= 1 ) && (hours < 3 )){j=1;z[1]=scolor;}else {z[1]=zc;} if (( hours >= 3 ) && (hours < 5 )){j=2;z[2]=scolor;}else {z[2]=zc;} if (( hours >= 5 ) && (hours < 7 )){j=3;z[3]=scolor;}else {z[3]=zc;} if (( hours >= 7 ) && (hours < 9 )){j=4;z[4]=scolor;}else {z[4]=zc;} if (( hours >= 9 ) && (hours < 11)){j=5;z[5]=scolor;}else {z[5]=zc;} if (( hours >= 11) && (hours < 13)){j=6;z[6]=scolor;}else {z[6]=zc;} if (( hours >= 13) && (hours < 15)){j=7;z[7]=scolor;}else {z[7]=zc;} if (( hours >= 15) && (hours < 17)){j=8;z[8]=scolor;}else {z[8]=zc;} if (( hours >= 17) && (hours < 19)){j=9;z[9]=scolor;}else {z[9]=zc;}if (( hours >= 19) && (hours < 21)){j=10;z[10]=scolor;}else {z[10]=zc;} if (( hours >= 21) && (hours < 23)){j=11;z[11]=scolor;}else {z[11]=zc;} if (((hours >= 23) || (hours < 1))){j=0;z[0]=scolor;} else {z[0]=zc;}	
	for(k=0;k<12;k++) {
		STGObj=eval('STG'+ k);
		STGObj.style.background = z[k];
	}
	//时刻
	for(i=0;i<17;i++) {
		SJSObj=eval('SJS'+ i);
		if(i==0)SJSObj.innerHTML = sk[j*17+i]+'<FONT color="red">吉</font><FONT color="#0000A0">凶</font>：';
		else SJSObj.innerHTML = sk[j*17+i];
	}
	var tt=(hours%2==0?'5678':'1234').charAt(parseInt(minutes/15));
	for(z=1;z<17;z++){
		SJSObj1=eval('SJS'+ z);
		if((z==(tt*2))||(z==(tt*2-1)))SJSObj1.style.color = scolor;
		else {
			if(SJSObj1.innerHTML.length>1)SJSObj1.style.color="black";
			if(SJSObj1.innerHTML.length>2)SJSObj1.style.color="green";
			if(SJSObj1.innerHTML.length>4)SJSObj1.style.color="red";
		}
	}	
	tout=window.setTimeout('tick()', 1000);
}

//停止光标
function stopCount(v){
   clearTimeout(tout);
   //时辰
	for(j=0;j<12;j++){
		STGObj1=eval('STG'+ j);
		STGObj1.style.background = "#ffffff";
	}
   //时刻
	for(i=0;i<17;i++) {
		SJSObj=eval('SJS'+ i);
		if(i==0)SJSObj.innerHTML = sk[v*17+i]+'<FONT color="red">吉</font><FONT color="#0000A0">凶</font>：';
		else SJSObj.innerHTML = sk[v*17+i];
		if(SJSObj.innerHTML.length>1&&i>1)SJSObj.style.color="black";
		if(SJSObj.innerHTML.length>2&&i>1)SJSObj.style.color="green";
		if(SJSObj.innerHTML.length>4&&SJSObj.innerHTML.length<7&&i>1)SJSObj.style.color="red";
	}
}

//////////////////////////////////////////////////////////////////////////////
var width = "170";
var offsetx = 2;
var offsety = 20;
var x = 0;
var y = 0;
var snow = 0;
var sw = 0;
var cnt = 0;
var dStyle;
document.onmousemove = mEvn;

// 将农历iLunarMonth月格式化成农历表示的字符串
function FormatLunarMonth(iLunarMonth) {
    var szText = new String("正二三四五六七八九十冬腊");
    var strMonth = szText.substr(iLunarMonth - 1, 1);
    return strMonth;
}

// 将农历iLunarDay日格式化成农历表示的字符串
function FormatLunarDay(iLunarDay) {
    var szText1 = new String("初十廿三");
    var szText2 = new String("一二三四五六七八九十");
    var strDay;
    if ((iLunarDay != 20) && (iLunarDay != 30)) {
        strDay = szText1.substr((iLunarDay - 1) / 10, 1) + szText2.substr((iLunarDay - 1) % 10, 1);
    }
    else if (iLunarDay != 20) {
        strDay = szText1.substr(iLunarDay / 10, 1) + "十";
    }
    else {
        strDay = "二十";
    }
    return strDay;
}

//计算第几周
var getYearWeek = function (a, b, c) {  
	var date1 = new Date(a, b - 1, c), 
		date2 = new Date(a, 0, 1), 
		d = Math.round((date1.valueOf() - date2.valueOf()) / 86400000) ;
    	return Math.ceil((d + date2.getDay()+1) / 7);
}

//显示日期资料
function mOvr(v) {
	var s,festival,jy,d1,d2,days,zhou,Lunard,cYMD;
	var sObj=eval('SD'+ v);
	var gObj=eval('GD'+ v);
	var d=sObj.innerHTML-1;
	var dayy ;
	//sYear,sMonth,sDay,week,
	//lYear,lMonth,lDay,isLeap,
	//cYear,cMonth,cDay
	gObj.style.cursor = 'default';//手势
	if(sObj.innerHTML!='') {
		gObj.style.cursor = 'pointer';//手势
		//宜忌
		if (cld[d].sgz5 != 0) {
			jy = cld[d].sgz5;
        } else {
            jy = jcr(cld[d].sgz3);
        }
		//节日
		if(cld[d].solarTerms == '' && cld[d].solarFestival == '' && cld[d].lunarFestival == '')
			festival = '';
		else
			festival = '<TABLE WIDTH=100% BORDER=0 CELLPADDING=2 CELLSPACING=0 BGCOLOR="#FEF693"><TR><TD><FONT color="#006600">'+cld[d].solarTerms + '</FONT>&nbsp;<FONT color="blue">' + cld[d].solarFestival + '</FONT>&nbsp;<FONT color="red">' + cld[d].lunarFestival+'</FONT></TD></TR></TABLE>';
		//年月日星期
		nymdw = cld[d].sYear+'&nbsp;年&nbsp;'+cld[d].sMonth+'&nbsp;月&nbsp;'+cld[d].sDay+'&nbsp;日&nbsp;星期'+cld[d].week;
		
	

		//两日期相差天数
		d1 = new Date(tY+'/'+(tM+1)+'/'+tD);
		d2 = new Date(cld[d].sYear+'/'+cld[d].sMonth+'/'+cld[d].sDay);
		days = parseInt((d2.getTime() - d1.getTime()) / (1000 * 60 * 60 * 24));
		if(days<0) days='距离今天&nbsp;&nbsp;已过&nbsp;<font color="red" face="Arial">'+(0-days)+'</font>&nbsp;&nbsp;天';
		if(days>0) days='距离今天&nbsp;&nbsp;还有&nbsp;<font color="red" face="Arial">'+days+'</font>&nbsp;&nbsp;天';
		if(days==0) days='距离今天&nbsp;&nbsp;<font color="red" face="Arial">'+days+'</font>&nbsp;&nbsp;天';
		//第几周
		zhou = '第'+getYearWeek(cld[d].sYear,cld[d].sMonth,cld[d].sDay)+'周';
		//农历
		Lunard = '农历'+(cld[d].isLeap?'&nbsp;闰':'&nbsp;')+FormatLunarMonth(cld[d].lMonth)+'月'+FormatLunarDay(cld[d].lDay);
		//甲子年月
		cYMD = cld[d].cYear+'年&nbsp;'+cld[d].cMonth+'月&nbsp;'+cld[d].cDay + '日';
		//浮动框输出
		s= '<TABLE WIDTH="170px" BORDER="0" CELLPADDING="2" CELLSPACING="0" BGCOLOR="#396999"><TR><TD><TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="0"><TR><TD ALIGN="right"><FONT COLOR="#ffffff">'+nymdw+'</font><br><font color="#9ff969">'+Lunard+'&nbsp;'+zhou+'</font><br><font color="yellow">'+ cYMD + '</font></TD></TR></TABLE>'+ festival +'<TABLE WIDTH="100%" BORDER="0" CELLPADDING="2" CELLSPACING="0" BGCOLOR="#fffff"><TR><TD>'+jy+'</TD></TR></TABLE><TABLE WIDTH="100%" BORDER="0" CELLPADDING="2" CELLSPACING="0" BGCOLOR="#CFDFF0"><TR><TD align="center">'+days+'</TD></TR></TABLE></TD></TR></TABLE>';
		document.all["detail"].innerHTML = s;

		
		if (snow == 0) {

			dStyle.left = x+offsetx-(width/2);
			dStyle.top = y+offsety;
			dStyle.visibility = "visible";
			snow = 1;
		}
		
		
		
		
		//日辰吉凶
		for(i=0;i<12;i++){
			rObj=eval('RC'+ i);
			rObj.style.background = '#ffffff';
			if(Zhi[i]==cld[d].cDay.substring(1,2)){rObj.style.background = '#dddddd';}
			if(Zhi[i]==RCT) {rObj.style.background = '#fc9';}	
		}
		//时辰
		for(i=0;i<12;i++) {
			SCObj=eval('SC'+ i);
			SCObj.innerHTML = (cld[d].dGz).substring(i*2,(i+1)*2);
			SC12.innerHTML =  cld[d].sDay + "日时辰：";

		}
		//时辰吉凶
		for(i=0;i<12;i++) {
			SJObj=eval('SJ'+ i);
			SJObj.innerHTML = (cld[d].sgz).substring(i*3+1,(i+1)*3);
			if((cld[d].sgz).substring(i*3,i*3+1)==1)  SJObj.style.color = "red";
			else SJObj.style.color = "blue";
		}
		//喜神、福神、财神位
		dayglu0.innerHTML =cld[d].xsfw;
		dayglu1.innerHTML =cld[d].fsfw;
		dayglu2.innerHTML =cld[d].csfw;

		
		
		//右边显示
		rymdw.innerHTML = nymdw;
		rfromtd.innerHTML = days;
		rdate.innerHTML = '<font size="7" face="Arial Black">' + cld[d].sDay + '</font>';
		rnlw.innerHTML = Lunard+'&nbsp;'+zhou;
		rjzn.innerHTML = cYMD;
		rjryj.innerHTML = '<table width="100%"><tr><td rowspan="3" width="30px" align="center" bgcolor="#FEF693"><font color="red">节<br><br>日</font></td><td height="36px" bgcolor="#FEF693"><FONT color="blue">&nbsp;&nbsp;'+ cld[d].solarFestival + '</FONT></td></tr><tr><td height="22px" bgcolor="#FEF693"><FONT color="red">&nbsp;&nbsp;' + cld[d].lunarFestival + '</FONT></td></tr><tr><td height="22px" bgcolor="#FEF693"><FONT color="#006600">&nbsp;&nbsp;' + cld[d].solarTerms+'</FONT></td></tr></table>';
		rjy.innerHTML = jy;

	}
}

//清除日期资料
function mOut1() {
	//日辰吉凶
	for(i=0;i<12;i++){
		rObj=eval('RC'+ i);
		rObj.style.background = '#ffffff';
		if(Zhi[i]==RCT) rObj.style.background = '#fc9';
		}
	//时辰
	
	for(i=0;i<12;i++) {
		SCObj=eval('SC'+ i);
		SCObj.innerHTML = (SCT).substring(i*2,(i+1)*2);
		SC12.innerHTML =  SCTS + "日时辰：";

	}
	//时辰吉凶
	for(i=0;i<12;i++) {
		SJObj=eval('SJ'+ i);
		SJObj.innerHTML = (SJT).substring(i*3+1,(i+1)*3);
		if((SJT).substring(i*3,i*3+1)==1) SJObj.style.color = "red";
		else SJObj.style.color = "#0000A0";
	}
	if ( cnt >= 1 ) { sw = 0; }
	if ( sw == 0 ) { snow = 0;  }  
	else cnt++;
	
//  yuanlai	if ( sw == 0 ) { snow = 0; dStyle.visibility = "hidden"; }  
	
	
	
	//右边显示
	rymdw.innerHTML = rymdwT;
	rfromtd.innerHTML = rfromtdT;
	rdate.innerHTML = rdateT;
	rnlw.innerHTML = rnlwT;
	rjzn.innerHTML = rjznT;
	rjryj.innerHTML = rjryjT;

	rjy.innerHTML = rjyT;
}

//取得浮动窗口位置
function mEvn(obj) {
	var event = obj || window.event;
	x=event.clientX;
	y=event.clientY;
	if (document.body.scrollLeft){
		x=event.clientX+document.body.scrollLeft; 
		y=event.clientY+document.body.scrollTop;
	}
	if (snow){
		dStyle.left = x+offsetx-(width/2);
		dStyle.top = y+offsety;
	}
}

/////////////////////////////////////////////////////////
//初始化
function initial() {
   	dStyle = detail.style;
   	dStyle.visibility = "visible";
   	CLD.SY.selectedIndex=tY-1900;
   	CLD.SM.selectedIndex=tM;
   	drawCld(tY,tM);
   	pushBtm('');
	tick();
	}
//-->
</SCRIPT>

</head>
<body  onLoad="initial()" style="margin:0; color:#333;">
<style>
.ll{
border:1px solid #00a0e9;
float:left;
width:90px ;
height:40px;
padding-top:20px;
padding-left:18px;
font-size:20px;

}
</style>
<%@ include file="/template/name/htmlheader1.jsp"%>
<br><br><br>
<Div style="width: 1225px;margin: 0 auto;">
<c:forEach var="i"   begin="2000"  end="2021" step="1" varStatus="v"><div class="ll" > <a href="/name/${i}/wnllist.do" >${i}年</a>  </div></c:forEach>
     </div>
     
<div style="clear:both"></div>

  <div id="featured_slide">
<div class="content" id="acss">
            
            
            
            
            
            
            
            
            
            
            
            
            
                 
                 <CENTER>

<!--浮动窗口-->
<DIV id="detail" style="POSITION: absolute;background:#F00;"></DIV>

<FORM name=CLD >
<TABLE>
  <TR>
    <TD style="border:1px solid #591434;" valign="top"  >
      <TABLE width="660px">
        <TR height="27px">
          <TD bgColor="#591434" colSpan="7" align="center">
            <table width="100%" style="border-collapse:collapse; border:0px; color:#FFF;">
              <tr>
                <td width="14%" align="left">
                  <INPUT type="button" onClick="pushBtm('YU')" value="<<">
                  <INPUT type="button" onClick="pushBtm('MU')" value="<">
                </td>
                <td width="72%" align="center">
                  	<FONT style="font-size:10pt">
            		公历 <SELECT onChange="changeCld()" name="SY"> 
              		<SCRIPT language=JavaScript>
			  		<!--
            			for(i=1900;i<=2100;i++) document.write('<option>'+i)
              		//-->
              		</SCRIPT>
            		</SELECT>年<SELECT onChange="changeCld()" name="SM"> 
              		<SCRIPT language=JavaScript>
			  		<!--
            			for(i=1;i<13;i++) document.write('<option>'+i)
             		//-->
             		</SCRIPT>
            		</SELECT>月
            		</FONT>
            		<FONT id="GZ" style="font-size:10pt"></FONT>
            		<INPUT type="button" onClick="pushBtm('')" value="今日">
                </td>
                <td width="14%" align="right">
                  <INPUT type="button" onClick="pushBtm('MD')" value=">">
                  <INPUT type="button" onClick="pushBtm('YD')" value=">>">
                 </td>
               </tr>
             </table>            
          </TD>
        </TR>
        <TR bgcolor="#591434" height="24px">
          <TD colSpan="7" id="TFestival"></TD>
        </TR>
        <TR bgcolor="#CFDFF0" height="24px">
          <TD colSpan="7">
            <div style="float:left;"><span id="NTD"></span></div>
            <div style="float:right;"><span id="tim"></span>
            </div>
          </TD>
        </TR>
        <TR align=middle bgColor="#CFDFF0" height="24px">
          <TD width="14%"><FONT color="red"><b>日</b></FONT></TD>
          <TD width="14%"><b>一</b></TD>
          <TD width="14%"><b>二</b></TD>
          <TD width="14%"><b>三</b></TD>
          <TD width="14%"><b>四</b></TD>
          <TD width="14%"><b>五</b></TD>
          <TD width="14%"><FONT color="green"><b>六</b></FONT></TD>
        </TR>
        <SCRIPT language=JavaScript>
		<!--
            var gNum
            for(i=0;i<6;i++) {
               document.write('<tr align="center" height="44px">')
               for(j=0;j<7;j++) {
                  gNum = i*7+j
                  document.write('<td id="GD' + gNum +'"        onclick="mOvr(' + gNum +')"            onMouseOut="mOut()"><font id="SD' + gNum +'" size="4" face="Arial Black"')
                  if(j == 0) document.write(' color=red')
                  if(j == 6) document.write(' color=green')
                  document.write('></font><br><font id="LD' + gNum + '"> </font></td>')
               }
               document.write('</tr>')
            }
          //-->
          </SCRIPT>
        <TR>
          <TD colSpan="7" align="center">
            <table width="98%" style="text-align:center;">
              <tr height="24px" bgColor="#CFDFF0">
                <td id="ST" colspan="7">&nbsp;</td>
              	<td colspan="2" id="dayglu0" style="color:red" align="center">&nbsp;</td>
              	<td colspan="2" id="dayglu1" style="color:red" align="center">&nbsp;</td>
              	<td colspan="2" id="dayglu2" style="color:red" align="center">&nbsp;</td>
              </tr>
              <tr height="24px">
                <td align="right">日辰<FONT color="red">吉</font><FONT color="#0000A0">凶</font>：</td>
                  <td id="RC0" style="color:red">青龙</td>
                  <td id="RC1" style="color:red">明堂</td>
                  <td id="RC2" style="color:blue">天刑</td>
                  <td id="RC3" style="color:blue">朱雀</td>
                  <td id="RC4" style="color:red">金匮</td>
                  <td id="RC5" style="color:red">天德</td>
                  <td id="RC6" style="color:blue">白虎</td>
                  <td id="RC7" style="color:red">玉堂</td>
                  <td id="RC8" style="color:blue">天牢</td>
                  <td id="RC9" style="color:blue">玄武</td>
                  <td id="RC10" style="color:red">司命</td>
                  <td id="RC11" style="color:blue">勾陈</td>
                </tr>
                <tr>
                  <td colspan="13" height="1" bgcolor="#999999"></td>
                </tr>
              	<tr>
                  <td id="SC12" align="right" width="14%" height="24px"></td>
                  <SCRIPT language=JavaScript>
				  <!--
            		for(i=0;i<12;i++) {
               			document.write('<td id="SC' + i +'" width="7%" onMouseOver="stopCount('+i+')" onMouseOut="tick()" style="cursor:pointer;"></td>')
           			 }
          		  //-->
          		  </SCRIPT>  
                </tr>
                <tr>
                  <td height="2px"></td>
                  <SCRIPT language=JavaScript>
				  <!--
            		for(i=0;i<12;i++) {
               			document.write('<td id="STG' + i +'"></td>')
           			 }
          		  //-->
          		  </SCRIPT>  
                </tr>
                <tr>
                  <td align="right" height="24px">时辰<FONT color="red">吉</font><FONT color="#0000A0">凶</font>：</td>
                  <SCRIPT language=JavaScript>
				  <!--
            		for(i=0;i<12;i++) {
               			document.write('<td id="SJ' + i +'" width="7%" onMouseOver="stopCount('+i+')" onMouseOut="tick()" style="cursor:pointer;"></td>')
           			 }
          		  //-->
          		  </SCRIPT>  
                </tr>
                <tr>
                  <td colspan="13" height="1" bgcolor="#999999"></td>
                </tr>
                <tr>
                  <td id="SJS0" align="right" height="24px"></td>
                  <td id="SJS1"></td>
                  <td id="SJS2" colspan="2" style="text-align:left;"></td>
                  <td id="SJS3"></td>
                  <td id="SJS4" colspan="2" style="text-align:left;"></td>
                  <td id="SJS5"></td>
                  <td id="SJS6" colspan="2" style="text-align:left;"></td>
                  <td id="SJS7"></td>
                  <td id="SJS8" colspan="2" style="text-align:left;"></td>
                </tr>
                <tr>
                  <td height="24px">&nbsp;</td>
                  <td id="SJS9"></td>
                  <td id="SJS10" colspan="2" style="text-align:left;"></td>
                  <td id="SJS11"></td>
                  <td id="SJS12" colspan="2" style="text-align:left;"></td>
                  <td id="SJS13"></td>
                  <td id="SJS14" colspan="2" style="text-align:left;"></td>
                  <td id="SJS15"></td>
                  <td id="SJS16" colspan="2" style="text-align:left;"></td>
                </tr>  
              </table>
          </TD>
        </TR>
      </TABLE>
    </TD>
    <TD style="border:1px solid #396999;" valign="top" >
      <TABLE width="220px">
        <TR height="27px">
          <TD align="center" id="rymdw" bgColor="#591434" style="font-size:15px; color:#FFF;"></TD>
        </TR>
        <TR>
          <TD>
            <table width="100%" bgColor="#CFDFF0" style="text-align:center;">
              <tr height="24px">
                <td id="rfromtd" style="font-size:13px;" align="center"></td>
              </tr>
              <tr>
                <td id="rdate" height="48px"></td>
              </tr>
              <tr>
                <td id="rnlw" height="22px"></td>
              </tr>
              <tr>
                <td id="rjzn" height="22px"></td>
              </tr>
            </table>
          </TD>
        </TR>
  		<TR>
    	  <TD bgcolor="#591434" style="color:#FFF;" align="center" height="22px"><span style="font-size:14px; color:#FF0;">【现在】</span><span id="rtime1" style="font-size:15px;"></span><span id="rtime2" style="font-size:14px;"></span>
          </TD>
  		</TR>
        <TR>
    	  <TD id="rjryj" height="80px"></TD>
  		</TR>
  		<TR>
    	  <td id="rjy" bgColor="#CFDFF0" height="44px" align="center" style="line-height:20px;"></td>
  		</TR>
  		<TR>
    	  <TD style="line-height:24px; text-indent:2em;">阳历中<FONT color="red">红色</FONT>/<FONT color="green">绿色</FONT>表示节假日，节日中<FONT color="green">绿色</FONT>表示为24节气日，<FONT color="red">红色</FONT>表示为农历节日，<FONT color="blue">蓝色</FONT>则表示为公历节日。</TD>
  		</TR>
        <TR>
    	  <TD height="1" bgcolor="#999999"></TD>
  		</TR>
  		<TR>
    	  <TD>
            <table width="100%" align="center">
  			  <tr>
    			<td width="50%"><font color="red">青龙：消息吉。</font></td>
    			<td width="50%"><font color="red">明堂：吉。</font></td>
  			  </tr>
  			  <tr>
    			<td><font color="red">金匮：财星吉。</font></td>
    			<td><font color="red">天德：官贵吉。</font></td>
  			  </tr>
  			  <tr>
    			<td><font color="red">玉堂：吉。</font></td>
    			<td><font color="red">司命：官长吉。</font></td>
  			  </tr>
  			  <tr>
    		    <td>天刑：驿马强动。</td>
    			<td>朱雀：口舌。</td>
  			  </tr>
  			  <tr>
    			<td>白虎：口舌官非。</td>
    			<td>天牢：凶星宜忌。</td>
  			  </tr>
  			  <tr>
    			<td colspan="2">玄武；内小人盗贼暗害。</td>
    		  </tr>
  			  <tr>
    			<td colspan="2">勾陈：口舌牵连。</td>
    		  </tr>
			</table>
		  </TD>
  		</TR>
	  </table>
	</TD>
  </TR>
</TABLE>
</FORM>






</DIV>


</CENTER>
                 
                 
  
         </div>
      </div>

      <!--content-ends-->

<br></br>
<Br></Br>



<script >


function Pause(s,f){ 
    this.GoOn = function(n,s){
        if(n == 0){ 
            setTimeout(function(){GoOn(1,s);},s);
        } else{ 
            f();
        } 
    }
    this.GoOn(0,s);
}








	function myname() {
  var  j=0 ;
	var tem = 100;

	for (var i = 0; i < 42; i++) {
		mOvr(i);
		 alert(i)
		var d = $("#p3").val();
		
		if (d == 0) {
			alert("空位"+d);
		} else if (d == tem) {
			alert(d+"-----"+tem);
			pushBtm('MD');
			i = 0;
			tem = 0;
			$("#p3").val('0');
		} else {
			tem = d;
			subd();
			j++ ;
			alert(j)
		}

	}

}

function subd() {

	var dayg = $("#p1").val();
	var dayy = $("#p4").val();
	var day = $("#p3").val();
	var xs = $("#x1").val();
	var fs = $("#x2").val();
	var cs = $("#x3").val();
	var year = $("#p5").val();
	var jieri = $("#p6").val();
	var luck = $("#p7").val();
	var dayluck = $("#w3").val();
	var sesc = $("#w1").val();
	var scluck = $("#w2").val();
	var xingzuo = $("#p8").val();
	var dayn = $("#p9").val();

	$.ajax({
		type : "GET",
		url : "/name/AddWnl.do",
		data : {
			dayg : dayg,
			dayy : dayy,
			day : day,
			xs : xs,
			fs : fs,
			cs : cs,
			year : year,
			jieri : jieri,
			luck : luck,
			dayluck : dayluck,
			sesc : sesc,
			scluck : scluck,
			xingzuo : xingzuo,
			daynn : dayn 
		},
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
		}
	});

}














</script>
<!-- ####################################################################################################### -->


<script >

function dfd(spic ,url){

var  aa=  document.getElementById("ddd") ;
var  aaa=  document.getElementById("rurl") ;
// alert(spic) ;
// alert(url) ;
    aa.src=spic;
    aaa.href=url ;

}

</script>

<script src="/template/name/js/libs/jquery.min.js"></script>
<script src="/template/name/js/libs/jmpress.min.js"></script>
<script src="/template/name/js/libs/jquery.jmslideshow.js"></script>
<script src="/template/name/js/libs/script.js"></script>
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>
</html>

