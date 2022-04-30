////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////





//function myShare(){

	var $table = $('#t1');
	$table.bootstrapTable({
	url: "getMyArticleList.do", 
	dataType: "json",
	      columns: [
	                
	              {
	                title: 'ID',
	                  field: 'articleid',
	                  align: 'center',
	                  valign: 'middle',
	                	  width: '5%'
	              },
	              {
	                  title: '分类名称',
	                    field: 'blogcatename',
	                    align: 'center',
	                    valign: 'middle',
	                     width: '10%',
	                    	 
	                },
	                {
	                    title: '文章标题',
	                      field: 'articletitle',
	                      align: 'left',
	                      valign: 'middle',
	                      width: '30%',
	                    	  formatter:function(value,row,index){  
	    	                	  var e = '<a href="/module/share/ArticleDetail.do?articleid='+row.articleid+'" >'+row.articletitle+ '</a> ';  

	    	                           return e
	    	                       } 
	                  },

	              {
	                  title: '操作名称',
	                  align: 'center', 
	                  width: '10%' ,
	                  formatter:function(value,row,index){  
	                	  var c = '<a href="/blog/Content.do?userid='+row.userid+'&&blogid='+row.articleid+'"  >查看</a> ';
	                	  var e = '<a href="EnterBlogEdit.do?blogid='+row.articleid+'" >编辑</a> ';  
	                      var d = '<a href="#" mce_href="#" onclick="delblog(\''+row.articleid +'\')">删除</a> ';
	                      if(row.articletype==2)
	                    	  {  
		                      var a = '<a href="#" mce_href="#" onclick="cancelblogrec(\''+row.articleid +'\',\''+row.userid+'\')">取消阅读榜</a> ';
	                    	  }else{ 
	    	                      var a = '<a href="#" mce_href="#" onclick="setblogrec(\''+row.articleid +'\',\''+row.userid+'\')">加入阅读榜</a> ';
	                    	  }

	                           return c+e+d +a;  
	                       } 
	              }
	          ]
	  });
	
	
//}

	function getCate(){
//		getCate1();
		getArticle();
	}

	function getCate2(cateid){
//		alert("1111111111111");
		var  cateid2=document.getElementById("cateid").value ;
//		alert(cateid);
       ArticleByCateid(cateid)
	}

	

function getCate1(){
	$.ajax({
		type : "GET",
		url : "getCate.do",
		async : false,
		dataType : "text",
		success : function(data) {
			var  a=	document.getElementById("menu").innerHTML;
			var  b= document.getElementById("menu");
			b.innerHTML=a+data ;	
		}
	});	
}

function getArticle(){
//	alert("123");
	$('#t1').bootstrapTable('destroy');  
	var $table = $('#t1');
	$table.bootstrapTable({
	url: "ArticleList.do", 
	dataType: "json",
	 pageSize: 17,
	      columns: [
{
    title: '序号',
      align: 'center',
      valign: 'middle',
    	  width: '2%',
    		  formatter:function(value,row,index){  

                       return index;  
                   } 
    		  
  },
  {
      title: '分享分类',
        field: 'catename',
        align: 'left',
        valign: 'middle',
      	  width: '5%',		  
    },
	              {
	                title: '分享标题',
//	                  field: 'articletitle',
	                  align: 'left',
	                  valign: 'middle',
	                	  width: '73%',
	                	  formatter:function(value,row,index){  
	                		  var c = '<a href="ArticleDetail.do?articleid='+row.articleid+'" >'+row.articletitle+'</a> ';
	                          return c;  
	                      }
	                		  
	              },{
		                title: '分享者',
		                  field: 'username',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%',
		                	  class: 'text-right mail-date'	  
		              },{
			                title: '分享时间',
			                  field: 'creattime',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%',
			                	  class: 'text-right mail-date'	  
			              }
	             
	          ]
	  });

}



function ArticleByCateid(cateid){
//	alert(cateid);
	$('#t1').bootstrapTable('destroy');  
	var $table = $('#t1');
	$table.bootstrapTable({
	url: "ArticleCate.do?cateid="+cateid, 
	dataType: "json",
	 pageSize: 17,
	      columns: [
{
    title: '序号',
      align: 'center',
      valign: 'middle',
    	  width: '2%',
    		  formatter:function(value,row,index){  

                       return index;  
                   } 
    		  
  }, {
      title: '分享分类',
      field: 'catename',
      align: 'left',
      valign: 'middle',
    	  width: '5%',		  
  },
	              {
	                title: '分享标题',
//	                  field: 'articletitle',
	                  align: 'left',
	                  valign: 'middle',
	                	  width: '73%',
	                	  formatter:function(value,row,index){  
	                		  var c = '<a href="ArticleDetail.do?articleid='+row.articleid+'" >'+row.articletitle+'</a> ';
	                          return c;  
	                      }
	                		  
	              },{
		                title: '分享者',
		                  field: 'username',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%',
		                	  class: 'text-right mail-date'	  
		              },{
			                title: '分享时间',
			                  field: 'creattime',
			                  align: 'center',
			                  valign: 'middle',
			                	  width: '10%',
			                	  class: 'text-right mail-date'	  
			              }
	             
	          ]
	  });
	
	
}














function getCateSelect(){

	$.ajax({
		type : "GET",
		url : "getCateSelect.do",
		async : false,
		dataType : "text",
		success : function(data) {
			
			var  a=	document.getElementById("menu").innerHTML;
			var  b= document.getElementById("menu");
			b.innerHTML=a+data ;
				
		}
	});	
	
	
}

function saveArticle(){
	
	var UEDITOR_HOME_URL = "/ueditor/";
	alert("12312312312");
	var  title=	document.getElementById("title").value ;
	var  cate=	document.getElementById("cate").value ;
//	var  content=	document.getElementById("editor").vale ;
	 var ue = UE.getEditor('editor');
	 
	 var content = ue.getContent();
	 
	alert(title);
	alert(cate);
	alert(content);
	$.ajax({
		type : "POST",
		url : "SaveArticle.do",
		data: {title: title, cate: cate , content:content},
		async : false,
		dataType : "text",
		success : function(data) {
	
		}
	});	
	
	
}



function saveComment(){
	var UEDITOR_HOME_URL = "/ueditor/";
//	alert("12312312312");
	var  articleid=	document.getElementById("articleid").value ;
	 var ue = UE.getEditor('editor');
	 var content = ue.getContent();
//	alert(content);
	$.ajax({
		type : "POST",
		url : "/module/share/SaveComment.do",
		data: {articleid: articleid,content:content},
		async : false,
		dataType : "text",
		success : function(data) {
//			alert(data);
			if(data=="ok"){
				window.location.href="ArticleDetail.do?articleid="+articleid; 
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
	alert(content);
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


function delblog(blogid){
	var url="DelBlog.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {blogid:blogid},
		dataType : "json",
		success : function(result) {
			if(result.msg=="ok")
				{
				alert("删除分享成功！");
				$('#t1').bootstrapTable('refresh');
				}else{
					alert("删除失败！");
				}
		}
	});
}
function setblogrec(blogid,userid){
	var url="/module/share/SetBlogRec.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {blogid:blogid,userid:userid},
		dataType : "json",
		success : function(result) {
			if(result.msg=="ok")
				{
				alert("设置成功！");
				$('#t1').bootstrapTable('refresh');
				}else{
					alert("设置失败！");
				}
		}
	});
}

function cancelblogrec(blogid,userid){
	var url="/module/share/CancelBlogRec.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {blogid:blogid,userid:userid},
		dataType : "json",
		success : function(result) {
			if(result.msg=="ok")
				{
				alert("设置成功！");
				$('#t1').bootstrapTable('refresh');
				}else{
					alert("设置失败！");
				}
		}
	});
}




