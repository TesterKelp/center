
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>身在江湖之_${m.item_name}_${c.catename}_主页</title>
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/template/wz/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/template/wz/css/font-awesome.css?v=4.4.0" rel="stylesheet">
   <!--  <link href="/template/wz/css/animate.css" rel="stylesheet"> --> 
    <link href="/template/wz/css/defect.css" rel="stylesheet">
    <link href="/template/wz/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="/template/wz/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="/template/wz/55/css/blue/index.css"/>
    <link rel="stylesheet" type="text/css" href="/template/wz/55/css/blue/common.css"/>
    <link rel="stylesheet" type="text/css" href="/template/wz/top/style.css"/>
</head>
<body class="gray-bg">




<style type="text/css">

.box h5,  {
    color: #333;
    height: 35px;
    line-height: 40px;
    overflow: hidden;
    padding-left: 15px;
}
.lmtj {
    padding: 5px 15px 0 15px;
}

.box dl {
    margin: 0;
    word-wrap: break-word;
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}

.box ul, li{
	list-style: none;
    margin: 0;
    padding: 0;
    word-wrap: break-word;
}
.box h5.title-2, .box h6.title-2 {
    background-position: right -100px;
    height: 35px;
    padding-left: 16px;
    padding-top:20px ;
}
.box .digg li {
    background: url("/template/name/love/li1.gif") no-repeat left 8px;
    padding-left: 16px;
    height: 28px;
    line-height: 28px;
    overflow: hidden;
    position: relative;
}
.box a {
    text-decoration: none;
    color: #555;
    font-size: 13px;
    -webkit-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
}
</style>




<%@ include file="/template/wz/htmlheader.jsp"%>

            <div class="wrapper ">
                       <div class="ibox-content" style="min-height: 800px;width:1280px; margin:0 auto; ">

					

<div class="col-lg-9">
			

					<c:forEach items="${mList}" var="aa" varStatus="sta">
						<c:set var="index" value="1" />
						<div class="col-sm-6">
							<div class="cont3c">
								<h2>
									<div class="left">
										<span>${aa.catename}</span>
									</div>
									<a href="/${item}/${cate}/${aa.catedirectory}/list_1.${kuo}"
										class="more">更多+</a>
								</h2>
								<div class="cot3nr">
									<ul>
										<c:forEach items="${clst}" var="a" varStatus="status">
											<c:if test="${index<11}">
												<c:if test="${aa.catename == a.catename }">
													<li><a href="/${item}/${cate}/${a.catedirectory}/article_${a.articleid}.${kuo}">${a.articletitle}</a><span>${a.creattime}</span></li>

													<c:set var="index" value="${index+1}" />
												</c:if>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>



					
</div>

<div class="col-lg-3">
  <div class="box">
            <h5 class="title-2">热门排行</h5>
            <dl class="digg lmtj">
                 	  	<c:forEach items="${clst}" var="a" varStatus="status" begin="1" end="25" step="1">
                 	
                 	 <c:if test="${item != a.pdir}">
                 	<ul><li><a href="/${item}/${a.pdir}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>
                 	<c:if test="${item == a.pdir}">
                 	<ul><li><a href="/${item}/${a.catedirectory}/article_${a.articleid}.do" target="_blank">${a.articletitle}</a></li></ul> 
                 	</c:if>
                 	        
       			    </c:forEach>  
       			    
       			    
       			    
			</dl>
 	</div>
</div>

<div  style="clear:both"></div>
                               
                            </div>
                    </div>
              
        
 
<%@ include file="/template/wz/footer.jsp"%> 


    <!-- 全局js -->
    <script src="/template/wz/js/jquery.min.js?v=2.1.4"></script>
    <script src="/template/wz/js/bootstrap.min.js?v=3.3.6"></script>



    <!-- 自定义js -->
    <script src="/template/wz/js/content.js?v=1.0.0"></script>


    <!-- Flot -->
    <script src="/template/wz/js/plugins/flot/jquery.flot.js"></script>
    <script src="/template/wz/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="/template/wz/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="/template/wz/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="/template/wz/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Peity demo -->
    <script src="/template/wz/js/demo/peity-demo.js"></script>
	<script src="/template/wz/kjs/common.js"></script>

    <script>
        $(document).ready(function () {


            var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
            var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];

            var data1 = [
                {
                    label: "数据1",
                    data: d1,
                    color: '#17a084'
                },
                {
                    label: "数据2",
                    data: d2,
                    color: '#127e68'
                }
            ];
            $.plot($("#flot-chart1"), data1, {
                xaxis: {
                    tickDecimals: 0
                },
                series: {
                    lines: {
                        show: true,
                        fill: true,
                        fillColor: {
                            colors: [{
                                opacity: 1
                            }, {
                                opacity: 1
                            }]
                        },
                    },
                    points: {
                        width: 0.1,
                        show: false
                    },
                },
                grid: {
                    show: false,
                    borderWidth: 0
                },
                legend: {
                    show: false,
                }
            });

            var lineData = {
                labels: ["一月", "二月", "三月", "四月", "五月", "六月", "七月"],
                datasets: [
                    {
                        label: "示例数据",
                        fillColor: "rgba(220,220,220,0.5)",
                        strokeColor: "rgba(220,220,220,1)",
                        pointColor: "rgba(220,220,220,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(220,220,220,1)",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    },
                    {
                        label: "示例数据",
                        fillColor: "rgba(26,179,148,0.5)",
                        strokeColor: "rgba(26,179,148,0.7)",
                        pointColor: "rgba(26,179,148,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(26,179,148,1)",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    }
                ]
            };

            var lineOptions = {
                scaleShowGridLines: true,
                scaleGridLineColor: "rgba(0,0,0,.05)",
                scaleGridLineWidth: 1,
                bezierCurve: true,
                bezierCurveTension: 0.4,
                pointDot: true,
                pointDotRadius: 4,
                pointDotStrokeWidth: 1,
                pointHitDetectionRadius: 20,
                datasetStroke: true,
                datasetStrokeWidth: 2,
                datasetFill: true,
                
                responsive: true,
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            var myNewChart = new Chart(ctx).Line(lineData, lineOptions);

        });
    </script>



</body>

</html>
