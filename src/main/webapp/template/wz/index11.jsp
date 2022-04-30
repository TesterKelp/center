<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>测试攻城狮--kelp测试平台--www.004.la</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<link href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
</head>
<body class="gray-bg" onload="getCate()">
	<%@ include file="/template/wz/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content">
		<div class="row">
			<div class="ibox-content" style="min-height: 800px;"   >  
				<div class="mail-box-header">
					<form method="post" action="/module/share/ArticleSearch.do"
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
					<Br> <Br>

					</div>



					<table id="t2"  data-toggle="table"   class="table table-hover"  style="table-layout:fixed">
						<Tr>
							<th
								style="text-align: center; vertical-align: middle; width: 5%;"
								data-field="operationid" tabindex="0"><div
									class="th-inner ">序号</div></th>
							<th
								style="text-align: center; vertical-align: middle; width: 10%;"
								data-field="operationid" tabindex="1"><div
									class="th-inner ">分享主题</div></th>
							<th
								style="text-align: center; vertical-align: middle; width: 65%;"
								data-field="operationid" tabindex="2"><div
									class="th-inner ">分享标题</div></th>
							<th
								style="text-align: center; vertical-align: middle; width: 10%;"
								data-field="operationid" tabindex="3"><div
									class="th-inner ">分享者</div></th>
							<th
								style="text-align: center; vertical-align: middle; width: 10%;"
								data-field="operationid" tabindex="4"><div
									class="th-inner ">分享日期</div></th>
						</Tr>




						<c:forEach items="${clst}" var="a" varStatus="status">
<tr data-index="${ status.index}">
<td style="text-align: center; vertical-align: middle; width: 5%; ">${ status.index + 1}</td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">${a.catename }</td>
<td style="text-align: left; vertical-align: middle; width: 65%; ">    <a href="/${a.item_directorie}/${a.catedirectory}/article_${a.articleid}.${kuo}" >${a.articletitle }</a>          </td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">  <a href="/wz/TestDetail.do?articleid=${a.articleid }" > ${a.username }</a> </td>
<td style="text-align: center; vertical-align: middle; width: 10%; ">  ${a.creattime } </td>
</tr>
					
</c:forEach>			
		</table>
				
			</div>
		</div>
	</div>
	<%@ include file="/template/wz/footer.jsp"%> 
	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>

	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>
	<script src="../../test/js/demo/bootstrap-table-demo.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

	<!-- iCheck -->
	<script src="../../test/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
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


<script type="text/javascript"> 
window.onload=function(){ 
$('div.fixed-table-header').css('display', 'none');
} 
</script>


</body>
</html>
