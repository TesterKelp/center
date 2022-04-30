////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////


function  loadCate(){
$('#t1').bootstrapTable('destroy');  
var $table = $('#t1');
$table.bootstrapTable({
url: "getBlogCate.do", 
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
                  title: '操作名称',
                  align: 'center', 
                  width: '10%' ,
                  formatter:function(value,row,index){  

                      var d = '<a href="#" mce_href="#" onclick="delblogCate(\''+row.blogcateid +'\')">删除</a> ';

                           return d;  
                       } 
              }
          ]
  });

}

function loadinfo(){
	 getMenu() ;

}



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
	var url="saveBlogCate.do";
	
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
	var url="DelBlogCate.do";
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




