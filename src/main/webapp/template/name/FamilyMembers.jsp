<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${title}_${c3.catename}_${c2.catename}__${m.item_name}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="favicon.ico">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
</head>

<body class="gray-bg">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >


						<br>
						<div class="pull-right">
							<a href='/blog/Blog.do?userid=${userid}'>${username} </a>
							<button class="btn btn-white btn-xs" type="button">分享于：${creattime}</button>
							<!--     <button class="btn btn-white btn-xs" type="button"> 帮助111个测试工程师 </button> -->
							<img src="/test/pic/weixin.jpg" width="100"  height="100">
						</div>
						<div class="text-center article-title">
							<h2> <b> ${title} </b></h2>
							
							
							
				
							
							
						 <h5 align="center">	家族</h5>
    <br></br>
    <table style="border:0px "><tr style="border:0px "> 
    <td align="right" style="border:0px ">成员姓名：</td>
    <td width="130px" style="border:0px "><input type="text" style="width:120px;" /></td>
    <td align="right" width="70px" style="border:0px ">孟姓父母：</td>
    <td width="130px" style="border:0px ">
    
<select id="pname">
  <option value ="volvo">Volvo</option>
  <option value ="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
    
    
    </td> 
    <td align="right" width="70px" style="border:0px ">外姓父母：</td>
    <td width="130px" style="border:0px "><input type="text" style="width:120px;" /></td> 
    <td style="border:0px "><button type="button">添加</button></td>
     <td style="border:0px "><input type="hidden" id="familyid" name="familyid" style="width:120px;" value="${id}" /></td>
    </tr></table>
           <table width="99%" style="border:1px solid #F00" >
								<tr>
				<td style="border:1px solid #F00" align="center" >序号</td>
				<!-- <td style="border:1px solid #F00" align="center">介绍</td>  -->
				<td style="border:1px solid #F00" align="center">成员</td>
				<td style="border:1px solid #F00" align="center">长辈</td>
				<td style="border:1px solid #F00" align="center">贡献</td>
				<td style="border:1px solid #F00" align="center">操作</td>
				
				</tr>
				<c:forEach items="${familylst}" var="a" varStatus="status">
				 <c:if test="${status.count%2==1}">
							</tr >
							<tr class="dark">
						    </c:if>
					 <c:if test="${status.count%2==0}">
							</tr >
							<tr class="light">
						    </c:if>
				<td style="border:1px solid #F00" > ${status.count}</td>
			<!-- 	<td style="border:1px solid #F00" >${a.userid}</td>  -->
				<td style="border:1px solid #F00"  align="center"> ${a.uname} </td>
				<td style="border:1px solid #F00"  align="center">   <a href="alertpid.do?pid=${a.pid}&reid= ${a.reid}"> ${a.pname}</a></td>
				<td style="border:1px solid #F00"  align="center"> 仙桃，蜡烛，香烛</td>
				<td style="border:1px solid #F00"  align="center"> ${a.sort}  删除</td>
				</tr>
				
				    
				
				
				
				
				</c:forEach>
			</table>
						
							
							
							
							
							
							
							
							
							
							
							
							
							
						</div>
						<p>${content}</p>

						<p>
						
						
		
						
						
						
						
						
						
						
						</p>
						<hr>

						<div class="row">
							<div class="col-lg-12">
								<h2>评论：</h2>
								<input class="form-control" id="articleid" value="${articleid}"
									type="hidden">
								<script id="editor" type="text/plain"
									style="width:100% ;height:250px;"> </script>
								<button type="button" onclick="saveComment()">评论</button>
								<div id="comment">

							

									<c:forEach items="${clst}" var="v">
										<div class="social-feed-box">
											<div class="social-avatar">
												<a href="" class="pull-left"> <img alt="image"
													src="${v.useravatar}">
												</a>
												<div class="media-body">
													<a href="#"> <a href="/blog/Blog.do?userid=${v.userid}">
															${v.username} </a>
													</a> <small class="text-muted">${v.commenttime}</small>
												</div>
											</div>
											<div class="social-body">
												<p>${v.content}</p>
											</div>
										</div>
									</c:forEach>

								</div>

							</div>
						</div>


					</div>
				</div>
			
		</div>

	</div>



	<%@ include file="/module/common/footer.jsp"%> 
	<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        window.UEDITOR_HOME_URL = "/defectsystem/ueditor/";
    var ue = UE.getEditor('editor');
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
    

 
 	</script>

	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>
	<script src="/template/name/kjs/common.js"></script>

<script type="text/javascript">
var  id= document.getElementById("familyid").value;

$.ajax({
	type : "GET",
	url : "/name/getFamilyNameSelect.do",
	async : false,
	data: {id:id},
	dataType : "json",
	success : function(rs) {
	
		
	var da = eval("(" + rs.data + ")");
			var con = "";
			for (var i = 0; i < (da.length); i++) {
				con = con + "<option value ='"+da[i].userid+"'>" + da[i].name
						+ "</option>";
			}
			document.getElementById("pname").innerHTML = con;

		}
	});
</script>

</body>

</html>