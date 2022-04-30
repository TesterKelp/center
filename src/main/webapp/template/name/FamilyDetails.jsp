<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>家族排辈_家族辈分关系_家族宗祠</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">


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

<body class="gray-bg"  onload="prettyPrint();">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >
						<br>
						<div class="text-center article-title">
							<h2> <b> ${title} </b></h2>
												
												
													  <div id='jOrgChart'   align="center"></div>  
							
							 
							
							
							
						</div>
					
					
					</div>
				</div>
			
		</div>

	</div>



	<%@ include file="/module/common/footer.jsp"%> 



	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/template/name/kjs/common.js"></script>

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
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>

</html>