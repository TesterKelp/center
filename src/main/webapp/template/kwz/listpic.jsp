<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${site.sitename}_${m.item_name}_${c.catename}_栏目列表${c.pdir}</title>
<meta name="keywords" content="${c.ckeyword}" />
<meta name="description" content="${c.cdepict}" />
<link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/kwz/css/animate.css" rel="stylesheet">
<link href="/template/kwz/css/defect.css" rel="stylesheet">
<link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/kwz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
<link href="/template/kwz/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
</head>
<body class="gray-bg" >
			<%@ include file="/template/kwz/htmlheader.jsp"%><br><br>
			
		<div class="wrapper wrapper-content"  >
	<div class="row" >		
			
			<div class="ibox-content"  style="height: 100%;" >
	  	
			
			<div class="col-lg-12" >
			
			<!--右边-->
            <div class="RightSidebar">
                  <div class="Current">
                        <dl>你现在的位置:  <a href="/index.${kuo}">网站首页</a> ><a href="/${item}/portal.${kuo}">频道首页</a> > 
                         <c:if test="${not empty lanmuname}">  <a href="/${item}/${cate}/index.do">${lanmuname}</a>  > </c:if> 
                         <span>${catename}</span></dl>
                    </div>
                
                  <div class="mianContent"> 

			     				<style type="text/css">

.whitebg { background: #fff; border-radius: 3px; padding: 5px; margin-bottom: 5px; overflow: hidden; }
.htitle { font-size: 16px; line-height: 40px; border-bottom: 1px solid #eee; color: #484848; font-weight: normal; position: relative; margin-bottom: 10px; }
.htitle:after { content: ""; position: absolute; width: 60px; height: 2px; content: ""; background: #000; left: 0; bottom: 0; -moz-transition: all .5s ease; -webkit-transition: all .5s ease; transition: all .5s ease; }
.htitle:hover:after { width: 80px; }
.hnav { float: right }
.hnav a { display: block; margin-right: 10px; padding-right: 10px; float: left; position: relative }
.hnav a:after { position: relative; content: "/"; right: -10px; bottom: 0; color: #ccc }
.hnav a:last-child::after { content: "" }
.zhuanti ul { overflow: hidden; padding: 1px 0 2px 1px; position: relative; }
.zhuanti ul:before { content: ""; position: absolute; background: #fff; width: 1px; height: 100%; left: 10px }
.zhuanti ul:after { content: ""; position: absolute; background: #fff; width: 100%; height: 0px; bottom: 20px; left: 0; }
.zhuanti li { float: left; width: 20%; border-bottom: #eee 0px solid; border-left: #eee 0px solid; overflow: hidden; padding: 1px 10px 1px 10px; -moz-transition: all .5s ease; -webkit-transition: all .5s ease; transition: all .5s ease; }
.ztpic { width: 100%; height: 190px; overflow: hidden; border-radius: 3px; background: #CCC; display: block }
.ztpic img { display: inline-block; width: 100%; min-height: 100%; height: 185px; vertical-align: middle; transition: all .5s ease-out .1s; }
.zhuanti li b { display: block; width: 100%; overflow: hidden; height: 50px; line-height: 25px; margin: 1px 0; text-overflow: ellipsis; white-space: nowrap; overflow: hidden; background:#F6F6F6;}
.zhuanti li span { color: #999; overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 3; font-size: 14px; height: 62px; }
.readmore { margin: 10px 0 0 0; color: #096; display: block; }
.readmore:before { content: "+"; color: #063 }
.zhuanti li:hover { background: #fff; box-shadow: #ccc 1px 1px 8px; }
.zhuanti li:hover img { transform: scale(1.05) }
.H_title02{ padding:10px 0 0; margin:0; height:36px; line-height:26px; border-bottom:solid 2px #e6e6e6; position:relative; font-size:16px;}
.H_title02 a.more{ display:block; float:right; width:32px; height:36px; background:url(../images/H_h4More.jpg) no-repeat center;}
.H_title02 b{ display:inline-block; height:26px; border-bottom:solid 2px #c2d94e; color:#38957d;}
h4 {
    display: block;
    -webkit-margin-before: 1.33em;
    -webkit-margin-after: 1.33em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}
</style>
			
			<div class="zhuanti whitebg">
      <ul style="padding-top:10px">
				<c:forEach items="${lst}" var="a" varStatus="status">

							<li><i class="ztpic">
							<c:if test="${not empty cat}"> 
							<a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></b>
							</c:if>
							
							
						   <c:if test="${ empty cat}"> 
							<a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${item}/${a.catedirectory}/article_${a.articleid}.${kuo}" target="_blank">${a.articletitle}</a></b>
							</c:if>	
							</li>				
				</c:forEach>
				
			</ul>
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
			<div class="clear"></div>
			
			</div>
			
		</div>
	</div>		
	<div class="clear"></div>
<div class="row" > <%@ include file="/template/kwz/footer.jsp"%>  </div>
	<!-- 全局js -->
	<script src="/template/kwz/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/kwz/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="/template/kwz/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="/template/kwz/kjs/common.js"></script>
</body>
</html>
