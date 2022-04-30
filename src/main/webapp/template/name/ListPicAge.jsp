<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖_${m.item_name}_${c.catename}_栏目列表${c.pdir}</title>
<meta name="keywords" content="${c.ckeyword}" />
<meta name="description" content="${c.cdepict}" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/name/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
</head>
<body class="gray-bg" >
			<%@ include file="/template/name/htmlheader.jsp"%><br><br>
			
		<div class="wrapper wrapper-content"  >
	<div class="row" >		
			<div class="ibox-content"  style="height: 100%;" >
			
			
			
			<div class="col-lg-12" >
			
			
			<div class="col-lg-8"  style="border-right:1px dashed #A9A9A9" >
			<!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                        <dl>你现在的位置:  <a href="/index.${kuo}">网站首页</a> ><a href="/${item}/portal.${kuo}">频道首页</a> > 
                         <c:if test="${not empty lanmuname}">  <a href="/${item}/${cate}/index.do">${lanmuname}</a>  > </c:if> 
                         <span>${catename}</span></dl>
                    </div>
                  <div class="mianContent"> 
<div class="left702">
    <div class="supply">              
        <!--信息列表-->
      	<c:forEach items="${lst}" var="a" varStatus="status">  
      <div class="list5">
        <div class="toppic"><img src="${a.picaddress}" width="160" height="110" /></div>
        <div class="topcon">
          <div class="title15">
            <h2><c:if test="${not empty cat}">    
  <a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}"  style="font-family: 'open sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    font-size: 16px;line-height: 24px;" target="_blank">${a.articletitle }</a>
  </c:if>
 <c:if test="${ empty cat}"> 
  <a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle }</a>
 </c:if></h2>
          </div>
          <div class="list_con1" style="font-family: 'open sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    font-size: 13px;">
          <c:if test="${fn:length(a.articleitd)>100 }">${ fn:substring( a.articleitd ,0,100)} ...</c:if>
        <c:if test="${fn:length(a.articleitd)<=100 }">${  a.articleitd }</c:if>
          </div>
          <div class="fbtime1">发布时间：${a.creattime }</div>
         
          
        </div>
        
      </div>
      </c:forEach> 
       <div class="clear"></div>   
    </div>
  </div>  
                           
                           
                       
                    
                    
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           <!--Pages-->
                           <div class="Pages">
                            
                              
                                  <c:if test="${ empty lanmuname}"> 
                                  <span class="">目前在第<b>${pageNum}</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>${totalRecord}</b>条记录</span>
         <span class="p_page">
          <c:if test="${!(pageNum == 1)}">     
                   <a href="/${item}/${cate}/list_1.${kuo}" class="a_first">首页</a>      <a href="/${item}/${cate}/list_${(pageNum -1)}.${kuo}" class="a_prev">上一页</a>
           </c:if>
           <em class="num">
              <c:forEach var="i" begin="1" end="${pages}" step="1">  
                <c:if test="${pageNum == i}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" class="a_cur">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/${item}/${cate}/list_${i}.${kuo}" >${i}</a>
                 </c:if>  
    		  </c:forEach>  
    		  </em>
          <c:if test="${!(pageNum == pages)}">     
                   <a href="/${item}/${cate}/list_${(pageNum +1)}.${kuo}" class="a_next">下一页</a><a href="/${item}/${cate}/list_${pages}.${kuo}" class="a_end">末页</a>
           </c:if>
           </span>
        </c:if>     
            
            
        <c:if test="${not empty lanmuname}">  
                                  <span class="">目前在第<b>${pageNum}</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>${totalRecord}</b>条记录</span>
         <span class="p_page">
          <c:if test="${!(pageNum == 1)}">     
                   <a href="/${item}/${cate}/${cat}/list_1.${kuo}" class="a_first">首页</a>      <a href="/${item}/${cate}/${cat}/list_${(pageNum -1)}.${kuo}" class="a_prev">上一页</a>
           </c:if>
           <em class="num">
              <c:forEach var="i" begin="1" end="${pages}" step="1">  
                <c:if test="${pageNum == i}">     
                     <a href="/${item}/${cate}/${cat}/list_${i}.${kuo}" class="a_cur">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/${item}/${cate}/${cat}/list_${i}.${kuo}" >${i}</a>
                 </c:if>  
    		  </c:forEach>  
    		  </em>
          <c:if test="${!(pageNum == pages)}">     
                   <a href="/${item}/${cate}/${cat}/list_${(pageNum +1)}.${kuo}" class="a_next">下一页</a><a href="/${item}/${cate}/${cat}/list_${pages}.${kuo}" class="a_end">末页</a>
           </c:if>
           </span>
        </c:if>
                              
                           </div>
                           <!--Pages-->
                           <!--End-->
                           
                           
                  </div>
            </div>
            
         </div>   
            
          <div class="col-lg-4" >  
          
          <div style="border:1px solid #00a0e9;padding:30px;margin-top:50px;">
                              年龄计算器一 <hr  style="padding-bottom:40px;">
          <input type="text" id="year"   placeholder="请输入出生年份"    style="width:120px;" />
          <button type="button"  onclick="getYear()"   style="width:100px;font-size: 10px;height:22px">计算年龄</button>
           <div id="rs" style="padding-top:40px;" ></div>
          </div>
          
          
         <div style="border:1px solid #00a0e9;padding:30px;margin-top:40px;">
                              年龄计算器二 <hr  style="padding-bottom:20px;">
							
							<form name="reg_testdate" style="padding-bottom:20px;">
								<select  id="YY" name="YYYY" onChange="YYYYDD(this.value)">
									<option value="0">请选择 年</option>
								</select> 
								<select name="MM" id="MM" onChange="MMDD(this.value)">
									<option value="0">选择 月</option>
								</select> <select name="DD" id="DD">
									<option value="0">选择 日</option>
								</select>
							</form>
							<button type="button"  onclick="getYear2()"   style="width:100px;font-size: 10px;height:22px">计算年龄</button>
         <div id="rs2" style="padding-top:40px;" ></div>
          </div>
          
          <div style="border:1px solid #00a0e9;padding:30px;margin-top:40px;line-height:30px;">
          晓知识<hr>
  法律对周岁的规定：刑法第十七条规定的"周岁"，按照公历的年、月、日计算，从周岁生日的第二天起算。     
         
          
          
          
          </div>
          </div>
          
			</div>
			
			
			
			
			<div class="clear"></div>
			
			</div>
			
		</div>
	</div>		
	<div class="clear"></div>
<div class="row" > <%@ include file="/template/name/footer.jsp"%>  </div>
	<!-- 全局js -->
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>
	
		<script type="text/javascript">
	function  getYear(){
		var year = document.getElementById("year").value;
		$.ajax({
			type : "GET",
			url : "/name/Age.do",
			async : false,
			data : {year : year},
			dataType : "text",
			success : function(ds) {
				document.getElementById("rs").innerHTML = ds;
			}
		});
	}
	</script>
	
	
	
	<script type="text/javascript">
	function  getYear2(){
		var year = $('#YY').val();
		var MM = $('#MM').val();
		var DD = $('#DD').val();
		if(MM==0||year==0||DD==00){
			alert("请选择完整的出生日期，年月日");
			return false ;
		}
		$.ajax({
			type : "GET",
			url : "/name/Age2.do",
			async : false,
			data : {year : year ,MM : MM ,DD : DD },
			dataType : "text",
			success : function(ds) {
				document.getElementById("rs2").innerHTML = ds;
			}
		});
	}
	</script>
	
	
	
	
	
	<script language="JavaScript">   
function YYYYMMDDstart(){   
	MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];   
	
	//先给年下拉框赋内容   
	var y  = new Date().getFullYear();  
	for (var i = (y-99); i < (y+30); i++) //以今年为准，前30年，后30年   
		   document.reg_testdate.YYYY.options.add(new Option(" "+ i +" 年", i));   
	
	//赋月份的下拉框   
	for (var i = 1; i < 13; i++)   
		   document.reg_testdate.MM.options.add(new Option(" " + i + " 月", i));   
	
	document.reg_testdate.YYYY.value = y;   
	document.reg_testdate.MM.value = new Date().getMonth() + 1;   
	var n = MonHead[new Date().getMonth()];   
	if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;   
		writeDay(n); //赋日期下拉框Author:meizz   
	document.reg_testdate.DD.value = new Date().getDate();   
}   
if(document.attachEvent)   
	window.attachEvent("onload", YYYYMMDDstart);   
else   
window.addEventListener('load', YYYYMMDDstart, false);   
function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)   
{   
	var MMvalue = document.reg_testdate.MM.options[document.reg_testdate.MM.selectedIndex].value;   
	if (MMvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
	var n = MonHead[MMvalue - 1];   
	if (MMvalue ==2 && IsPinYear(str)) n++;   
	writeDay(n)   
}   
function MMDD(str)   //月发生变化时日期联动   
{   
	var YYYYvalue = document.reg_testdate.YYYY.options[document.reg_testdate.YYYY.selectedIndex].value;   
	if (YYYYvalue == ""){ var e = document.reg_testdate.DD; optionsClear(e); return;}   
	var n = MonHead[str - 1];   
	if (str ==2 && IsPinYear(YYYYvalue)) n++;   
	writeDay(n)   
}   
function writeDay(n)   //据条件写日期的下拉框   
{   
	var e = document.reg_testdate.DD; optionsClear(e);   
	for (var i=1; i<(n+1); i++)   
	e.options.add(new Option(" "+ i + " 日", i));   
}   
function IsPinYear(year)//判断是否闰平年   
{
	return(0 == year%4 && (year%100 !=0 || year%400 == 0));
}   
function optionsClear(e)   
{   
	e.options.length = 1;   
}   
</script>

</body>
</html>
