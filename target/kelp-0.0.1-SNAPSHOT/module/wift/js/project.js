/*
 *   load  project  list
 */
loadproject();

//加载项目数据
function loadproject(){
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
    			                	  width: '7%'
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
  			                      width: '14%'
  			                  }, {
    			                    title: '创建者',
    			                      field: 'realname',
    			                      align: 'center',
    			                      valign: 'middle',
    			                      width: '7%'
    			                  },
//    			                  {
//      			                    title: '模块管理',
//  			                      align: 'center',
//  			                      width: '10%',
//  			                        formatter:function(value,row,index){  
//      			             
//      			                      var f = '<a href="#" mce_href="#" onclick="showModule(\''+row.projectid+'\')">管理</a> ';
//      			                           return f;  
//      			                       } 
//  			                  },  {
//    			                    title: '服务器管理',
//    			                      align: 'center',
//    			                      width: '10%',
//    			                        formatter:function(value,row,index){  
//        			             
//        			                      var f = '<a href="#" mce_href="#" onclick="showModuleServer(\''+row.projectid+'\')">管理</a> ';
//        			                           return f;  
//        			                       } 
//    			                  },  {
//    			                    title: '环境配置',
//    			                      align: 'center',
//    			                      width: '10%',
//    			                        formatter:function(value,row,index){  
//        			             
//        			                      var f = '<a href="#" mce_href="#" onclick="showModuleAddress(\''+row.projectid+'\')">配置</a> ';
//        			                           return f;  
//        			                       } 
//    			                  }
//    			                  ,
    			              {
    			                  title: '操作名称',
    			                  align: 'center', 
    			                  width: '20%' ,
    			                  formatter:function(value,row,index){  

    			                	  var a = '<a href="#" mce_href="#" onclick="showModule(\''+row.projectid+'\')"> [模块管理]</a> ';
    			                	  
    			                	  var b = '<a href="#" mce_href="#" onclick="showModuleServer(\''+row.projectid+'\')"> [服务器管理]</a> ';
    			                	  
    			                	  var c = '<a href="#" mce_href="#" onclick="showModuleAddress(\''+row.projectid+'\')"> [环境配置]</a> ';
    			                	  
    			                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+row.projectid+ '\')">编辑 未实现</a> ';  
    			                      var f = '<a href="#" mce_href="#" onclick="delWiftProject(\''+row.projectid+'\')"> [删除项目]</a> ';
    			                           return a+"--"+b+"--"+c+"--"+f;  
    			                       } 
    			              }
    			                  
    			                  
    			          ]
    			  });
  
} 			
    			
    			
    			
    			
    			
//  添加项目  			
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
  
    
  //删除项目
             
    function delWiftProject(projectid){  
//    	alert(projectid);
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
    
/* module magnage 
* 展示弹窗
*/
function showModule(projectid){	
    	document.getElementById("projectid").value =projectid ;
    	GetModule(projectid) ;
    	layer.open({
    		title : '模块管理',
    		skin : 'layui-layer-molv',
    		type : 1,
    		area : [ '600px', '550px' ],
    		shadeClose : true, // 点击遮罩关闭
    		content : $('#ShowModule'),
    	});  	
}  

//获取模块表格数据
function GetModule(projectid){
//	alert("projectid"+projectid);
		$('#t2').bootstrapTable('destroy');  
		var $table = $('#t2');
		$table.bootstrapTable({ 
		url: "/wift/GetModuleByProjectId.do?projectid="+projectid, 
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
						var d = '<a href="#" mce_href="#" onclick="delWiftModule(\''+ row.moduleid + '\')">删除</a> ';
						return d;
					}
				}
		]
		  });

	}

//添加模块数据
function AddModule(){
//	alert("111");
	var  modulename=	document.getElementById("modulename").value ;
	var  projectid=	document.getElementById("projectid").value ;
	$.ajax({
		type : "POST",
		url : "/wift/AddModule.do",
		data: {projectid: projectid,modulename:modulename},
		async : false,
		dataType : "text",
		success : function(data) {
//			alert(data);
			document.getElementById("modulename").value="";
			 $("#t2").bootstrapTable('refresh');
		}
	});	
} 


//删除模块
function delWiftModule(moduleid){  
//	alert("ff");
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





/********
 * 环境配置
 * 
 * 
 */   


function showModuleAddress(projectid){
	document.getElementById("addressprojectid").value =projectid ;
	document.getElementById("servertype").innerHTML="" ;
	LoadEnvironmentTypeModule(projectid);
	layer.open({
		title : '环境配置',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '550px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowModuleAddress'),
	});  	
} 



function LoadEnvironmentTypeModule(projectid) {
	$.ajax({
		type : "GET",
		url : "/wift/GetEnvironmentType.do",
		data : {
			projectid : projectid
		},
		async : false,
		dataType : "text",
		success : function(data) {
			document.getElementById("entype").innerHTML = data;
		}
	});
	var defaulttypeid = document.getElementById("defaulttypeid").value;
	if (defaulttypeid != null) {
		GetEnvironmentTypeServer(defaulttypeid);
	}
}

         
function CreateEnvironmentType() {
	
	var  projectid  =document.getElementById("addressprojectid").value ;
    var  TypeName  = document.getElementById("EnvironmentType").value  ;
//	alert(projectid+"7777"+TypeName);
	
	if (TypeName == null)
	{
	alert("please  enter TypeName");
	} else{
	$.ajax({
		type : "POST",
		url : "/wift/CreateEnvironmentTypeByProjectId.do",
		data : {
			ProjectId : projectid,TypeName:TypeName
		},
		async : false,
		dataType : "text",
		success : function(data) {
//			alert(data);
			LoadEnvironmentTypeModule(projectid) ;
			document.getElementById("EnvironmentType").value="";
		}
	});
	}
}




//点击环境名称 加载该环境下对应的 服务器地址

function GetEnvironmentTypeServer(typeid){	
	var  projectid=	document.getElementById("addressprojectid").value ;
//	alert(typeid+""+projectid);
	
	$('#servertype').bootstrapTable('destroy');  
	var $table = $('#servertype');
	$table.bootstrapTable({ 
	url: "/wift/GetEnvironmentTypeServer.do?projectid="+projectid+"&typeid="+typeid,
//	url: "/wift/GetEnvironmentTypeServer.do",
	dataType: "json",
//	queryParams:function (params)
//	{var    paramss = {projectid: $("#projectid"),typeid: $("#typeid")} return paramss;},
//	
	      columns : [
			{
				title : '服务器名称',
				field : 'environmentname',
				align : 'center',
				valign : 'middle',
				width : '10%',
			}
			,
			{
				title : '服务器地址',
				align : 'center',
				width : '50%',
				formatter : function(value, row, index) {
					var d = '<input type="text" class="form-control"  onchange="saveServerValue(\''+ row.serverid + '\',this,\''+row.servervalue+'\')" style="height:30px"  value="'+row.servervalue+'"    id="projectid">' ;
					return d;
				}
			}
	]
	  });
	
	
}
//https://blog.csdn.net/qq_34291570/article/details/92850123


function saveServerValue(serverid,server,oldvalue){
	var value =server.value ;
//	alert(serverid+"+---+"+value);
//	alert(oldvalue);
	console.log(value);
	console.log(oldvalue);
	if(value!=oldvalue){
	$.ajax({
		type : "GET",
		url : "/wift/SaveServerValue.do",
		data: {serverid:serverid,servervalue:value},
		async : false,
		dataType : "text",
		success : function(data) {
		alert(data);
		
		}
	});
	}
	
}










//// // // // // // // // // // // // // // // // //   // // // // // // // // 
//服务器管理
function showModuleServer(projectid){
	document.getElementById("serverprojectid").value =projectid ;
//alert(projectid);
LoadServerModule(projectid);
	layer.open({
		title : '服务器管理1',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '550px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowModuleServer'),
	});  	
}

function LoadServerModule(projectid){
	 $('#t5').bootstrapTable('destroy');  
		var $table = $('#t5');
		$table.bootstrapTable({ 
		url: "/wift/GetEnvironmentByProjectId.do?projectid="+projectid, 
		dataType: "json",
		      columns : [
				{
					title : '设备名称',
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
						var d = '<a href="#" mce_href="#" onclick="DelServer(\''+ row.environmentid + '\')">删除</a> ';
						return d;
					}
				}
		]
		  });
		
	}

function CreateServer(projectid){
	 var  EnvironmentName =	document.getElementById("EnvironmentName").value ;
	 var  projectid=	document.getElementById("serverprojectid").value ;
//	 alert(EnvironmentName+"-----"+projectid);
		$.ajax({
		type : "POST",
		url : "/wift/CreateEnvironmentByProjectId.do",
		data: {ProjectId:projectid,EnvironmentName:EnvironmentName},
		async : false,
		dataType : "text",
		success : function(data) {
		 $("#t5").bootstrapTable('refresh');
		 document.getElementById("EnvironmentName").value="";
		alert(data);
		}
	});	  
}


function DelServer(environmentid){

//	 alert("environmentid-----"+environmentid);
		$.ajax({
		type : "POST",
		url : "/wift/DelEnvironment.do",
		data: {environmentid:environmentid},
		async : false,
		dataType : "text",
		success : function(data) {
		 $("#t5").bootstrapTable('refresh');
		alert(data);
		}
	});	  
}			
 			







 
 





