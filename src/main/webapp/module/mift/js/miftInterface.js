    			var $table = $('#t1');
    			$table.bootstrapTable({
    			url: "/mift/GetFaceList.do", 
    			dataType: "json",
    			      columns: [
    			                
    			              {
    			                title: '接口ID',
    			                  field: 'interfaceid',
    			                  align: 'center',
    			                  valign: 'middle',
    			                	  width: '10%'
    			              },
    			              {
    			                  title: '接口名',
    			                    field: 'interfacename',
    			                    align: 'center',
    			                    valign: 'middle',
    			                     width: '10%',
    			                    	 
    			                },
    			                {
    			                    title: '所属项目',
    			                      field: 'projectname',
    			                      align: 'center',
    			                      valign: 'middle',
    			                      width: '10%'
    			                  },  {
        			                    title: '所属模块',
        			                      field: 'modulename',
        			                      align: 'center',
        			                      valign: 'middle',
        			                      width: '10%'
        			                  },{
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
    			                  title: '操作名称',
    			                  align: 'center', 
    			                  width: '10%' ,
    			                  formatter:function(value,row,index){  
    			                	  var c = '<a href="Mift_InterfaceDetail.do?interfaceid='+row.interfaceid +'" >查看</a> ';
//    			                	  var c = '<a href="InterfaceDetail.do?interfaceid='+ +'" >查看</a> ';
    			                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">编辑</a> ';  
    			                      var d = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">删除</a> ';
    			                      var f = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">用例</a> ';
    			                           return c+e+d+f;  
    			                       } 
    			              }
    			                  
    			                  
    			          ]
    			  });
    			
    			
    			$.ajax({
    				type : "GET",
    				url : "/mift/GetProjectSelect.do",
    				async : false,
    				dataType : "text",
    				success : function(data) {
//    					alert(data);
    					document.getElementById("projectSelect").innerHTML = data ;
    				}
    			});			
    		
    			
    			
    function getmodule(){
    	var projectSelect=document.getElementById("projectSelect");  
    	var index=projectSelect.selectedIndex;
    	var projectid=projectSelect.options[index].value ;
    	$.ajax({
			type : "GET",
			url : "/mift/GetModuleSelect.do",
			data: {projectid: projectid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("moduleSelect").innerHTML = data ;
			}
		});		
    }		
    			
    			
    		
    
    function search(){
    	var projectSelect=document.getElementById("projectSelect");  
    	var index=projectSelect.selectedIndex;
    	var projectid=projectSelect.options[index].value ;
    	
    	var moduleSelect=document.getElementById("moduleSelect");  
    	var index1=moduleSelect.selectedIndex;
    	var moduleid=moduleSelect.options[index1].value ;
    	
    	alert(projectid +moduleid);
    	
    	$('#t1').bootstrapTable('destroy'); 
		var $table = $('#t1');
		$table.bootstrapTable({
		url: "/mift/GetFaceListByProjectIdMoiduleId.do?projectid="+projectid+"&moduleid="+moduleid, 
		dataType: "json",
		      columns: [
		                
		              {
		                title: '接口ID',
		                  field: 'interfaceid',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '10%'
		              },
		              {
		                  title: '接口名',
		                    field: 'interfacename',
		                    align: 'center',
		                    valign: 'middle',
		                     width: '10%',
		                    	 
		                },
		                {
		                    title: '所属项目',
		                      field: 'projectname',
		                      align: 'center',
		                      valign: 'middle',
		                      width: '10%'
		                  },  {
			                    title: '所属模块',
			                      field: 'modulename',
			                      align: 'center',
			                      valign: 'middle',
			                      width: '10%'
			                  },{
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
		                  title: '操作名称',
		                  align: 'center', 
		                  width: '10%' ,
		                  formatter:function(value,row,index){  
		                	  var c = '<a href="ShareDetail.html" onclick="edit(\''+index+ '\')">查看</a> ';
		                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">编辑</a> ';  
		                      var d = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">删除</a> ';
		                      var f = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">用例</a> ';
		                           return c+e+d+f;  
		                       } 
		              }
		                  
		                  
		          ]
		  });
		
    }
    
    
    
    
    
    
    
    
    
    
    
    
    			