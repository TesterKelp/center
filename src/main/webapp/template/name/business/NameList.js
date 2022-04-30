<script type="text/javascript">
function Lo(){
var ma  =  $("#ma").val()  ;
if(ma=="521"){
	SetCookie("name","aisini")
	$("#more").show()     ;
}
var m  =  $("#mmma").val()  ;
if(m=="996"){
	delCookie("name") 
	 $("#more").hide()    ;
}else{
 location.reload()    ;
}

   	   
}

function Loo(){
var ma  =  $("#mma").val()  ;
if(ma=="521"){
	SetCookie("name","aisini")
	 location.reload()    ;
}	   	   
}


var s =getCookie("name");
//alert(s);
if(s==null){
	$("#oneone").show()  ;
//	$("#one").show()  ;
}else {
	$("#moremore").show()  ;
	$("#more").show()  ;
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
</script>