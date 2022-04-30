<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>身在江湖</title>
</head>
<body>

 <input type="text" class="form-control" style="width:100%"> 
  <button class="btn btn-primary" type="submit">保存内容</button>  
   ${rt}  
  <hr> 
  ${a}  
  <hr>  
图片：  ${str}
 <hr>  
 <textarea>
${c}
 </textarea>

${c}






</body>
</html>