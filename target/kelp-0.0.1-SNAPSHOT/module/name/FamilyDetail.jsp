<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational | Full Width</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />

<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layoutnotable.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
 
  
    
 <link rel="stylesheet" href="/module/name/tree/css/jquery.jOrgChart.css"/>
    <script type="text/javascript" src="/module/name/tree/jquery.min.js"></script>
    <script type="text/javascript" src="/module/name/tree/jquery.jOrgChart.js"></script>
    <style>
        a {
            text-decoration: none;
            color: #fff;
            font-size: 12px;
        }
        .jOrgChart .node {
            width: 30px;
            height: 70px;
            line-height: 17px;
            border-radius: 4px;
            margin: 0 8px;
        }
    </style>








</head>
<body onload="prettyPrint();">
<%@ include file="/module/name/common/header.jsp"%> 
<!-- ####################################################################################################### -->
<!--<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="#">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Grand Parent</a></li>
      <li>&#187;</li>
      <li><a href="#">Parent</a></li>
      <li>&#187;</li>
      <li class="current"><a href="#">Child</a></li>
    </ul>
  </div>
</div> -->
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
   
  <!--   <h1>Headline 1 Colour and Size</h1>
    <h2>Headline 2 Colour and Size</h2>
    <h3>Headline 3 Colour and Size</h3>
    <h4>Headline 4 Colour and Size</h4>
    <h5>Headline 5 Colour and Size</h5>
    <h6>Headline 6 Colour and Size</h6>
    <p>This is a W3C compliant free website template from <a href="http://www.cssmoban.com/" title="æ¨¡æ¿ä¹å®¶">ç½ç«æ¨¡æ¿</a>. This template is distributed using a <a href="#">Website Template Licence</a>.</p>
    <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="#">Free Website Templates</a>.</p> -->
  <p>
   
   <!--   
    <c:forEach items="${familylst}" var="a" varStatus="status">
  
    <h5 align="center">姓氏   ：	${a.name}</h5>
    	<div class="form-group"  align="center">
			    <form action="//FindName.do" method="GET">
			       <a href="NameSource.do?nameId=${a.nameid}">姓氏来源：【查看】</a>
					<input type="text"  id="name" name="name" placeholder="请输姓名  " siz="45"> 
					<input type="hidden"  id="nameid" name="nameid" value="${a.nameid}" siz="45">   
					<input type="submit" value="查找" />
					<a href="NamePerson.do?nameId=${a.nameid}">历史名人：【查看】</a>
					<a href="#">共收录:${a.name} 姓名字 ${fn:length(name)}个</a>
					</form>
			</div>
<Br>
           <table width="99%" >
				<tr><td width="30%">想找个--${a.name}-- 姓的名字，</td><td width="30%"> 输入 : ${a.name} </td><td width="40%"> 可以找到所有${a.name}开头的名字。</td></tr>
				<tr><td>想找个--${a.name}一-- 姓的名字，</td><td> 输入 : ${a.name}一 </td><td> 可以找到所有${a.name}一开头的名字。</td></tr>
				<tr><td>想找个-- ${a.name}X瞳 -- 姓的名字，</td><td> 输入 : ${a.name}X瞳 </td><td> 可以找到所有${a.name}姓开头，瞳字结尾的名字。</td></tr>		
			</table>

 -->

					
			
		


 <!-- 
 <table  cellpadding="1" cellspacing="1">
    
        <tbody>
          <tr class="light">
           <td width="25%"></td>	
           <td width="50%">
           	家族介绍：
           <br>  <br>
           ${a.origin} <br>  <br> <br>  <br></td>
           <td width="25%"></td>
          </tr>
   
        </tbody>
      </table>


</c:forEach>
-->



          
              
    
<!--   <div id='jOrgChart'  align="center"></div>   -->
      <div id='jOrgChart'  ></div>    
        


</p> 
   
  </div>
</div>


<%@ include file="/module/name/common/footer.jsp"%> 


<script type='text/javascript'>
    $(function(){
       
        $.ajax({
            url: "/name/FamilyTree.do?id=1",
            type: 'GET',
            dataType: 'JSON',
            data: {action: 'org_select'},
            success: function(result){
                var showlist = $("<ul id='org' style='display:none'></ul>");
                showall(result.data, showlist);
                $("#jOrgChart").append(showlist);
                $("#org").jOrgChart( {
                    chartElement : '#jOrgChart',
                    dragAndDrop : false 
                });

            }
        });
    });

    function showall(menu_list, parent) {
        $.each(menu_list, function(index, val) {
            if(val.childrens.length > 0){

            	
                var li = $("<li></li>");  
                if(val.title=="1"){
                	li.append("<div style='text-align: center;'> <table style='margin: auto;'><tr>  <td style='width: 15px; text-align: center;line-height: 18px;'>    <a href='javascript:void(0)' onclick=getOrgId("+val.id+");>"+val.name+"</a></td></tr></table> </div>").append("<ul></ul>").appendTo(parent);
                }else{
                	li.append("<table ><tr>  <td style='width: 15px; text-align: center;line-height: 18px;'>    <a href='javascript:void(0)' onclick=getOrgId("+val.id+");>"+val.name+"</a></td><td style='width: 15px; text-align: center;line-height: 18px;'>" +" <a >"+val.title+"</a></td> </tr></table>").append("<ul></ul>").appendTo(parent);
                }	
                
                showall(val.childrens, $(li).children().eq(1));
            }else{
            	 
            	if(val.title=="1"){
            		$("<li></li>").append("<div style='text-align: center;'> <table style='margin: auto;'><tr>  <td style='width: 15px; text-align: center;line-height: 18px;'>  <a href='javascript:void(0)' onclick=getOrgId("+val.id+");>"+val.name+"</a></td> </tr></table>  </div>"    ).appendTo(parent); 
            	}else{
            		$("<li></li>").append(" <table ><tr>  <td style='width: 15px; text-align: center;line-height: 18px;'>  <a href='javascript:void(0)' onclick=getOrgId("+val.id+");>"+val.name+"</a></td><td style='width: 15px; text-align: center;line-height: 18px;'>" +" <a >"+val.title+"</a></td> </tr></table>"    ).appendTo(parent); 	
            	}
            	 
            	 
                        
            }
        });

    }

</script>




</body>
</html>
