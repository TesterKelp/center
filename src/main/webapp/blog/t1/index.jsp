<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${member.username}博客 </title>
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
                <a href="/blog/${member.userid}.do" title="${member.username}博客" style="color:#fff;font-size:30px;letter-spacing: 2px;margin: 4px 0;">${member.username}博客</a>
            </div>
            <i class="gbar fa fa-bars" aria-hidden="true"></i>
            <ul class="gnav-ul gj-right">
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
                <div class="gj-slide1 gcl-hb">
                    <!--响应式轮播图-->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">


							<c:forEach items="${lst}" var="p" varStatus="status" begin="20"
								end="26" step="1">
								<c:if test="${not empty p.picaddress}">
									<div class="swiper-slide">
										<a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">
											<img src="${p.picaddress}"
											style="width: 748px; height: 299px" alt="${p.articletitle}">
											<p>${p.articletitle}</p>
										</a>
									</div>
								</c:if>
							</c:forEach>




						</div>
                        <div class="swiper-pagination"></div>
                        <!--分页器-->
                        <div class="swiper-button-prev">
                            <!--导航小按钮-->
                            <i class="fa fa-chevron-circle-left fa-2x" aria-hidden="true"></i></div>
                        <div class="swiper-button-next">
                            <!--导航小按钮-->
                            <i class="fa fa-chevron-circle-right fa-2x" aria-hidden="true"></i></div>
                    </div>
                </div>

                <div class="gj-wk gcl-hb">
                    <!--媒体列表-->
                    <div class="gj-bt">
                        <h3><i class="fa fa-list-ul" aria-hidden="true"></i> 最新发布</h3>
                    </div>
                    <div class="gj-body gul-tuw1">
                       				                              
                       				                              
                       				                              
                       				                            
                       				                      <c:forEach items="${lst}" var="p" varStatus="status" begin="1" end="10" step="1">
 	<div class="gtw-ul gclear">
                            <div class="gtw-img">
                                <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><img src="${p.picaddress}" alt="${p.articletitle}"></a>
                            </div>
                            <div class="gtw-body">
                                <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><h4>${p.articletitle}</h4> </a>
                                <p>
                                <c:if test="${fn:length(p.articleitd)>120 }">${ fn:substring( p.articleitd ,0,120)} ...</c:if>
        						<c:if test="${fn:length(p.articleitd)<=120 }">${p.articleitd }</c:if>
                                </p>
                                <div class="gtw-sx">
                                    <i class="fa fa-plus-square" aria-hidden="true"> 原创</i>
                                    <i class="fa fa-clock-o" aria-hidden="true"> ${p.creattime}</i>
                               
                                </div>
                            </div>
                        </div>
				</c:forEach>                          
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                              
                       				                     
                                               
                                                
                                  
                                                
                    </div>
                    <!--gul-tuw1-结束-->
                  
                </div>

                   </div>
            <div class="gj-lg-4">
           
    <div class="gj-wk gcl-hb hidd-sm hidd-md">
    <div class="gj-bt">
        <h3><i class="fa fa-user-circle-o" aria-hidden="true"></i> 会员信息</h3>
      </div>
      
    <div class="gj-body gj-user">
    <c:if test="${islogin == 0}">
        <form >
        <table cellpadding="0" cellspciong="1">
            <div class="div1"> <i class="fa fa-user" aria-hidden="true"></i>
            <input type="text" required="" id="j_username" value="" placeholder="请输入用户名">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <input type="password" required="" id="j_password" value="" placeholder="请输入密码">
          </div>
            <div class="div2"> 
            <button type="button" name="dosubmit"   onclick="bloglogin()"  value="登 录">立即登录</button>
          </div>
           </table>
      </form>
      </c:if>

						<c:if test="${islogin == 1}">
							<table cellpadding="0" cellspciong="1">
								<div class="div1">
									<a href="/module/usercenter/personinfo.jsp">进入 用户中心 </a>
								</div>

							</table>
						</c:if>








					</div>

  </div>
   
    <div class="gj-wk gcl-hb"> 
    <!--侧栏-图文列表-->
    <div class="gj-bt">
        <h3><i class="fa fa-thumbs-up" aria-hidden="true"></i> 博主推荐</h3>
      </div>
      
      
      
         	<c:forEach items="${topiclist}" var="t">
					  <div class="gj-body gli-tuw1">
        <div class="gtw-li gclear">
        <div class="gtw-img gj-left"> <a href="/${t.item_directorie}/topiccover_${t.topicid}.do"><img src="${t.topicimage}" alt=""></a> </div>
        <div class="gtw-body"> <a href="/${t.item_directorie}/topiccover_${t.topicid}.do">
            <h4>${t.topicintro}</h4>
          </a></div>
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
    <script>
        //轮播图
        var mySwiper = new Swiper('.swiper-container', {
            loop: true, //循环切换
            autoplay: true, //自动切换

            autoplay: {
                disableOnInteraction: false,
            },

            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

        })
    </script>
    <!--GJ-UI组件模块js代码结束-->
    
    
    
    
    <script> 
    
    function bloglogin(){
    	
    	
    	
	    var	j_username  =  $("#j_username").val()  ;
	    var j_password  =  $("#j_password").val()  ;
	    var rememberMe  = false ;
	    $.ajax({
			type : "POST",
			url : "/module/usercenter/userlogin.do",
			data: {j_username: j_username ,j_password: j_password ,rememberMe: rememberMe },
			async : false,
			dataType : "text",
			success : function(data) {
				if(data==1){
					 location.reload()    ;
				}else{
					alert("登录失败");
				}
			}
		});
    	
    	
    	
    	
    	
    	
    	
    	
    	
    }
    
    
    </script> 
    
    
    
    
    
    
    
    
    
</body>

</html>