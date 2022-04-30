<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>测试平台 -专题</title>


<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="../../test/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="../../test/css/animate.css" rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
	<%@ include file="/module/common/header.jsp"%>
	<div class="wrapper wrapper-content">
		<div class="row">

			
				<div class="ibox float-e-margins">
					<div class="ibox-content mailbox-content">
						<div class="file-manager">
							<br> <br>


							<!--   -->

							<div class="col-sm-12">
								<div class="contact-box">
									<div class="col-sm-2">
										<div class="text-center">
											<img align="center" alt="image"
												class="img-circle m-t-xs img-responsive" src="${topicimage}">
											<div class="m-t-xs font-bold">${topicname}</div>
											<hr>
											<a href="/blog/Blog.do?userid=${userid}"> 分享者</a> <br> <br>

										</div>

										${topicintro}
									</div>
									<div class="col-sm-10">
										<!--    <h3><strong>${topicname}</strong></h3>-->
										<address>
											<strong>
												<ul class="folder-list m-b-md" style="padding: 0">
													<c:forEach items="${topicList}" var="a" varStatus="status">
														<li>
														<!-- <a
															href="/module/share/ArticleDetail.do?articleid=${a.articleid}">
																第${ status.index + 1}节： ${a.articletitle }</a> -->
																		<a href="/wz/TD_${a.articleid}.html">第${ status.index + 1}节：${a.articletitle }</a>
																</li>
													</c:forEach>


												</ul>
										</address>
									</div>
									<div class="clearfix"></div>

								</div>
							</div>









							<!--  
                            
                            <a class="btn btn-block btn-primary compose-mail" href="#">${topicname} 专题</a>
                           <div  align="center">
                            <img src="${topicimage}" > 
                            </div> 
                              ${topicintro}
                            
                            <div class="space-25"></div>
                            <h5>目录结构</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
                             <c:forEach items="${topicList}" var="a"  varStatus="status">
                                <li>
                                    <a href="/module/share/ArticleDetail.do?articleid=${a.articleid}" > 第${ status.index + 1}节：      ${a.articletitle }</a>
                                </li>
                               </c:forEach>
                                
           
                            </ul>

                     
                          -->
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			

			<!--             
            <div class="col-sm-9 animated fadeInRight">
                <div class="mail-box-header">
                    <div class="pull-right tooltip-demo">
                        <a href="mail_compose.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="åå¤"><i class="fa fa-reply"></i> åå¤</a>
                        <a href="mail_detail.html#" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="æå°é®ä»¶"><i class="fa fa-print"></i> </a>
                        <a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="æ ä¸ºåå¾é®ä»¶"><i class="fa fa-trash-o"></i> </a>
                    </div>
                    <h2>
                    æ¥çé®ä»¶
                </h2>
                    <div class="mail-tools tooltip-demo m-t-md">


                        <h3>
                        <span class="font-noraml">ä¸»é¢ï¼ </span>å¹¼å¿å­äº²å­ç­ï¼å­ä¸­å­ï¼é¡¹ç®æ¹æ¡
                    </h3>
                        <h5>
                        <span class="pull-right font-noraml">2014å¹´10æ28æ¥(ææäº) æä¸8:20</span>
                        <span class="font-noraml">åä»¶äººï¼ </span>i@zi-han.net
                    </h5>
                    </div>
                </div>
                <div class="mail-box">


                    <div class="mail-body">
                        <h4>å°æ¬çå¹¼å¿å­å­é¿æåï¼</h4>
                        <p>
                            è´è´èªæè²ï¼å æ¨èç²¾å½©ï¼ç±äºå©´å¹¼æè²ä¸ä½åæ´ç¬¦åå©´å¹¼å¿æé¿éæ±ï¼æ¯å¨çæ©æä¸å®¶ãå¿çå­¦å®¶æ®éæ¨å´çä¸ç§åå­æ¨¡å¼ãå¨ç¾å½ãæ¥æ¬ãè±å½ãæå¤§å©ãæ°å å¡ç­å½å®¶åæå½é¦æ¸¯ãå°æ¹¾ç­å°åºï¼å¹¼å¿å­æ®éå¼è®¾äºäº²å­ç­ï¼ç¾å½å¹¼å¿å­å¼äº²å­ç­çæ¯çä¸º87%ï¼æå¤§å©æ¯çä¸º83%ãé¦æ¸¯ãå°æ¹¾å°åºåå«ä¸º74%ã76%ã2003å¹´3æ4æ¥ï¼å½å¡é¢åå¬åè½¬åäºæè²é¨ç­10é¨é¨ï¼åä½ï¼ãå³äºå¹¼å¿æè²æ¹é©ä¸åå±çæå¯¼æè§ãï¼å¼ºè°åå±0ï¼6å²å©´å¹¼å¿æè²ãå¨ãå¹¼å¿å­æè²æå¯¼çº²è¦ï¼è¯è¡ï¼ãä¸­å·²æç¡®æåºå¹¼å¿å­æè²è¦ä¸0-3å²æè²åå¥½è¡æ¥ãåäº¬ãä¸æµ·ç­å°è¦æ±å¨2013å¹´ï¼65%çå¬ç«ä¸çº§å¹¼å¿å­å¼è®¾äº²å­ç­æå­ä¸­å­ã
                        </p>

                        <p class="text-right">
                            è´è´èªæè²ç§æåå±æéå¬å¸
                        </p>
                    </div>
                    <div class="mail-attachment">
                        <p>
                            <span><i class="fa fa-paperclip"></i> 2 ä¸ªéä»¶ - </span>
                            <a href="mail_detail.html#">ä¸è½½å¨é¨</a> |
                            <a href="mail_detail.html#">é¢è§å¨é¨å¾ç</a>
                        </p>

                        <div class="attachment">
                            <div class="file-box">
                                <div class="file">
                                    <a href="mail_detail.html#">
                                        <span class="corner"></span>

                                        <div class="icon">
                                            <i class="fa fa-file"></i>
                                        </div>
                                        <div class="file-name">
                                            Document_2014.doc
                                        </div>
                                    </a>
                                </div>

                            </div>
                            <div class="file-box">
                                <div class="file">
                                    <a href="mail_detail.html#">
                                        <span class="corner"></span>

                                        <div class="image">
                                            <img alt="image" class="../../test/img-responsive" src="../../test/img/p1.jpg">
                                        </div>
                                        <div class="file-name">
                                            Italy street.jpg
                                        </div>
                                    </a>

                                </div>
                            </div>
                            <div class="file-box">
                                <div class="file">
                                    <a href="mail_detail.html#">
                                        <span class="corner"></span>

                                        <div class="image">
                                            <img alt="image" class="../../test/img-responsive" src="../../test/img/p2.jpg">
                                        </div>
                                        <div class="file-name">
                                            My feel.png
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="mail-body text-right tooltip-demo">
                        <a class="btn btn-sm btn-white" href="mail_compose.html"><i class="fa fa-reply"></i> åå¤</a>
                        <a class="btn btn-sm btn-white" href="mail_compose.html"><i class="fa fa-arrow-right"></i> ä¸ä¸å°</a>
                        <button title="" data-placement="top" data-toggle="tooltip" type="button" data-original-title="æå°è¿å°é®ä»¶" class="btn btn-sm btn-white"><i class="fa fa-print"></i> æå°</button>
                        <button title="" data-placement="top" data-toggle="tooltip" data-original-title="å é¤é®ä»¶" class="btn btn-sm btn-white"><i class="fa fa-trash-o"></i> å é¤</button>
                    </div>
                    <div class="clearfix"></div>


                </div>
            </div>
      
       -->




		</div>
	</div>


	<!-- å¨å±js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>



	<!-- èªå®ä¹js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>


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

</body>

</html>
