////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////





//function myShare(){

	var $table = $('#t1');
	$table.bootstrapTable({
	url: "ArticleList.do", 
	dataType: "json",
	      columns: [
	                
	              {
	                title: 'ID',
	                  field: 'articleid',
	                  align: 'center',
	                  valign: 'middle',
	                	  width: '10%'
	              },
	              {
	                  title: '分类名称',
	                    field: 'catename',
	                    align: 'center',
	                    valign: 'middle',
	                     width: '10%',
	                    	 
	                },
	                {
		                  title: '发布人',
		                    field: 'realname',
		                    align: 'center',
		                    valign: 'middle',
		                     width: '5%',
		                    	 
		                },
	                {
	                    title: '文章标题',
	                      field: 'articletitle',
	                      align: 'left',
	                      valign: 'middle',
	                      width: '35%'
	                  },

	              {
	                  title: '操作名称',
	                  align: 'center', 
	                  width: '10%' ,
	                  formatter:function(value,row,index){  
//	                	  var c = '<a href="ShareDetail.html" onclick="edit(\''+row.cateid + '\')">查看</a> ';
	//                	  var e = '<a href="aaa.do？articleid='+row.articleid+'" >编辑</a> ';  
	   //                   var d = '<a href="#" mce_href="#" onclick="delblog(\''+row.articleid +'\')">删除</a> ';
	                      
//	                	  var c = '<a href="ShareDetail.html" onclick="edit(\''+row.cateid + '\')">查看</a> ';
	                	  var e = '<a href="EnterBlogEdit.do?blogid='+row.articleid+'" >[博客编辑]</a> ';  
	                      var d = '<a href="#" mce_href="#" onclick="delblog(\''+row.articleid +'\')">删除</a> ';
	                      var a ='<a href="/module/share/ArticleDetail.do?articleid='+row.articleid+'" >[文章预览]</a>';   

	                      
	                      return a+e+d;  
	                      
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
	 pageSize: 20,
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
        align: 'center',
        valign: 'middle',
      	  width: '10%',		  
    },
	              {
	                title: '分享标题',
//	                  field: 'articletitle',
	                  align: 'left',
	                  valign: 'middle',
	                	  width: '63%',
	                	  formatter:function(value,row,index){  
	                		  var c = '<a href="/module/share/ArticleDetail.do?articleid='+row.articleid+'" >'+row.articletitle+'</a> ';
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
			                	  width: '15%',
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
	 pageSize: 20,
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
      align: 'center',
      valign: 'middle',
    	  width: '10%',		  
  },
	              {
	                title: '分享标题',
//	                  field: 'articletitle',
	                  align: 'left',
	                  valign: 'middle',
	                	  width: '68%',
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
	 
	 
//		alert(title);
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
//				window.location.href="ArticleDetail.do?articleid="+articleid; 
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


function delblog(blogcateid){
	var url="DelBlog.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {blogcateid:blogcateid},
		dataType : "json",
		success : function(result) {
			
			if(result.msg=="ok")
				{
				alert("删除分类成功！");
				$('#t1').bootstrapTable('refresh');
				document.getElementById("blogcatename").value="";
				
				}else{
					alert("你删的分类有博客！");
					
					
					
				}

		}
	});
	
	
}

