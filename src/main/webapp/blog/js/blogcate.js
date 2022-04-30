////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////


function  loadCate(){
$('#t1').bootstrapTable('destroy');  
var $table = $('#t1');
$table.bootstrapTable({
url: "/blog/getBlogCate.do", 
pageSize : 20,
dataType: "json",
      columns: [
              {
                title: 'ID',
                  field: 'blogcateid',
                  align: 'center',
                  valign: 'middle',
                	  width: '10%'
              },
              {
                  title: '分类名称',
                    field: 'blogcatename',
                    align: 'center',
                    valign: 'middle',
                     width: '10%',	 
                },
                {
                    title: '排序码',
                      align: 'center',
                      valign: 'middle',
                       width: '10%',	
                       formatter:function(value,row,index){  
                     	 var e = '<input type="text"  value="'+row.sort +'"   onblur="setCateOrder(this,\''+row.blogcateid +'\')"  id="weburl"     style="width:50px;" >' ;
                                return e;  
                            }    
                       
                  },
              {
                  title: '操作名称',
                  align: 'center', 
                  width: '10%' ,
                  formatter:function(value,row,index){  
                	  var e = '<a href="#" mce_href="#" onclick="showEditorBlogCate(\''+row.blogcatename+'\',\''+row.blogcateid+'\')">编辑</a> ';  
                    
                      var f = '<a href="#" mce_href="#" onclick="delblogCate(\''+row.blogcateid +'\')">删除</a> ';
                           return e+f;  
                       } 
              }
          ]
  });

}


	           
	


































function loadinfo(){ getMenu() ;}
function getMenu(){
	$.ajax({
		type : "GET",
		url : "getBlogMenu.do",
		async : false,
		dataType : "text",
		success : function(result) {
			alert(result);
			 document.getElementById("menu").innerHTML=result  ;	 
		}
	});	
}



function saveBlogCate(){
	var blogcatename = document.getElementById("blogcatename").value ;
//	alert(blogcatename);
	var url="/blog/saveBlogCate.do";
	if(blogcatename.trim() ==""){
		alert("plase enter  catename");
		blogcatename.focus();
	}else{
		$.ajax({
			type : "POST",
			url : url,
			async : false,
			data : {blogcatename:blogcatename},
			dataType : "json",
			success : function(result) {
				if(result.msg=="ok"){
					alert("创建成功！");
					$('#t1').bootstrapTable('refresh');
					document.getElementById("blogcatename").value="";
				}
			}
		});	
	}	
}




function delblogCate(blogcateid){
	var url="/blog/DelBlogCate.do";
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





function showEditorBlogCate(value,id){
	$("#Ablogcatename").val(value)  ;
	$("#Ablogcateid").val(id)  ;
	 layer.open({
	        title:'修改博客分类',
	         skin:'layui-layer-molv',
	        type: 1,
	        area: ['400px', '250px'],
	        // shadeClose: true, //点击遮罩关闭
	        content: $('#EditorBlogCate') ,
	    });
}
function alterBlogCate(){
  var  blogcatename =	$("#Ablogcatename").val()  ;
  var  blogcateid  =  $("#Ablogcateid").val()  ;
  var  url ="/blog/alterBlogCate.do" ;
	  $.ajax({
			type : "POST",
			url : url,
			async : false,
			data : {blogcateid:blogcateid,blogcatename:blogcatename},
			dataType : "text",
			success : function(result) {
				if(result=="1"){
					alert("修改分类成功！");
					$('#t1').bootstrapTable('refresh');
					
				}else{
					alert("修改博客分类失败！");
					}
			}
		});
}




function  setCateOrder(a ,blogcateid){
	
	 var psort=a.value ;
	 var  url ="/blog/SetBlogCateSort.do" ;
	  $.ajax({
			type : "POST",
			url : url,
			async : false,
			data : {blogcateid:blogcateid,sort:psort},
			dataType : "text",
			success : function(result) {
				//alert(result);
				if(result=="ok"){
					$('#t1').bootstrapTable('refresh');	
				}else{
					alert("修改失败！");
					}
			}
		});
	
	
	
	
	
	
}







