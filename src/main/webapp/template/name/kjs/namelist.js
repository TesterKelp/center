
function Lo(){
var ma  =  $("#ma").val()  ;
if(ma=="521"){
	SetCookie("name","aisini")
	$("#pp").show() ;  
	alert("验证码正确，您可有查看所有分页。");
}else if(ma=="996"){
	delCookie("name") 
	 $("#pp").hide() 
}else{
 location.reload()    ;
}

   	   
}



var s =getCookie("name");
if(s==null){
}else {
	$("#pp").show()  ;
}

function SetCookie(name,value){
	 var Days = 30;//此 cookie 将被保存 30 天
	 var exp = new Date();//new Date("December 31, 9998");
	 exp.setTime(exp.getTime() + Days*24*60*60*1000);
	 document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString()+"; path=/";
}

function getCookie(name){
	 var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	 if (arr != null) return unescape(arr[2]); return null;
}

//删除cookie
function delCookie(name){
 var exp = new Date();
 exp.setTime(exp.getTime() - 1);
 var cval = getCookie(name);
 if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString()+"; path=/";
}


function myname(){
	var name  =  $("#myname").val()  ; 
	$.ajax({
		type : "GET",
		url : "/name/UserSubmitName.do",
		data: {name: name},
		async : false,
		dataType : "text",
		success : function(data) {	
				alert("感谢您的提交，谢谢！");
		}
	});	
}
