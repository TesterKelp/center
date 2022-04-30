////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////

loadCate();

function  loadCate(){
var $table = $('#t1');
$table.bootstrapTable({
url: "getCateList.do", 
dataType: "json",
//search: true, //显示搜索框
//sidePagination: "server", //服务端处理分页
      columns: [
              {
                title: 'ID',
                  field: 'cateid',
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
                    title: '目录名称',
                      field: 'catedirectory',
                      align: 'center',
                      valign: 'middle',
                      width: '10%'
                  },
                  {
                      title: '分类类型',
                        field: 'catetype',
                        align: 'center',
                        valign: 'middle',
                        width: '10%',
                        	  formatter:function(value,row,index){  
                        		  if(value==0)
                        			  return '系统分类';  
                        		  if(value==1)
                        			  return '内部分类';    
                        	
                                   } 
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





function saveCate(){
	var catename = document.getElementById("catename").value ;
	var catedirectory = document.getElementById("catedirectory").value ;
	var catetype = document.getElementById("catetype").value ;
	var url="saveCate.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {catename:catename,catedirectory:catedirectory,catetype:catetype},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
			document.getElementById("catename").value="";
			document.getElementById("catedirectory").value="";
		}
	});
}





function delCate(cateid){
	var url="delCate.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {cateid:cateid},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
	
}










