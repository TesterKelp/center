
					var ab = ""
//						 var conten="qqweqwqew" ;
					
//					alert(conten);
					$.ajax({
						type : "GET",
						url : "getUserList.do",
						async : false,
						dataType : "json",
						success : function(result) {
							 var con= document.getElementById("user");
							 var content="" ;
							 for(var i=0; i<(result.length); i++)  {
						 content = content + "<div class='col-sm-4'>"+
					               " <div class='contact-box'> "+
					                 "   <a href='#'> "+
					                 "     <div class='col-sm-4'>"+
					                 "        <div class='text-center'>"+
					                 "      <img alt='image' style='width:133px ;height:133px' class='img-circle m-t-xs img-responsive' src=' "+ result[i].useravatar +
					                        "'> "+
					                     "  <div class='m-t-xs font-bold'>"+result[i].jobname+
					                     "  </div> "+
					                       "     </div> "+
					                      "  </div> "+
					                    "    <div class='col-sm-8'>"+
					                       "     <h3><strong>" +result[i].realname+"/"+result[i].username+"</strong></h3>"+
					                        "    <p><i class='fa fa-map-marker'></i> </p>"+
					                        "    <address>"+
					                        "    <strong>"+result[i].englishname+"</strong><br>"+
					                        "    E-mail:"+result[i].useremail+"<br> "+
					                        "    Blog:<a href='http://www.004.la/blog/Blog.do?userid="+result[i].userid+"'>http://www.004.la/blog/Blog.do?userid="+result[i].userid+"</a><br> " +
					                        "    <abbr title='Phone'>Tel:</abbr>"+ result[i].telephone+
					                       " </address> " +
					                       " </div> " +
					                       " <div class='clearfix'></div> "+
					                 "   </a>" +
					               " </div>"+
					           " </div>" ;

							 }
//							alert(content);
							
							 con.innerHTML=content ;	
							
						
							
							
						}
					});