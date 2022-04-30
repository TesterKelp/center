<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta content="text/html; charset=utf-8">


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${site.sitename}</title>
<meta content="${site.keyword}" name="Keywords">
<meta name="description" content="${site.depict}" />
    <link href="/template/kwz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/kwz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="/template/kwz/css/animate.css" rel="stylesheet">
    <link href="/template/kwz/css/defect.css" rel="stylesheet">
    <link href="/template/kwz/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="/template/kwz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="/template/kwz/list/css/css_whir.css" rel="stylesheet" type="text/css" /> <!-- 列表css -->
    <link rel="stylesheet" type="text/css" href="/template/kwz/55/css/blue/index.css"/>
    <link rel="stylesheet" type="text/css" href="/template/kwz/55/css/blue/common.css"/>

<script type="text/javascript" src="/template/kwz/2/js/jquery.js"></script>

    <link href="/default/css/style.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="/default/css/blue/common.css"/>
	<link rel="stylesheet" type="text/css" href="/default/css/blue/xxcon.css"/>




    </head>
    <body>


<div id="defect" > 
	<div class="defect_top"  id="menu" >

	      <a href="/index.do">首页</a> <c:if test="${site.singleitem =='100'}">  <a href="/${m.item_directorie}/portal.do">${m.item_name}  </a></c:if>
			 <c:forEach items="${ltt}" var="aa" varStatus="status">
			<a href="/${aa.item_directorie}/portal.do">${aa.item_name}</a>
			</c:forEach> 
	</div>
 </div>


 


        <div class="cation-content">
            <div style="height:50px"></div> <!-- 可以删除 -->
            <div class="cation-middle">
               
               <!-- 
                <dl class="cation-list">
                    <dt>软件测试</dt>
                    <dd>
                        <a href="#" rel="" name="mode" class="all on">全部</a>
                        <a href="#" rel="服装鞋包" name="mode" class="default">测试基础</a>
                        <a href="#" rel="家电数码" name="mode" class="default">自动化</a>
                        <a href="#" rel="童装母婴" name="mode" class="default">童装母婴</a>
                    </dd>
                </dl>

                 -->
                
                <c:forEach items="${ltt}" var="aa" varStatus="status">
               
                <dl class="cation-list">
                    <dt> ${aa.item_name} </dt>
                    <dd>
                       <a href="/${aa.item_directorie}/portal.do" rel="" name="price" class="all on">全部</a>
                       <c:forEach items="${lst}" var="a" varStatus="status">
                        <c:if test="${a.catetype == '5'  or  a.catetype == '9' }"> 
                         <c:if test="${aa.item_id == a.itemid }">
                        <a href="/${aa.item_directorie}/${a.catedirectory}/index.do" rel="2000 - 6000" name="price" class="default">${a.catename}</a>
                       </c:if>
                        </c:if>
                        </c:forEach> 
    
                    </dd>
                </dl>
                
                
                
                </c:forEach> 
                
                
                
                
                
                
                
                
                
            </div>
        </div>


        <script type="text/javascript">
            $(function(){
                new SelectTag({
                    child : ".default", //所有默认
                    over : 'on', //当前选中
                    all : ".all" // 默认全部
                });
            })
        </script>



<div class="col-lg-12">	  		
			
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
.ztpic { width: 100%; height: 150px; overflow: hidden; border-radius: 3px; background: #CCC; display: block }
.ztpic img { display: inline-block; width: 100%; min-height: 100%; height: auto; vertical-align: middle; transition: all .5s ease-out .1s; }
.zhuanti li b { display: block; width: 100%; overflow: hidden; height: 25px; line-height: 25px; margin: 1px 0; text-overflow: ellipsis; white-space: nowrap; overflow: hidden; }
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
			
	<div class="zhuanti ">
    <!--   <h4 class="H_title02"><b>笑笑图</b></h4> -->  
      <ul style="padding-top:10px">
				
			
							<c:set var="index" value="1" />
				<c:forEach items="${rlst}" var="a" varStatus="status">
					<c:if test="${not empty a.picaddress}">
					
						<c:if test="${a.articletype=='6' and index<'15'}">
							<li><i class="ztpic">
							
							<c:if test="${a.pdir == a.item_directorie}">  
							<a href="/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></b>
							</c:if>
							
							
							<c:if test="${a.pdir != a.item_directorie}">  
							<a href="/${a.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">
							<img src="${a.picaddress}"></a></i> 
							<b align="center"><a href="/${a.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></b>
							</c:if>
							
							
							</li>
							<c:set var="index" value="${index+1}" />
						</c:if>
					</c:if>
				</c:forEach>
			
			
			</ul>
    </div>
</div>	

<hr>

<div class="col-lg-9" >	

<!--  
      <div class="xq3"  style="margin-top:0px;">
         <h2 style="margin-top:0px;border: 0px solid #ddd;"><span>详细内容</span></h2> 
         <div class="xq3nr">
         <p>核心提示：</p>
时值纪念中国人民抗日暨世界反法引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来，记者深入太行山，了解了先辈们的英雄壮举。人民抗日暨世界反法西斯战争胜利70周年之际，重革命历史题材电视剧《太行山上》于8月4日强势登陆央视综合频道黄金时段，随即引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来。立刻把观众带进战火纷飞的峥嵘岁月。连日来，记者深入太行山，了解了先辈们的英雄壮举。人民抗日暨世界反法西斯战争胜利70周年之际，重大革命历史题材电视剧《太行山上》于8月4日强势登陆央视综合频道黄金时段，随即引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来。
         </div>
      </div>
  -->    
      
      
<c:set var="k" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${k<17}">

    
    <c:if test="${a.pdir == a.item_directorie}">  
    <a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.do" > 
    </c:if>
    
    <c:if test="${a.pdir != a.item_directorie}">  
    <a href="/${a.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" > 
    </c:if>
    
       <div class="xq3"  style="margin-top:0px;">
         <h2 style="margin-top:0px;border: 0px solid #ddd;"><span>${a.articletitle}</span></h2> 
         <div class="xq3nr">
         <p>核心提示：</p>${  a.articleitd }</div>
      </div>
       </a>
<br>
<c:set var="k" value="${k+1}" />
</c:if>
</c:forEach>
      
      
      
      
      
      
      <!-- 
     <div class="xq3"  >
         <h2 style="margin-top:0px;border: 0px solid #ddd;"><span>详细内容</span></h2> 
         <div class="xq3nr">
         <p>核心提示：</p>
时值纪念中国人民抗日暨世界反法西斯战争胜利首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来，记者深入太行山，了解了先辈们的英雄壮举。人民抗日暨世界反法西斯战争胜利70周年之际，重大革命历史题材电视剧《太行山上》于8月4日强势登陆央视综合频道黄金时段，随即引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来，记者深入太行山，了解了先辈们的英雄壮举。人民抗日暨世界反法西斯战争胜利70周年之际，重革命历史题材电视剧《太行山上》于8月4日强势登陆央视综合频道黄金时段，随即引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来。立刻把观众带进战火纷飞的峥嵘岁月。连日来，记者深入太行山，了解了先辈们的英雄壮举。人民抗日暨世界反法西斯战争胜利70周年之际，重大革命历史题材电视剧《太行山上》于8月4日强势登陆央视综合频道黄金时段，随即引发观众追剧热潮，反响强烈。一幅幅精彩震撼的战争画面，一首首荡气回肠的英雄史诗，电视剧《太行山上》立刻把观众带进战火纷飞的峥嵘岁月。连日来。
         </div>
      </div>
       -->
      
         
      
      
      
      
</div>


<div class="col-lg-3" style="padding-top:0px;">	 </div>


<div class="cright" style="margin-top:0px;">
<div class="cright1">
        <h4 style="margin-top:0px;"><span>相似新闻</span></h4>
        <ul>

           <c:set var="kk" value="1" />
<c:forEach items="${clst}" var="a" varStatus="status">
<c:if test="${kk<17}">
       
           <c:if test="${a.pdir == a.item_directorie}">  
   <li> <a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.do" > ${a.articletitle}</a></li>
    </c:if>
    
    <c:if test="${a.pdir != a.item_directorie}">  
   <li> <a href="/${a.item_directorie}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" >${a.articletitle} </a></li>
    </c:if>
       
<c:set var="kk" value="${kk+1}" />
</c:if>
</c:forEach>
           
           
           
           
           
           
           
        </ul>
     </div>
</div>


<div style="clear:both"></div> 
<div class="row" > <%@ include file="/template/kwz/footer.jsp"%>  </div>






<script type="text/javascript">

$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
	}
});	

</script>


    </body>
</html>
