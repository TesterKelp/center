<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>免费起名</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
<link rel="stylesheet" href="styles/wxlayout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
</head>
<body>

<!-- ####################################################################################################### -->



<div class="wrapper col4">
  <div id="container" style="min-height:800px">

    	<div class="form-group"  align="center">
			    <form action="WxFindName.do" method="GET">
					<input type="text"  id="name" name="name" placeholder="请输姓名  " siz="45" style="width:200px;  height:30px">  
					<input type="submit" value="免费起名"  style="height:38px" />
					</form>
		</div>
    <Br>
    
            <table width="98%"  style=" font-size:15px" >
				<tr ><td width="22%" style="border:0">模糊起名：</td ><td width="25%" style="border:0">输入 :张   </td> <td width="55%" style="border:0">起名结果：张靓颖 , 张语娜</td></tr>
				<tr><td style="border:0">定字起名：</td><td style="border:0">输入 :张天</td> <td width="60%" style="border:0">起名结果：张天佑 , 张天悦</td></tr>
				<tr><td style="border:0">定字起名：</td><td style="border:0">输入 :张X天 </td> <td width="60%" style="border:0">起名结果：张震天 , 张云天</td></tr>		
			</table>


 <table  cellpadding="1" cellspacing="1"  style=" font-size:24px">
    
        <tbody>
          <tr class="light">
           		<c:forEach items="${name}" var="a" varStatus="status">
						<td align="center"><a> ${a.fullname}</a></td>
						<c:if test="${status.count%4==0&&status.index!=0}">
							
							<c:if test="${status.count/4%2==1}">
							</tr >
							<tr class="dark">
						    </c:if>
							<c:if test="${status.count/4%2==0}">
							</tr >
							<tr class="light">
						    </c:if>
							
							
						</c:if>
					</c:forEach>
          </tr>
   
        </tbody>
      </table>









</p> 
   
  </div>
</div>


</body>
</html>
