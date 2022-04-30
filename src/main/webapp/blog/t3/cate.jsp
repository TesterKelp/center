<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>${member.username}博客--${blogCate.blogcatename }</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="/blog/t3/res/layui/css/layui.css">
  <link rel="stylesheet" href="/blog/t3/res/css/global.css">
</head>
<body>

<div class="header">
  <div class="main">
  
    
    <div class="nav">

             <a href="/blog/${member.userid}.do">首页</a>
    <c:forEach items="${ldt}" var="a" varStatus="status">
							<a href="/blog/${member.userid}/${a.blogcateid}/1.do">${a.blogcatename} </a>
						</c:forEach>

    </div>

  </div>
</div>

<div class="main layui-clear">
  <div class="wrap">
    <div class="content" style="margin-right:0">

    
      <ul class="fly-list">


        
        
        
        
              <c:forEach items="${lst}" var="p">
        <li class="fly-list-li" style="height:120px;">
          <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do" class="fly-list-avatar1" style="float:left">
            <img src="${p.picaddress}"  style="width:200px;height:100px">
          </a>
          <h2 class="fly-tip" style="margin-left:220px;">
            <a href="/blog/${member.userid}/${p.blogcateid}/b_${p.articleid}.do">${p.articletitle} </a>
          </h2>
          <p style="margin-left:220px;word-wrap:break-word">
            <span class="fly-list-hint" style="word-wrap:break-word;white-space:normal; word-break:break-all;overflow:hidden;"> 
              ${p.articleitd}
            </span>
          </p>
        </li>
        		</c:forEach>
        

     
      </ul>

    
      <div style="text-align: center">
        <div class="laypage-main">

     
       
     
     		<c:forEach var="i" begin="1" end="${TotalPage}" step="1">  
                <c:if test="${(pageNum == i)}">  <span class="laypage-curr">${i}</span>   </c:if>  
     			<c:if test="${!(pageNum == i)}">   <a href="/blog/${member.userid}/${blogCate.blogcateid}/${i}.do">${i}</a>    </c:if>  
    		</c:forEach>
             <c:if test="${(pageNum == TotalPage)}">  <a href="/blog/${member.userid}/${blogCate.blogcateid}/${TotalPage}.do" class="laypage-last" title="尾页">尾页</a>  </c:if> 
                <a href="/blog/${member.userid}/${blogcateid}/${pageNum +1}.do" class="laypage-next">下一页</a>
     
     </div>
     
      </div>
      
    </div>
  </div>
</div>

<div class="footer">
  <p>${username}测试博客 2016 &copy; </p>
  <p>

  </p>
</div>
<script src="t3/res/layui/layui.js"></script>
<script>
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: 't3/res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "1.0.0"
  ,base: 't3/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>