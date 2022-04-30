<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>世间万物之_${m.item_name}_${c.catename}_栏目列表</title>
<meta name="keywords" content="${c.ckeyword}" />
<meta name="description" content="${c.cdepict}" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<!--  <link href="/template/name/css/defect.css" rel="stylesheet">   -->
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/name/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
</head>
<body  onload="getCate2('${cateid}')">
			<%@ include file="/template/name/htmlheader.jsp"%>
			
			<br><br>
			<div class="ibox-content"  style="height: 100%;" >
			<div class="col-sm-8">
			
			<!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                        <dl>你现在的位置:  <a href="/index.${kuo}">网站首页</a> >
                               <a href="/${item}/portal.${kuo}">频道首页</a> > 
                         <c:if test="${not empty lanmuname}">  <a href="/${item}/${cate}/index.do">${lanmuname}</a>  > </c:if> 
                         <span>${catename}</span></dl>
                        
                  </div>
                  <div class="mianContent">
                  
                           <!--Star-->
                           <div class="News_list">
                                <ul>
                                
                     	<c:forEach items="${lst}" var="a" varStatus="status">
  <c:if test="${not empty cat}">    
  <li><span>${a.creattime}</span><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
  </c:if>
 <c:if test="${ empty cat}">
  <li><span>${a.creattime}</span><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle }</a></li>
 </c:if>		
</c:forEach>           
                                
                                </ul>
                           </div>
                           <!--Pages-->
                           <div class="Pages">
                              </span>
                              
                                  <c:if test="${ empty lanmuname}"> 
                                  <span class="p_cur">目前在第<b>10</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>30</b>条记录</span>
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
                                  <span class="p_cur">目前在第<b>10</b>页,</span>
                                  <span class="p_count">共有<b>${pages}</b>页,</span>
                                  <span class="p_total">共有<b>30</b>条记录</span>
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
                  
            <div class="clear"></div>
  
            </div>
            </div> 
            <div class="col-sm-4">
            
            
            
            <div class="col-sm-12">
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
					<div class="col-sm-12">
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
					<div class="col-sm-12">
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
            <!--右边 End-->
					<input type="hidden" class="form-control" id="cateid" value="${cateid}">
			</div>
	<div class="clear"></div>
<div class="row" > <%@ include file="/template/name/footer.jsp"%>  </div>
	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="/template/name/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="/template/name/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="/template/name/kjs/common.js"></script>
</body>
</html>
