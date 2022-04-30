//window.onload=function(){
//	
//	alert("0000000");
//	var url = "defectajax.do";
//	$.get(
//	url,
//	function(result){ 
//		alert("111111111111111111");
//		alert(result.msg);
//		alert("22222222222222222");
//	},"json")
//	
//} ;



var url = "createDefectPage.do";
	$.get(
	url,
	function(result){ 
		//alert("11111111111111111111");
		//alert(result);
		var con= document.getElementById("asd").innerHTML;
		var co= document.getElementById("asd");
		co.innerHTML=result + con;	
//		alert("time");
//		laydate('#hello');
		//alert("等待处理返回结果");
	},"text")



//	var url = "createDefectPage.do";
//	$.get(
//	url,
//	function(result){ 
//		alert("11111111111111111111");
//		alert(result.msg);
//		var con= document.getElementById("asd");
//		con.innerHTML=result.msg ;	
//		alert("等待处理返回结果");
//	},"json")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	