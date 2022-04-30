// // // // // // // // // // // // 
//   project  
//   
    			var $table = $('#t1');
    			$table.bootstrapTable({
    			url: "/wift/InterfaceManage.do", 
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
      			                    title: '服务器管理',
  			                      align: 'center',
  			                      width: '10%',
  			                        formatter:function(value,row,index){  
      			             
      			                      var f = '<a href="#" mce_href="#" onclick="showEnvironment(\''+row.projectid+'\')">管理</a> ';
      			                           return f;  
      			                       } 
  			                  },
    			              {
    			                  title: '环境配置',
    			                  align: 'center', 
    			                  width: '10%' ,
    			                  formatter:function(value,row,index){  

    			                      var f = '<a href="#" mce_href="#" onclick="showServer(\''+row.projectid+'\')">查看</a> ';
    			                           return f;  
    			                       } 
    			              }
    			                  
    			                  
    			          ]
    			  });
  
    			
    			
    	
   function delWiftProject(projectid){  
		$.ajax({
    		type : "POST",
    		url : "/wift/DelProject.do",
    		data: {projectid:projectid},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			
    			 $("#t1").bootstrapTable('refresh');
    			 alert(data);
    			
    		}
    	});	  
   } 			
    			
    			
    
   function delWiftModule(moduleid){  
	   var  projectid=	document.getElementById("projectid").value ;
		$.ajax({
   		type : "POST",
   		url : "/wift/DelWiftMdodule.do",
   		data: {projectid:projectid,moduleid:moduleid},
   		async : false,
   		dataType : "text",
   		success : function(data) {
   			
   		 $("#t2").bootstrapTable('refresh');
   		alert(data);
   		}
   	});	  
  } 
   
   
   
   
   
    			
    			
    function addProject(){
//    	alert("111");
    	var  projectname=	document.getElementById("projectname").value ;
    	var  projectdesc=	document.getElementById("projectdesc").value ;
    	
    	if (projectname == null)
    	{
    	alert("please  enter projectname");
    	} else{
    	
    	$.ajax({
    		type : "POST",
    		url : "/wift/AddProject.do",
    		data: {projectname: projectname,projectdesc:projectdesc},
    		async : false,
    		dataType : "text",
    		success : function(data) {
    			//alert(data);
    			 $("#t1").bootstrapTable('refresh');
    		}
    	});	
    	
    	}
    }			
// // // // // // // // // // // // // // // // // // // // // // // // // // // // //    			
//    			
// module   			
function showEnvironment(projectid){
    	
    	document.getElementById("projectid").value =projectid ;
//    	GetModule(projectid) ;
    	GetEnvironment(projectid) ;
    	
    	layer.open({
    		title : '资源管理',
    		skin : 'layui-layer-molv',
    		type : 1,
    		area : [ '600px', '360px' ],
    		shadeClose : true, // 点击遮罩关闭
    		content : $('#ShowEnvironment'),

    	});
    	
}  			
    


function showServer(projectid){
	document.getElementById("projectid").value =projectid ;
//	alert(projectid);
	GetEnvironmentType(projectid);
	layer.open({
		title : '环境配置',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '460px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowServer'),
	});
} 


function GetEnvironmentType(projectid){
	$.ajax({
		type : "GET",
		url : "/wift/GetEnvironmentType.do",
		data: {projectid: projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("environment").innerHTML=data ; 
		}
	});	
}

function GetEnvironmentTypeServer(typeid){
	var projectid  = document.getElementById("projectid").value ;
	$.ajax({
		type : "GET",
		url : "/wift/GetEnvironmentTypeServer.do",
		data: {projectid: projectid ,typeid :typeid},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("environmentServer").innerHTML=data ; 
		}
	});	
}


function SaveServerValue(ServerId,Server){

	
	var ServerValue =Server.value ;
	$.ajax({
		type : "GET",
		url : "/wift/SaveServerValue.do",
		data: {ServerId: ServerId ,ServerValue :ServerValue},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});	
	
}




function GetEnvironment(projectid){
//	alert("projectid"+projectid);
		$('#t2').bootstrapTable('destroy');  
		var $table = $('#t2');
		$table.bootstrapTable({ 
		url: "/wift/GetEnvironmentByProjectId.do?projectid="+projectid, 
		dataType: "json",
		      columns : [
				{
					title : '服务器名称',
					field : 'environmentname',
					align : 'center',
					valign : 'middle',
					width : '2%',
				},
				{
					title : '操作',
					align : 'center',
					width : '10%',
					formatter : function(value, row, index) {
						var d = '<a href="#" mce_href="#" onclick="delWiftModule(\''+ row.moduleid+ '\')">删除</a> ';
						return d;
					}
				}
		]
		  });

	}



    			
function CreateEnvironment(){
	//alert("111");
	var  EnvironmentName=	document.getElementById("EnvironmentName").value ;
	var  projectid=	document.getElementById("projectid").value ;
	$.ajax({
		type : "POST",
		url : "/wift/CreateEnvironmentByProjectId.do",
		data: {EnvironmentName: EnvironmentName,ProjectId:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			 $("#t2").bootstrapTable('refresh');
		}
	});	
}  		


function CreateEnvironmentType(){
//	alert("111");
	var  TypeName=	document.getElementById("TypeName").value ;
	var  projectid=	document.getElementById("projectid").value ;
	$.ajax({
		type : "POST",
		url : "/wift/CreateEnvironmentTypeByProjectId.do",
		data: {TypeName: TypeName,ProjectId:projectid},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
			 $("#t2").bootstrapTable('refresh');
		}
	});	
}  




