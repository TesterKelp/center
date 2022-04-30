<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>身在江湖</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="/test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/test/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="/test/css/animate.css" rel="stylesheet">
<link href="/test/css/style.css?v=4.1.0" rel="stylesheet">
<link
	href="/test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
</head>
<body class="gray-bg" onload="getArticle()">
	<%@ include file="/module/common/header.jsp"%>
	<br>
	<br>
	<input type="hidden" class="form-control input-sm" id="keyword"
		value="${keyword}">
	<div class="wrapper wrapper-content">
		<div class="row">
		
		
			
				<div class="mail-box-header">
					<form method="post" action="ArticleSearch.do"
						class="pull-right mail-search">
						<div class="input-group">
							<input type="text" class="form-control input-sm" name="keyword"
								id="keyword" placeholder="搜索标题，正文等">
							<div class="input-group-btn">
								<button type="submit" class="btn btn-sm btn-primary">
									搜索</button>
							</div>
						</div>
					</form>
					<Br>
					<Br>

				</div>
				<div class="mail-box">

					以下是和您搜索： <span style="color: red"> ${keyword} </span> 相关的内容
					<table id="t1" data-toggle="table" data-query-params="queryParams"
						data-mobile-responsive="true" data-width="80%"
						data-pagination="true">
					</table>
				</div>
			
		
		
		
		
		</div>
	</div>
	
	<!-- 全局js -->
	<script src="/test/js/jquery.min.js?v=2.1.4"></script>
	<script src="/test/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/test/js/content.js?v=1.0.0"></script>

	<script src="/test/js/demo/bootstrap-table-demo.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="/test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>




	<script type="text/javascript">
    
    function getArticle(){
    var  keyword=	document.getElementById("keyword").value ;
    var  url =  "/module/share/ArticleSearchRs.do?keyword="+keyword ;
	$('#t1').bootstrapTable('destroy');  
	var $table = $('#t1');
	$table.bootstrapTable({
	url: url , 
	dataType: "json",
	 pageSize: 17,
	      columns: [
{
    title: '序号',
      align: 'center',
      valign: 'middle',
    	  width: '2%',
    		  formatter:function(value,row,index){  
             return index;  
                   } 
    		  
  },
  {
      title: '分享分类',
        field: 'catename',
        align: 'left',
        valign: 'middle',
      	  width: '5%',		  
    },
	              {
	                title: '分享标题',
//	                  field: 'articletitle',
	                  align: 'left',
	                  valign: 'middle',
	                	  width: '73%',
	                	  formatter:function(value,row,index){  
	                		  var c = '<a href="ArticleDetail.do?articleid='+row.articleid+'" >'+row.articletitle+'</a> ';
	                          return c;  
	                      }
	                		  
	              },{
		                title: '分享者',
		                  field: 'username',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%',
		                	  class: 'text-right mail-date'	  
		              },{
			                title: '分享时间',
			                  field: 'creattime',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%',
			                	  class: 'text-right mail-date'	  
			              }
	             
	          ]
	  });

}
    
    
    </script>


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
