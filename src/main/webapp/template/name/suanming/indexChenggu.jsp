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

</SCRIPT>

</head>
<body   style="margin:0; color:#333;">
<style>
.ll{
border:1px solid #00a0e9;
float:left;
width:57px ;
height:25px;
padding-top:5px;
padding-left:5px;
font-size:10px;
text-align:center;
}

ul{width:190px ;float:left;padding-left:20px;padding-bottom：20px;margin-bottom:30px;}
li{list-style-type:none;padding-left:10px;}

</style>
<%@ include file="/template/name/htmlheader1.jsp"%>
<br><br>

<div  style="margin:10px auto;width:1300px;height:750px;padding:10px;">

<Div style="width:20%;float:left;border:1px solid #00a0e9;padding:30px;height:720px;">


<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;"> <a href="">称骨论命 </a>    </div>
<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;">  <a href=""> 称骨论命</a>   </div>
<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;">   <a href="">称骨论命</a>   </div>
<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;">   <a href="">称骨论命</a>   </div>
<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;">   <a href="">称骨论命  </a> </div>
<div style="text-align:center;border:1px solid #00a0e9;padding:5px 20px;margin-bottom:20px;">   <a href="">称骨论命  </a> </div>



</div  >



 <div  style="padding-top:15px;margin-left:15px;margin-right: 15px;width:620px ;height:730px;border:1px solid #00a0e9;float:left;padding-bottom:35px;">
 
 <div  style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;background:#F00; color:#FFF;text-align:center;padding:10px 10px 5px 10px;margin-bottom:20px;">
称骨算命
  </div> 


 

<div style="width:550px ;border:1px solid #00a0e9;margin:0 auto;padding:10px;margin-top:30px;">

<div style="float:left;width:540px;height:100px;line-height:35px;"> 
称骨论命<Br>



          <div class="form_item"> 出生日期（农历）&nbsp; 
          <select class="select" name="y" id="cg_year"
										onChange="chage_day('gl');">
										<option value="1910">1910</option>
										<option value="1911">1911</option>
										<option value="1912">1912</option>
										<option value="1913">1913</option>
										<option value="1914">1914</option>
										<option value="1915">1915</option>
										<option value="1916">1916</option>
										<option value="1917">1917</option>
										<option value="1918">1918</option>
										<option value="1919">1919</option>
										<option value="1920">1920</option>
										<option value="1921">1921</option>
										<option value="1922">1922</option>
										<option value="1923">1923</option>
										<option value="1924">1924</option>
										<option value="1925">1925</option>
										<option value="1926">1926</option>
										<option value="1927">1927</option>
										<option value="1928">1928</option>
										<option value="1929">1929</option>
										<option value="1930">1930</option>
										<option value="1931">1931</option>
										<option value="1932">1932</option>
										<option value="1933">1933</option>
										<option value="1934">1934</option>
										<option value="1935">1935</option>
										<option value="1936">1936</option>
										<option value="1937">1937</option>
										<option value="1938">1938</option>
										<option value="1939">1939</option>
										<option value="1940">1940</option>
										<option value="1941">1941</option>
										<option value="1942">1942</option>
										<option value="1943">1943</option>
										<option value="1944">1944</option>
										<option value="1945">1945</option>
										<option value="1946">1946</option>
										<option value="1947">1947</option>
										<option value="1948">1948</option>
										<option value="1949">1949</option>
										<option value="1950">1950</option>
										<option value="1951">1951</option>
										<option value="1952">1952</option>
										<option value="1953">1953</option>
										<option value="1954">1954</option>
										<option value="1955">1955</option>
										<option value="1956">1956</option>
										<option value="1957">1957</option>
										<option value="1958">1958</option>
										<option value="1959">1959</option>
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
										<option value="2007">2007</option>
										<option value="2008">2008</option>
										<option value="2009">2009</option>
										<option value="2010">2010</option>
										<option value="2011">2011</option>
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
									</select> 年
									 <select class="select" name="m" id="cg_month">
										<option value="1">正月</option>
										<option value="2">二月</option>
										<option value="3">三月</option>
										<option value="4">四月</option>
										<option value="5">五月</option>
										<option value="6">六月</option>
										<option value="7">七月</option>
										<option value="8">八月</option>
										<option value="9">九月</option>
										<option value="10">十月</option>
										<option value="11">十一月</option>
										<option value="12">十二月</option>
									</select> 月
                                     <select class="select" name="d" id="cg_day">
										<option value="1">初一</option>
										<option value="2">初二</option>
										<option value="3">初三</option>
										<option value="4">初四</option>
										<option value="5">初五</option>
										<option value="6">初六</option>
										<option value="7">初七</option>
										<option value="8">初八</option>
										<option value="9">初九</option>
										<option value="10">初十</option>
										<option value="11">十一</option>
										<option value="12">十二</option>
										<option value="13">十三</option>
										<option value="14">十四</option>
										<option value="15">十五</option>
										<option value="16">十六</option>
										<option value="17">十七</option>
										<option value="18">十八</option>
										<option value="19">十九</option>
										<option value="20">二十</option>
										<option value="21">廿一</option>
										<option value="22">廿二</option>
										<option value="23">廿三</option>
										<option value="24">廿四</option>
										<option value="25">廿五</option>
										<option value="26">廿六</option>
										<option value="27">廿七</option>
										<option value="28">廿八</option>
										<option value="29">廿九</option>
										<option value="30">三十</option>
									</select>日
                                            <select class="select" name="h" id="cg_hour">
                                                <option value="0">0&nbsp;子</option>
                                                <option value="1">1&nbsp;丑</option>
                                                <option value="2">2&nbsp;丑</option>
                                                <option value="3">3&nbsp;寅</option>
                                                <option value="4">4&nbsp;寅</option>
                                                <option value="5">5&nbsp;卯</option>
                                                <option value="6">6&nbsp;卯</option>
                                                <option value="7">7&nbsp;辰</option>
                                                <option value="8">8&nbsp;辰</option>
                                                <option value="9">9&nbsp;巳</option>
                                                <option value="10">10&nbsp;巳</option>
                                                <option value="11">11&nbsp;午</option>
                                                <option value="12">12&nbsp;午</option>
                                                <option value="13">13&nbsp;未</option>
                                                <option value="14">14&nbsp;未</option>
                                                <option value="15">15&nbsp;申</option>
                                                <option value="16">16&nbsp;申</option>
                                                <option value="17">17&nbsp;酉</option>
                                                <option value="18">18&nbsp;酉</option>
                                                <option value="19">19&nbsp;戌</option>
                                                <option value="20">20&nbsp;戌</option>
                                                <option value="21">21&nbsp;亥</option>
                                                <option value="22">22&nbsp;亥</option>
                                                <option value="23">23&nbsp;子</option>
                                            </select>   时 <select class="select"
										name="i" id="cg_minute">
										<option value="0">未知</option>
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
										<option value="32">32</option>
										<option value="33">33</option>
										<option value="34">34</option>
										<option value="35">35</option>
										<option value="36">36</option>
										<option value="37">37</option>
										<option value="38">38</option>
										<option value="39">39</option>
										<option value="40">40</option>
										<option value="41">41</option>
										<option value="42">42</option>
										<option value="43">43</option>
										<option value="44">44</option>
										<option value="45">45</option>
										<option value="46">46</option>
										<option value="47">47</option>
										<option value="48">48</option>
										<option value="49">49</option>
										<option value="50">50</option>
										<option value="51">51</option>
										<option value="52">52</option>
										<option value="53">53</option>
										<option value="54">54</option>
										<option value="55">55</option>
										<option value="56">56</option>
										<option value="57">57</option>
										<option value="58">58</option>
										<option value="59">59</option>
									</select> 分 
                          <button type="button"  onclick="chenggu()"   style="width:80px;font-size: 10px;height:22px">查询</button>                  
                                            </div>





</div>


   <div style="clear:both"></div> 
</div>




<div  style="padding:24px;">

<div style="float:left;line-height:35px;font-size:18px;font-weight:bold;">

【称骨重量】：<div style="font-size:15px;font-weight:normal;padding-left:10px;" id="jx"> <Br></div>
【命运总概】：<div style="font-size:15px;font-weight:normal;padding-left:10px;" id="num"><Br><Br></div>
【命运详解】：<div style="font-size:15px;font-weight:normal;padding-left:10px;" id="con"><Br></div>
</div>

</div>




 </div>    
     
    
     
     
 <div  style="width:20% ;height:730px;border:1px solid #00a0e9;float:right;padding-top:20px;margin-bottom:30px;padding:25px;">    
 称骨论命<hr>
 「称骨论命」称骨算命法是唐代著名的星象预测家袁天罡称骨的预测方法，八字袁天罡称骨算命法同四柱算命一样，能确定一个人一生的吉凶祸福、荣辱盛衰，准确率很高，又便于掌握和运用。 一个人出生的年、月、日、时各有定数，年、月、日、时的重量都有具体规定。只要把年、月、日、时的重量加在一起，在这里输入信息经过系统分析就能得到称骨论命，袁天罡称骨，的骨重再按照"称骨算命歌"一查，就可大概确定这个人一生的命运。<hr>
<Br><Br>

 <br> <br> <br>
    关注本站公众号支持：<hr> 
   <div style="float:left;width:120px"> 
    <img src="/pic/wx/wxszjh.jpg" style="width:100px;height:100px">
    </div>
    <div style="float:left;width:120px"> 
    <img src="/pic/wx/wdwx.jpg" style="width:100px;height:100px">
    </div>
    
    <div style="float:left;width:90px;padding-left:30px;"> 身在江湖 </div>
    <div style="float:left;width:90px;padding-left:30px;"> 我的微信 </div>
    
   
   </div>    
    
    
   <div style="clear:both"></div> 

     
   </div>  
     
     
 
<Br></Br>



<script >
	

	function chenggu() {

		var y = $("#cg_year").val();
		var m = $("#cg_month").val();
		var d = $("#cg_day").val();
		var h = $("#cg_hour").val();
		var mi = $("#cg_minute").val();
		$.ajax({
			type : "GET",
			url : "/name/suanming/chenggu.do",
			data : {
				y : y ,
				m : m ,
				d : d ,
				h : h ,
				mi : mi
			},
			async : false,
			dataType : "text",
			success : function(data) {
				// alert(data);
				var dataObj = eval("(" + data + ")");

			num.innerHTML = dataObj[0].content;
				jx.innerHTML =  "<font color='#FF0000' > "+ dataObj[0].weight + " </font>";
				con.innerHTML = dataObj[0].intro ;

			}
		});
	}

	function myname() {
		var j = 0;
		var tem = 100;

		for (var i = 0; i < 42; i++) {
			mOvr(i);
			alert(i)
			var d = $("#p3").val();

			if (d == 0) {
				alert("空位" + d);
			} else if (d == tem) {
				alert(d + "-----" + tem);
				pushBtm('MD');
				i = 0;
				tem = 0;
				$("#p3").val('0');
			} else {
				tem = d;
				subd();
				j++;
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

</body>
</html>

