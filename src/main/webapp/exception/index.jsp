<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>所有的演示例子</h1>
    <h3><a href="${pageContext.request.contextPath }/daodb.do"> 处理dao中数据库异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/daomy.do"> 处理dao中自定义异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/daono.do"> 处理dao未知错误 </a></h3>
    <hr>
    <h3><a href="${pageContext.request.contextPath }/servicedb.do">处理 service中数据库异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/servicemy.do">处理 service中自定义异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/serviceno.do">处理 service未知错误</a></h3>
    <hr>
    <h3><a href="${pageContext.request.contextPath }/db.do">处理 controller中数据库异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/my.do">处理 controller中自定义异常</a></h3>
    <h3><a href="${pageContext.request.contextPath }/no.do">处理 controller未知错误</a></h3>
    <hr>
    <!-- 在 web.xml中配置404 -->
    <h3>
        <a href="${pageContext.request.contextPath }/404.do">404 错误</a>
    </h3>
</body>
</html>