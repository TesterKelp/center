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