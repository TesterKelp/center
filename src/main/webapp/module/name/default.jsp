<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/module/name/styles/layout.css" type="text/css" />
<script type="text/javascript" src="/module/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/module/name/scripts/jquery.tabs.setup.js"></script>

   <!-- <link href="acss/bootstrap.min.css" rel="stylesheet" type="text/css"> -->
      <link href="/module/name/acss/style.css" rel="stylesheet" type="text/css"/>
      <!-- // <script src="acss/jquery-2.1.4.min.js"></script> -->
<!-- 
<link href="ccss/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="ccss/style.css" rel="stylesheet" type="text/css" media="all" /> -->
<!--   <link href="cs/bootstrap.min.css" rel="stylesheet">
    <link href="cs/style.css" rel="stylesheet"> -->

<!-- <link rel="stylesheet" href="c/style.css"> -->
<link rel="stylesheet" href="/module/name/css/style.css">
<script src="/module/name/js/libs/modernizr.js"></script>
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>Nullamlacus dui ipsum</h2>
        <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>Teachers Login Here</h2>
        <form action="#" method="post">
          <fieldset>
            <legend>Teachers Login Form</legend>
            <label for="teachername">Username:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" name="teacherremember" id="teacherremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <div class="topbox last">
        <h2>Pupils Login Here</h2>
        <form action="#" method="post">
          <fieldset>
            <legend>Pupils Login Form</legend>
            <label for="pupilname">Username:
              <input type="text" name="pupilname" id="pupilname" value="" />
            </label>
            <label for="pupilpass">Password:
              <input type="password" name="pupilpass" id="pupilpass" value="" />
            </label>
            <label for="pupilremember">
              <input class="checkbox" type="checkbox" name="pupilremember" id="pupilremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="pupillogin" id="pupillogin" value="Login" />
              &nbsp;
              <input type="reset" name="pupilreset" id="pupilreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left" align="center">http://www.004.la</li>
        <li class="right" id="toggle"></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">?????? . ??????</a></h1>
      <p>Http://www.004.la</p>
    </div>
    <div class="fl_right">
      <ul>
        <li class="last"><a href="#">Search</a></li>
        <li><a href="#">Online Support</a></li>
        <li><a href="#">School Board</a></li>
      </ul>
      <p>Tel: 010 - 1225855 | Mail: info@domain.com</p>
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topnav">
    <ul>
      <li class="active"><a href="index.html">????????????</a>
        <ul>
       
          <li><a href="/name/list.html">????????????</a></li>
          <li><a href="/name/AllName.do">????????????</a></li>

          
          <li><a href="/name/SourceList.do">????????????</a></li>
          <li><a href="/name/BoyName.do">?????????????????????</a></li>
          <li><a href="/name/GirlName.do">?????????????????????</a></li>
          <li class="last"><a href="DatetTime.html">?????????</a></li>
        </ul>
      </li>
      <li><a href="style-demo.html">????????????</a>
        <ul>
          <li><a href="#">??????</a></li>
          <li><a href="#">??????</a></li>
          <li class="last"><a href="#">??????</a></li>
        </ul>
      </li>
   <!-- 
             <li><a href="#">????????????</a></li>
   
      <li><a href="#">????????????</a></li>
          <li><a href="#">????????????</a></li>
   
   
      <li><a href="full-width.html">????????????</a>
        <ul>
          <li><a href="#">Lorem ipsum dolor</a></li>
          <li><a href="#">Suspendisse in neque</a></li>
          <li class="last"><a href="#">Praesent et eros</a></li>
        </ul>
      </li>
      <li><a href="list.html">????????????</a></li>
      <li><a href="content.html">????????????</a></li>
      <li><a href="#">????????????</a></li>
      <li class="last"><a href="#">????????????</a></li>
       -->  
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### 

<section id="jms-slideshow" class="jms-slideshow"  >
<div class="step" data-image="images/60.jpg" data-image-w="100%" data-image-h="380" data-x="2000" data-y="1000" data-z="3000" data-rotate="-20" ></div>
<div class="step" data-image="images/61.jpg" data-image-w="100%" data-image-h="380" data-x="1000" data-z="2000" data-rotate="20"></div>
<div class="step" data-image="images/62.jpg" data-image-w="100%" data-image-h="380" data-x="2000" data-y="1500" data-z="1000" data-rotate="20"></div>
<div class="step" data-image="images/63.jpg" data-image-w="100%" data-image-h="380" data-x="3000" data-y="2000"></div>
</section>
-->


<!-- ####################################################################################################### 
<div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
      <ul id="featured_tabs">
        <li onmouseover="dfd('images/18.jpg','http://www.004.la')"> <a href="javascript:;">????????????<br />
          <span>Application For Food Certification.</span></a></li>
        <li onmouseover="dfd('images/10.jpg','http://www.004.la')"><a href="javascript:;">????????????????????????<br />
          <span>Certification of Organic Products in China.</span></a></li>
        <li onmouseover="dfd('images/15.jpg','http://www.004.la')"><a href="javascript:;">????????????????????????<br />
          <span>Certification of Korean Organic Products.</span></a></li>
        <li class="last" onmouseover="dfd('images/123.jpg','http://www.004.la')"><a href="javascript:;">GAP??????<br />
          <span>GAP authentication.</span></a></li>
      </ul>
      <div id="featured_content">
        <div class="featured_box" id="fc1"   ><img src="images/18.jpg" id="ddd" alt="" />
          <div class="floater"><a href="#" id="rurl"> [ ???????????? ] </a></div>
        </div>
        <div class="featured_box" id="fc2"><img src="images/123.jpg" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc3"><img src="images/15.jpg" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <div class="featured_box" id="fc4"><img src="images/10.jpg" alt="" />
          <div class="floater"><a href="#">Continue Reading &raquo;</a></div>
        </div>
        <br>
      </div>
    </div>
  </div>
</div>
-->

<!-- ####################################################################################################### -->


<!-- <Br>
<section id="services" class="pagee">
  <div class="container_12">
    <div class="grid_12">
      <h3>????????????</h3>
      <Br><Br><Br>
    </div>
    <div class="grid_9">
      <div class="serv_links">
        <a href="#" class="serv"><span>Web</span></a>
        <a href="#" class="serv"><span>Development</span></a>
        <a href="#" class="serv"><span>SEO</span></a>
        <a href="#" class="serv"><span>SEM</span></a>
        <a href="#" class="serv"><span>Graphic</span></a>
        <a href="#" class="serv"><span>Ideas</span></a>
        <a href="#" class="serv"><span>Management</span></a>
        <a href="#" class="serv"><span>Planning1</span></a>
      </div>
    </div>

    <div class="grid_3 fwn">
      <div class="text1">Say what you need and we???ll do it for you!</div>
      Read about this <strong><a href="#/free-website-templates/" rel="nofollow">free theme</a></strong> on our official blog. <br> To find the whole collection of <strong><a href="#properties/topic/design-photography/" rel="nofollow">templates for design companies</a></strong>, visit TemplateMonster.com <br>
      <a href="#" class="btn">read more</a>
    </div>
      <div class="clear"></div>
  </div>
</section>
<Br>
<Br>
<Br>
<Br>

<Br>
<Br>
<Br>
<Br><Br>
<Br>
 -->



<!-- <section id="features" class="feature">

        <div class="container">
          <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="row">

                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="feature-items">
                    <div class="title-wrap"><i class="fa fa-heart feature-icon" ></i><h5>Best Caption Title</h5></div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Quasi, sapiente, nam sunt rem beatae architecto cupiditate
                    numquam consectetur dolorum.</p>
                    <span> Read more <i class="fa fa-caret-right"></i></span>
                  </div>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="feature-items">
                    <div><i class="fa fa-codepen feature-icon" ></i><h5>Best Caption Title</h5></div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Quasi, sapiente, nam sunt rem beatae architecto cupiditate
                    numquam consectetur dolorum.</p>
                    <span> Read more <i class="fa fa-caret-right"></i></span>
                  </div>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="feature-items">
                    <div><i class="fa fa-code feature-icon" ></i><h5>Best Caption Title</h5></div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Quasi, sapiente, nam sunt rem beatae architecto cupiditate
                    numquam consectetur dolorum.</p>
                    <span> Read more <i class="fa fa-caret-right"></i></span>
                  </div>
                </div>

              </div>

            </div>

          </div>

        </div>

      </section> -->







<!-- <div class="services">
    <div class="container">
      
      <div class="services-grid">
        <h3>What We Offer</h3>
        <div class="services-grd">
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-send" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-filter" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="clearfix"> </div>
        </div>
        <div class="services-grd">
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-hourglass" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-cloud" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="col-md-4 services-grd1">
            <div class="col-xs-3 services-grd1-left">
              <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
            </div>
            <div class="col-xs-9 services-grd1-right">
              <h4>At vero eos et accusamus et iusto repellendus</h4>
              <p> Nam libero tempore, cum soluta nobis est eligendi optio 
                cumque nihil impedit quo minus id quod maxime placeat facere 
                possimus.</p>
            </div>
            <div class="clearfix"> </div>
          </div>
          <div class="clearfix"> </div>
        </div>
      </div>
      
    </div>
  </div> -->
<!-- //services -->


<div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
<div class="content" id="acss">
        <div class="twitter-feeds">
          <!--script-->
          <script src="/module/name/js/responsiveslides.min.js"></script>
          <script>
            $(function () {
              $("#slider").responsiveSlides({
              auto: true,
              speed: 500,
              namespace: "callbacks",
              pager: true,
              });
            });
          </script>
          <!--script-->
          <div class="container">
             <div class="slider">
              <div class="callbacks_container">
                <ul class="rslides" id="slider">
                <li>
                  <div class="caption">
                  <h2 align="center">????????????</h2>
                  <p style="margin-left: 15px;"> ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????80???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>
                  </div>
                </li>
              
                </ul>
               </div>
            </div>
          </div>
        </div>
      </div>
         </div>
      </div>
 </div>
      <!--content-ends-->



<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
      <ul>
        <li>
          <h2>????????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/5.jpg" alt=""  height="60px" /></a></div>
          <p>This is a W3C standards compliant free website template from <a href="http://www.cssmoban.com/">????????????</a>. For more CSS templates visit <a href="#">Free Website Templates</a>. Etmetus conse cte tuer leo nisl justo sed vest vitae nunc massa scelerit</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li>
          <h2>????????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/6.jpg" alt="" height="60px" /></a></div>
          <p>This template is distributed using a <a href="#">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li>
          <h2 align="center">?????? ?????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/7.jpg"   height="60px"/></a></div>
          <p>Seddui vestibulum vest mi liberos estibulum urna at eget amet sed. Etmetus consectetuer leo nisl justo sed vest vitae nunc massa scelerit. Namaucibulum lor ligula nullam risque et ristie sollis sapien nulla neque.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li class="last">
          <h2 align="center" >?????? . ??????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/8.jpg" alt=""  height="60px"/></a></div>
          <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi pen as dapibulum orna. Urna ultrices quis curabitur phasellentesque congue magnis vestibulum. Orcieleifendimentum risuspenatoque massa nunc.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->



<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
      <ul>
        <li>
          <h2>????????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/5.jpg" alt=""  height="60px" /></a></div>
          <p>This is a W3C standards compliant free website template from <a href="http://www.cssmoban.com/">????????????</a>. For more CSS templates visit <a href="#">Free Website Templates</a>. Etmetus conse cte tuer leo nisl justo sed vest vitae nunc massa scelerit</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li>
          <h2>????????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/6.jpg" alt="" height="60px" /></a></div>
          <p>This template is distributed using a <a href="#">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li>
          <h2 align="center">?????? ?????????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/7.jpg"   height="60px"/></a></div>
          <p>Seddui vestibulum vest mi liberos estibulum urna at eget amet sed. Etmetus consectetuer leo nisl justo sed vest vitae nunc massa scelerit. Namaucibulum lor ligula nullam risque et ristie sollis sapien nulla neque.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
        <li class="last">
          <h2 align="center" >?????? . ??????</h2>
          <div class="imgholder"><a href="#"><img src="/module/name/images/8.jpg" alt=""  height="60px"/></a></div>
          <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi pen as dapibulum orna. Urna ultrices quis curabitur phasellentesque congue magnis vestibulum. Orcieleifendimentum risuspenatoque massa nunc.</p>
          <p class="readmore"><a href="#">?????????????????? &raquo;</a></p>
        </li>
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div id="newsletter">
     <!--  <h2>????????????</h2> --> 
      <div><p>??????????????????09:00 - 18:00</p> <p >4008-370-770 </p></div>
      <div> <p> <img src="/module/name/images/weixin.jpg" height="60px" width="60px"></p></div>
      
       
    </div>
    <div class="footbox">
     <!--  <h2>Lacus interdum</h2>  --> 
      <ul>
        <li><a href="#">????????????</a></li>
        <li><a href="#">???????????????</a></li>
        <li><a href="#">???????????????</a></li>
        <li><a href="#">????????????</a></li>
        <li class="last"><a href="#">????????????</a></li>
      </ul>
    </div>
    <div class="footbox">
    <!-- <h2>??????</h2> --> 
      <ul>
        <li><a href="#">????????????</a></li>
        <li><a href="#">?????????</a></li>
        <li><a href="#">????????????</a></li>
        <li><a href="#">????????????</a></li>
        <li class="last"><a href="#">??????????????????</a></li>
      </ul>
    </div>
    <div class="footbox">
   <!--    <h2>??????</h2>  --> 
      <ul>
        <li><a href="#">?????????</a></li>
        <li><a href="#">????????????</a></li>
        <li><a href="#">????????????</a></li>
        <li><a href="#">????????????</a></li>
        <li class="last"><a href="#">??????????????????</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright ?2007-2018 ??? All rights reserved???ICP???100040 ??? | ???ICP??? 09035497???-3</p> <br class="clear" />

    <br class="clear" />
  </div>
</div>

<script >

function dfd(spic ,url){

var  aa=  document.getElementById("ddd") ;
var  aaa=  document.getElementById("rurl") ;
// alert(spic) ;
// alert(url) ;
    aa.src=spic;
    aaa.href=url ;

}

</script>

<script src="js/libs/jquery.min.js"></script>
<script src="js/libs/jmpress.min.js"></script>
<script src="js/libs/jquery.jmslideshow.js"></script>
<script src="js/script.js"></script>

</body>
</html>
