<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${member.username}博客--${blogCate.blogcatename }</title>
     <!--引入Font Awesome字体库样式表-->
    <link rel="stylesheet" href="/blog/t1/static/css/font-awesome.min.css">
    <!--引入guojian.min.css组件样式表-->
    <link rel="stylesheet" href="/blog/t1/static/css/guojian.min.css">
    <!--引入style.css自定义样式表-->
    <link rel="stylesheet" href="/blog/t1/static/css/style.css">
    <!--引入jquery.min.js组件脚本-->
    <script src="/blog/t1/static/js/jquery-1.12.4.min.js" type="text/javascript"></script>
    <style type="text/css">
        body {background-image:none;}
		.gj-content .gj-cont pre, .gj-zp-cont .gj-cont pre {padding: 10px;background-color: #f5f5f5;border-radius: 5px;}
	</style>
</head>

<body>

    <!--GJ-UI组件模块html代码开始-->
    <nav class="gj-nav1 gcl-yh">
        <!--响应式导航栏-->
        <div class="gnav gclear">
            <div class="gj-logo gj-left">
                <a href="/blog/${member.userid}.do" style="color:#fff;font-size:30px;letter-spacing: 2px;margin: 4px 0;">${member.username}博客</a>
            </div>
            <i class="gbar fa fa-bars" aria-hidden="true"></i>
            <ul class="gnav-ul gj-right" >
              <li class="gxz"><a href="/blog/${member.userid}.do"><i class="fa fa-home" aria-hidden="true"></i>首页</a></li>
			<c:forEach items="${ldt}" var="a" varStatus="status">
				<li><a
					href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename}</a>
				</li>
			</c:forEach>
				
        </ul>
        </div>
    </nav>    <div class="gcont">
        <div class="row">
            <div class="gj-lg-8">

                <div class="gj-wk gcl-hb">
                    <nav class="gj-ljdh" >
                        <!--路径导航模块-->
                        <i class="fa fa-home" aria-hidden="true"></i>
                       <a href="/blog/${member.userid}.do">首页</a> &gt; <a href="#
                       " title="知识干货">${blogcatename}</a>                    </nav>
                    <div class="gj-body gul-tuw1" style="min-height:800px">



						<c:forEach items="${lst}" var="p">
							<div class="gtw-ul gclear">
								<div class="gtw-img">
									<a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><img
										src="${p.picaddress}" alt="${p.articletitle}"></a>
								</div>
								<div class="gtw-body">
									<a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">
										<h4>${p.articletitle}</h4>
									</a>
									<p  style = "word-break: break-word;" >
										<c:if test="${fn:length(p.articleitd)>120 }">${ fn:substring( p.articleitd ,0,120)} ...</c:if>
										<c:if test="${fn:length(p.articleitd)<=120 }">${p.articleitd }</c:if>
									</p>
									<div class="gtw-sx">
										<a href="init1.html"><i class="fa fa-user">
												${p.username}</i></a> <i class="fa fa-clock-o"> ${p.creattime}</i> 
									</div>
								</div>
							</div>
						</c:forEach>




















					</div>
                    <!--gul-tuw1-结束-->
                    
                    
                      <nav class="gj-page"><span class="pageinfo">共<strong>${TotalPage}</strong>页<strong>${TotalRecord}</strong>条记录</span>
                      
                      <a href="/blog/${member.userid}/${blogCate.blogcateid}/1.do" class="homepage">首页</a>
                      <c:if test="${!(pageNum == 1)}">     
                    <a href="/blog/${member.userid}/${blogCate.blogcateid}/${(pageNum -1)}.do" class="nopage">上一页</a>
                        </c:if>
                      
                      
              <c:forEach var="i" begin="1" end="${TotalPage}" step="1">   
                <c:if test="${pageNum == i}">     
                     <a href="/blog/${member.userid}/${blogCate.blogcateid}/${i}.do" class="listpage curpage">${i}</a>
                 </c:if>   
                  <c:if test="${!(pageNum == i)}">     
                     <a href="/blog/${member.userid}/${blogCate.blogcateid}/${i}.do" class="listpage">${i}</a>
                 </c:if> 
    		  </c:forEach> 
              <c:if test="${!(pageNum == pages)}">     
                   <a href="/blog/${member.userid}/${blogCate.blogcateid}/${(pageNum +1)}.do" class="nopage">下一页</a>
              </c:if>
                    <a href="/blog/${member.userid}/${blogCate.blogcateid}/${TotalPage}.do" class="endpage">尾页</a>   
                      
                      
                      
                      </nav>
                 
                    <!--nav-结束-->
                </div>

                
                <div class="gj-wk gcl-hb hidd"> 
    <!--媒体列表-->
   
    
    <!--gj-body-结束--> 
</div>            </div>
            <div class="gj-lg-4">
   
    
    <div class="gj-wk gcl-hb"> 
    <!--侧栏-图文列表-->
    <div class="gj-bt">
        <h3><i class="fa fa-thumbs-up" aria-hidden="true"></i> 博主推荐</h3>
      </div>
          

        
        <c:forEach items="${cl}" var="p"  begin="1" end="28" step="1" >
							     <div class="gj-body gli-tuw1">
      <div class="gtw-li gclear">
      <div class="gtw-img gj-left"> <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><img src="${p.picaddress}" style="max-height:77px" alt=""></a> </div>
        <div class="gtw-body"> <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><h4>${p.articletitle}</h4> 
        </a> <span><i class="fa fa-clock-o"> ${p.creattime}</i></span> </div>
      </div>
      </div>
						</c:forEach>
        
        
    
        
        
        
        
        
        
        
        
        
        
       
        </div>
  

            </div>
        </div>
    </div>


<div class="hidd-xs gcl-yh" style="border: 0">
        <!--返回顶部-->
        <a class="gj-top" style="z-index: 1030;"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
    </div>

    <footer class="gcl-yh">
        <!--footer底部-->
        <div class="gj-footer">
            <p>Copyright © 2028. ${member.username}博客 </p>
        </div>
    </footer>
    <!--GJ-UI组件模块html代码结束-->



    <!--引入guojian.min.js组件脚本-->
    <script src="/blog/t1/static/js/guojian.min.js" type="text/javascript"></script>

    <!--GJ-UI组件模块js代码开始-->
    <script>
        /*GJ-UI响应式导航栏*/
        $(document).ready(function() {
            $(".gbar").click(function() {
                $(".gnav-ul").slideToggle("slow");
                return false
            })
        });
    </script>
    <script>
        /*返回顶部开始*/
        jQuery(function($) {
            $('.gj-top').toTop({
                autohide: true,
                offset: 320,
                speed: 500,
                right: 15,
                bottom: 15
            })
        });
    </script>
</body>

</html>