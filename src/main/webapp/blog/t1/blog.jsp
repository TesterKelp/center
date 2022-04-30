<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${member.username}博客_${article.articletitle}_${blogCate.blogcatename}</title>
    <!--引入Font Awesome字体库样式表-->
    <link rel="stylesheet" href="/blog/t1/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/blog/t1/static/css/guojian.min.css">
    <link rel="stylesheet" href="/blog/t1/static/css/style.css">
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
                    <!--内容页模块-->
                    <nav class="gj-ljdh">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="/blog/${member.userid}.do">首页</a> &gt; ${blogCate.blogcatename}                    </nav>
                    <div class="gj-body gj-content" style="min-height:800px">
                        <div class="gj-title">
                            <h3>${article.articletitle}</h3>
                            <span>发布时间：${article.creattime}</span>
                            <span class="hidden-xs">作者：${member.username}</span>
                            
                      
                        </div>
                        <div class="gj-cont" style=" word-break: break-word;"><p>
                         ${article.articlecontent} </p></li></ul></div>
                     
                    </div>
                </div>

                

                <div class="gj-wk gcl-hb">
                    <div class="gj-bt">
                        <h3><i class="fa fa-commenting" aria-hidden="true"></i> 评论区</h3>
                    </div>
                    <div class="gj-body gj-pl">
                        <div class="comment">
                        <div class="com_form">
                               
                                <input type="hidden" id="articleid" value="${article.articleid}">
                                <input type="hidden" id="userid" value="${member.userid }">
                                <textarea  id="content" name="content"  style="width:100%;height:120px"  class="textarea textarea2" placeholder="朕有话要说~"></textarea>
                                <p><input type="button"   onclick="saveComment()"  class="sub_btn" name="dosubmit" value="提交"></p>
                           
                        </div>
                      </div>
                    </div>
                    <div class="gpl-bt">
                         评论
                    </div>
                    <ul class="gpl-ul">
                                           
                                         
         <c:forEach items="${ct}" var="p" varStatus="status" >
                   <li>
                            <div class="gpl-user">
                                <a href="/blog/${p.userid}.do" target="_blank"><img class="gpl-tx" src="${p.useravatar}" alt=""></a>
                                <a href="/blog/${p.userid}.do" target="_blank">
                                <h4 id=>${p.username }</h4>
                            </a>
         				</div>
         				<p class="gpl-cont"><span class="original_comment" id="re_${p.commentid}"> ${p.content }</span></p>
         	<!--  当前登录用户 回复  -->
         				 <div class="gpl-list">
                                <p><span>${p.commenttime} </span> <!--  <a href="javascript:toreply('${p.commentid}');">回复</a>  --> </p>
                                <div id="rep_${p.commentid}" class="none">
                                 
                                    <textarea name="content" id="${p.commentid}" placeholder="我来说两句~"  class="textarea textarea2" ></textarea>
                                    <input type="button" class="sub_btn static"  onclick="replyto('${name}','${p.username}','${p.commentid}')"  value="提交">
                                
                                </div>
                            </div>
         				
                 </li> 
         </c:forEach>      
                                           
                                           
                   
                                 
                                             </ul>
                </div>

            </div>
            <div class="gj-lg-4">
             
   
  
    <div class="gj-wk gcl-hb"> 
    <!--侧栏-图文列表-->
    <div class="gj-bt">
        <h3><i class="fa fa-thumbs-up" aria-hidden="true"></i> 博主推荐</h3>
      </div>
            
      
      
      
      
      <c:forEach items="${lst}" var="p" varStatus="status" begin="1" end="10" step="1">
          <div class="gj-body gli-tuw1">
        <div class="gtw-li gclear">
         <div class="gtw-img gj-left"> <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do"><img src="${p.picaddress}" alt=""></a> </div>
        <div class="gtw-body"> <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">
            <h4>${p.articletitle}</h4>
          </a> <span><i class="fa fa-clock-o"> ${p.creattime}</i></span> <span><i class="fa fa-eye"> </i></span></div>
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
            <p>Copyright © 2028. ${username}博客 </p>
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
    </script>    <script type="text/javascript" src="/blog/t1/static/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="/blog/t1/static/js/js.js"></script>
    <script type="text/javascript" src="/blog/t1/static/js/jquery.qqFace.js"></script>
  
  
  
  
  
  
  
  <script>
  
  function saveComment(){
    	var  articleid=	document.getElementById("articleid").value ;
    	var  userid=	document.getElementById("userid").value ;
    	 var content = document.getElementById("content").value ;
    if(content.trim() ==""){
 			alert("还未输入评论内容！！");	
 			}else{
 		$.ajax({
    		type : "POST",
    		url : "/module/share/SaveComment.do",
    		data: {articleid: articleid,content:content},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			if(data=="ok"){
    				 location.reload()    ;
    			}
    			else if (data=="login"){
    				alert("请登录，在进行评论");
    					window.location.href="/module/usercenter/login.jsp";
    			}
    			
    		}
    	});
  
 	 }
  }
  
  
  
  
  function replyto(nowuser,user,id){
	  var  articleid=	document.getElementById("articleid").value ;
  	  var  userid=	    document.getElementById("userid").value ;
  	  var content =      document.getElementById(id).value ;
  	 
	    
	    //alert(content); 
	    
	    if(content.trim() ==""){
 			alert("还未输入评论内容！！");	
 			}else{
 				
 		content = nowuser +" 对  "+user+"  说:  "+content ;		
 		$.ajax({
    		type : "POST",
    		url : "/module/share/SaveComment.do",
    		data: {articleid: articleid,content:content},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			if(data=="ok"){
    				location.reload() ;
    			//	window.location.href="Content.do?userid="+userid+"&&blogid="+articleid; 
    			}
    			else if (data=="login"){
    				alert("请登录，在进行评论");
    					window.location.href="/module/usercenter/login.jsp";
    			}
    			
    		}
    	});
  
 	 }
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
  }
  
  
  
  
  
  
  
  
 </script>
  
  
  
  
  
  
</body>

</html>