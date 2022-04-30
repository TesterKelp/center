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
                    title: '目录名称',
                      field: 'sort',
                      align: 'center',
                      valign: 'middle',
                      width: '10%'
                  },
                
              {
                  title: '操作名称',
                  align: 'center', 
                  width: '10%' ,
                  formatter:function(value,row,index){  
                	  var e = '<a href="#" mce_href="#" onclick="editCate(\''+row.cateid + '\')">编辑</a> ';  
                      var d = '<a href="#" mce_href="#" onclick="delCate(\''+row.cateid +'\')">删除</a> ';

                           return e+d;  
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
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {blogcatename:blogcatename},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
			document.getElementById("blogcatename").value="";

		}
	});
	
}


