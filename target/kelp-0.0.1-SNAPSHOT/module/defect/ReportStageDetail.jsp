<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
<script src="../../test/js/ichart.1.2.1.src.js"></script>
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<script src="../../test/js/plugins/iCheck/icheck.min.js"></script>
</head>
<body class="gray-bg">
	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo>
		</div>
	</div>
	<br>
	<br>

	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
							
								<div class="text-center article-title">
									<h1>${reportname}</h1>
								</div>
								<br> 
								报告说明：
								<Br>
								所属项目：  ${projectname} <br>
								开始时间：     ${bstime}  <br>
							    结束时间：     ${betime}
								<hr>

								<table align=center>
									<c:forEach items="${moduleList }" var="a">
										<tr>
											<td>
												<div id='${a.divv}'></div>
												<br>
											</td>
											<td><input type="hidden" value="${a.picid}" id="picid"
												name="picid" class="form-control"> <input
												type="hidden" value="${a.divv}" id="divv" name="divv"
												class="form-control"> <input type="hidden"
												value="${a.ptype}" id="ptype" name="ptype"
												class="form-control"> <input type="hidden"
												value="${a.source}" id="ptype" name="source"
												class="form-control"> <input type="hidden"
												value="${a.title}" id="title" name="title"
												class="form-control"> <input type="hidden"
												value="${a.pwidth}" id="pwidth" name="pwidth"
												class="form-control"> <input type="hidden"
												value="${a.pheight}" id="pheight" name="pheight"
												class="form-control"> <c:if test="${a.ptype==1}">
													<input type="hidden" value="${a.sscale}" id="sscale"
														name="sscale" class="form-control">
													<input type="hidden" value="${a.escale}" id="escale"
														name="escale" class="form-control">
													<input type="hidden" value="${a.sspace}" id="sspace"
														name="sspace" class="form-control">
													<input type="hidden" value="${a.pheight}"
														class="form-control" placeholder="设置刻度单位 ">
												</c:if> <c:if test="${a.ptype==0}">
													<input type="hidden" value="${a.sscale}" id="sscale"
														name="sscale" class="form-control">
													<input type="hidden" value="${a.escale}" id="escale"
														name="escale" class="form-control">
													<input type="hidden" value="${a.sspace}" id="sspace"
														name="sspace" class="form-control">
													<input type="hidden" value="${a.pheight}"
														class="form-control" placeholder="设置刻度单位 ">
												</c:if></td>
										</tr>
									</c:forEach>
								</table>



<input type="hidden"  id="reportid"    value="${reportid}"
														class="form-control" placeholder="设置刻度单位 ">





								<!--  



								<Br> 
                       3. <hr>  创建者统计
                        select COUNT(createuserid),(SELECT realname  from admin_user  where  admin_user.userid =  defect_bug.createuserid) , createuserid from defect_bug   GROUP BY  createuserid
                        
                       <Br> 
                       4.<hr>  按严重程度分类
                       select COUNT(severity), severity from defect_bug   GROUP BY  severity 
                        
                       <Br> 
                       5.<hr>  按优先级分类
                       select COUNT(priority ), priority  from defect_bug   GROUP BY  priority           
-->
							</div>
						</div>
						<!-- End Example Events -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other -->
	</div>


	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<!--  <script src="js/defectlist.js"></script> -->
	<!-- Bootstrap table -->

	<script src="js/reportdetail.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>














</body>

</html>
