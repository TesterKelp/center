
function saveComment(){
//	var UEDITOR_HOME_URL = "/ueditor/";
	var  articleid=	document.getElementById("articleid").value ;
//	alert(articleid);
	var ue = UE.getEditor('editor');
	 var content = ue.getContent();
		if(content.trim() ==""){
			alert("还没有输入评论内容呦！！");
			return false;
		}
	$.ajax({
		type : "POST",
		url : "/module/share/SaveComment.do",
		data: {articleid: articleid,content:content},
		async : false,
		dataType : "text",
		success : function(data) {
//			alert(data);
			if(data=="ok"){
				location.replace(location.href);
			}
			else if (data=="login"){
				alert("请登录，在进行评论");
					window.location.href="/module/usercenter/login.jsp";
			}
			
		}
	});	
}



function comment(){
	var UEDITOR_HOME_URL = "/ueditor/";
	var  articleid=	document.getElementById("articleid").value ;
	var ue = UE.getEditor('editor');
	var content = ue.getContent();
//	alert(content);
	$.ajax({
		type : "POST",
		url : "/module/share/GetComment.do",
		data: {articleid: articleid,content:content},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("comment").innerHTML=data ;
		}
	});	
}


var  articleid=	document.getElementById("articleid").value ;
//alert(articleid);
$.ajax({
	type : "GET",
	url : "/module/share/JSGetComment.do",
	data: {articleid: articleid},
	async : false,
	dataType : "json",
	success : function(data) {

//		alert(data[0].username)
//		alert(data.length)
		
		for(var i=0;i<data.length;i++){
			var temp ="";
			temp += "<div class='social-feed-box'>   <div class='social-avatar'>     "	
			temp += "	<a href='/blog/"+data[i].userid+".do' class='pull-left'> <img alt='image' src='"+data[i].useravatar+"'></a> " 
			temp += "<div class='media-body'>" ;
			temp += "<a href='/blog/"+data[i].userid+".do'>"+data[i].username+" </a> <small class='text-muted'>"+data[i].commenttime+"</small>" ;
			temp +="</div></div><div class='social-body'><p>"+data[i].content+"</p></div>" ;
			$("#comment").append(temp);

		}
		

	}
});	



