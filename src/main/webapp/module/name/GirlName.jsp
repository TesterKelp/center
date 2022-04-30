<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Educational</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="scripts/jquery.tabs.setup.js"></script>

   <!-- <link href="acss/bootstrap.min.css" rel="stylesheet" type="text/css"> -->
      <link href="acss/style.css" rel="stylesheet" type="text/css"/>
      <!-- // <script src="acss/jquery-2.1.4.min.js"></script> -->
<!-- 
<link href="ccss/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="ccss/style.css" rel="stylesheet" type="text/css" media="all" /> -->
<!--   <link href="cs/bootstrap.min.css" rel="stylesheet">
    <link href="cs/style.css" rel="stylesheet"> -->

<!-- <link rel="stylesheet" href="c/style.css"> -->
<link rel="stylesheet" href="css/style.css">
<script src="js/libs/modernizr.js"></script>
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
      <h1><a href="#">至尊 . 星耀</a></h1>
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
      <li class="active"><a href="index.html">宝宝起名</a>
        <ul>
          <li><a href="#">智能起名</a></li>
          <li><a href="#">定字起名</a></li>
          <li><a href="#">出生命运</a></li>
          <li><a href="#">名字大全</a></li>
          <li><a href="#">小名大全</a></li>
          
          <li><a href="SourceList.do">姓氏起源</a></li>
          <li><a href="#">男孩常用名大全</a></li>
          <li><a href="#">女孩常用名大全</a></li>
          <li class="last"><a href="#">万年历</a></li>
        </ul>
      </li>
      <li><a href="style-demo.html">十二生肖</a>
        <ul>
          <li><a href="#">子鼠</a></li>
          <li><a href="#">丑牛</a></li>
          <li class="last"><a href="#">寅虎</a></li>
        </ul>
      </li>
      
      <!-- 
      <li><a href="full-width.html">企业风采</a>
        <ul>
          <li><a href="#">Lorem ipsum dolor</a></li>
          <li><a href="#">Suspendisse in neque</a></li>
          <li class="last"><a href="#">Praesent et eros</a></li>
        </ul>
      </li>
      <li><a href="list.html">产业服务</a></li>
      <li><a href="content.html">新闻中心</a></li>
      <li><a href="#">友情链接</a></li>
      <li class="last"><a href="#">关于我们</a></li>
      
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
        <li onmouseover="dfd('images/18.jpg','http://www.004.la')"> <a href="javascript:;">食品认证<br />
          <span>Application For Food Certification.</span></a></li>
        <li onmouseover="dfd('images/10.jpg','http://www.004.la')"><a href="javascript:;">中国有机产品认证<br />
          <span>Certification of Organic Products in China.</span></a></li>
        <li onmouseover="dfd('images/15.jpg','http://www.004.la')"><a href="javascript:;">韩国有机产品认证<br />
          <span>Certification of Korean Organic Products.</span></a></li>
        <li class="last" onmouseover="dfd('images/123.jpg','http://www.004.la')"><a href="javascript:;">GAP认证<br />
          <span>GAP authentication.</span></a></li>
      </ul>
      <div id="featured_content">
        <div class="featured_box" id="fc1"   ><img src="images/18.jpg" id="ddd" alt="" />
          <div class="floater"><a href="#" id="rurl"> [ 查看详情 ] </a></div>
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
      <h3>服务类型</h3>
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
      <div class="text1">Say what you need and we’ll do it for you!</div>
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



      <!--content-ends-->

<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    <div id="hpage">
      <ul>
        <lli> 
        
        
        
        <c:forEach items="${namelst}" var="a" varStatus="status">
        
        

				<div class="imgh">
							<a href="/name/NameDetail.do?nameid=${a.nameid}">
								${a.word}</a>
						</div>

		</c:forEach>
		
		

		

        </lli>
   
   <br class="clear" />

   
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->



<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="footer">
    <div id="newsletter">
      <h2>联系我们</h2>
      <div><p>周一至周五：09:00 - 18:00</p> <p >4008-370-770 </p></div>
      <div> <p> <img src="images/weixin.jpg" height="60px" width="60px"></p></div>
      
       
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">公司介绍</a></li>
        <li><a href="#">团队介绍</a></li>
        <li><a href="#">我们的客户</a></li>
        <li><a href="#">合作伙伴</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">联系我们</a></li>
        <li><a href="#">加入我们</a></li>
        <li><a href="#">友情链接</a></li>
        <li><a href="#">新闻中心</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">企业风采</a></li>
        <li><a href="#">产品服务</a></li>
        <li><a href="#">认证服务</a></li>
        <li><a href="#">百科知识</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright ?2007-2018 网 All rights reserved京ICP证100040 号 | 京ICP备 09035497号-3</p> <br class="clear" />
  <p class="fl_left">公司名称：北京会科技有限公司    注册地址：北京市朝阳区高碑号泰禾文化大厦四层401 室</p> <br class="clear" />
  <p class="fl_left">社会信用代码：911101056637110228  食品经营许可证编号：JY11105220677487电话：010 -61138799</p>
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
