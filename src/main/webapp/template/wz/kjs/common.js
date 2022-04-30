$.ajax({
	type : "GET",
	url : "/module/adminn/getUserName.do",
	dataType : "text",
	success : function(data) {
		var  aa=	document.getElementById("def").innerHTML;
		var  bb= document.getElementById("def");
		bb.innerHTML=aa+data ;
	}
});	




