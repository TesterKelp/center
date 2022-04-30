// // // // // // // // // // // // 
//   project  
//   
    			var $table = $('#t1');
    			$table.bootstrapTable({
    			url: "/mift/Mift_ProjectManageAjax.do", 
    			dataType: "json",
    			      columns: [
    			                
    			              {
    			                title: '项目ID',
    			                  field: 'projectid',
    			                  align: 'center',
    			                  valign: 'middle',
    			                	  width: '10%'
    			              },
    			              {
    			                  title: '项目名称',
    			                    field: 'projectname',
    			                    align: 'center',
    			                    valign: 'middle',
    			                     width: '10%',
    			                    	 
    			                },
    			                {
    			                    title: '项目介绍',
    			                      field: 'projectdesc',
    			                      align: 'center',
    			                      valign: 'middle',
    			                      width: '10%'
    			                  }, {
      			                    title: '创建时间',
  			                      field: 'createtime',
  			                      align: 'center',
  			                      valign: 'middle',
  			                      width: '10%'
  			                  }, {
    			                    title: '创建者',
    			                      field: 'realname',
    			                      align: 'center',
    			                      valign: 'middle',
    			                      width: '10%'
    			                  },
    			                  {
      			                    title: '模块管理',
  			                      align: 'center',
  			                      width: '10%',
  			                        formatter:function(value,row,index){  
      			             
      			                      var f = '<a href="#" mce_href="#" onclick="showModule(\''+row.projectid+'\')">添加</a> ';
      			                           return f;  
      			                       } 
  			                  },
    			              {
    			                  title: '操作名称',
    			                  align: 'center', 
    			                  width: '10%' ,
    			                  formatter:function(value,row,index){  
    			                	  var c = '<a href="ShareDetail.html" onclick="edit(\''+index+ '\')">查看</a> ';
    			                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">编辑</a> ';  
    			                      var d = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">删除</a> ';
    			                      var f = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">删除</a> ';
    			                           return c+e+d+f;  
    			                       } 
    			              }
    			                  
    			                  
    			          ]
    			  });
  
    			
    			
    			
    			
    			
    			
    			
    function addProject(){
    	alert("111");
    	var  projectname=	document.getElementById("projectname").value ;
    	var  projectdesc=	document.getElementById("projectdesc").value ;
    	$.ajax({
    		type : "POST",
    		url : "AddProject.do",
    		data: {projectname: projectname,projectdesc:projectdesc},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			alert(data);
    		}
    	});	
    }			
// // // // // // // // // // // // // // // // // // // // // // // // // // // // //    			
//    			
// module   			
function showModule(projectid){
    	
    	document.getElementById("projectid").value =projectid ;
    	GetModule(projectid) ;
    	
    	
    	layer.open({
    		title : '创建操作',
    		skin : 'layui-layer-molv',
    		type : 1,
    		area : [ '600px', '360px' ],
    		shadeClose : true, // 点击遮罩关闭
    		content : $('#ShowModule'),

    	});
    	
}  			
    

function GetModule(projectid){
	alert("projectid"+projectid);
		$('#t2').bootstrapTable('destroy');  
		var $table = $('#t2');
		$table.bootstrapTable({ 
		url: "GetModuleByProjectId.do?projectid="+projectid, 
		dataType: "json",
		      columns : [
				{
					title : '模块',
					field : 'modulename',
					align : 'center',
					valign : 'middle',
					width : '2%',
				},
				{
					title : '操作',
					align : 'center',
					width : '10%',
					formatter : function(value, row, index) {
						var d = '<a href="#" mce_href="#" onclick="del(\''+ index + '\')">删除</a> ';
						return d;
					}
				}
		]
		  });

	}



    			
function AddModule(){
	alert("111");
	var  modulename=	document.getElementById("modulename").value ;
	var  projectid=	document.getElementById("projectid").value ;
	$.ajax({
		type : "POST",
		url : "AddModule.do",
		data: {projectid: projectid,modulename:modulename},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});	
}  			
