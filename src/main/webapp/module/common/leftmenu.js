 $.ajax({
	type : "GET",
	url : "/module/admin/leftmenu.do",
	dataType : "text",
	success : function(data) {	
		var lm ="";
		var  o = JSON.parse(data);
		for(var i=0;i<o.menu.length;i++){
		 lm=lm+"<li><a href='"+o.menu[i].navigation_url+"'><i class='"+o.menu[i].navigation_icon+"'></i>"+o.menu[i].navigation_name+"</a></li>" ;
		}
	    document.getElementById("leftmenu").innerHTML= lm;
	}
});	