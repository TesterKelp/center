    			var $table = $('#t1');
    			$table.bootstrapTable({
    			url: "/wift/GetFaceList.do", 
    			sortName: 'interfaceid',
    			sortOrder: 'desc',
    			dataType: "json",
    			      columns: [
    			                
    			              {
    			                title: '接口ID',
    			                  field: 'interfaceid',
    			                  align: 'center',
    			                  valign: 'middle',
    			                	  width: '5%'
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
    			                  width: '25%' ,
    			                  formatter:function(value,row,index){  
    			                	  var c = '<a href="/wift/Wift_InterfaceStandardDetail.do?interfaceid='+row.interfaceid +'" >[接口详情]</a> ';
    			                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">[编辑接口未完成]</a> ';  
    			                      var d = '<a href="#" mce_href="#" onclick="delInterfaceById(\''+row.interfaceid +'\')">[删除接口]</a> ';
    			                      var g = '<a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid='+row.interfaceid +'" >[创建用例]</a> ';
    			                                      
    			                      var j = '<a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid='+row.interfaceid +'" >[查看用例未完成]</a> ';
    			                   //   return c+" - "+e+" - "+d+" - "+g+" - "+j   ;  
    			                      return c+" - "+g+" - "+d  ;  
    			                       } 
    			              }
    			                  
    			                  
    			          ]
    			  });
    			
    			
    			$.ajax({
    				type : "GET",
    				url : "/wift/GetProjectSelect.do",
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
			url : "/wift/GetModuleSelect.do",
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
    	alert(projectid +"---"+moduleid);
    	$('#t1').bootstrapTable('destroy'); 
		var $table = $('#t1');
		$table.bootstrapTable({
		url: "/wift/GetFaceListByProjectIdMoiduleId.do?projectid="+projectid+"&moduleid="+moduleid, 
		dataType: "json",
		      columns: [
		                
		              {
		                title: '接口ID',
		                  field: 'interfaceid',
		                  align: 'center',
		                  valign: 'middle',
		                	  width: '5%'
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
		                  width: '25%' ,
		                  formatter:function(value,row,index){  
		                	  var c = '<a href="/wift/Wift_InterfaceStandardDetail.do?interfaceid='+row.interfaceid +'" >[接口详情]</a> ';
		                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">[编辑接口未完成]</a> ';  
		                      var d = '<a href="#" mce_href="#" onclick="delInterfaceById(\''+row.interfaceid +'\')">[删除接口]</a> ';
		                      var g = '<a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid='+row.interfaceid +'" >[创建用例]</a> ';
		                      var j = '<a href="/wift/Wift_CreateCaseLoadPage.do?interfaceid='+row.interfaceid +'" >[查看用例未完成]</a> ';
		                      return c+" - "+e+" - "+d+" - "+g+" - "+j   ;    
		                       } 
		              }
		                  
		                  
		          ]
		  });
		
    }
    
    
    
    
    
    function delInterfaceById(interfaceid){
    	$.ajax({
			type : "GET",
			url : "/wift/Wift_DelInterfaceByInterfaceId.do",
			data: {interfaceid: interfaceid},
			async : false,
			dataType : "text",
			success : function(data) {
				alert(data);
				$('#t1').bootstrapTable('refresh');
			}
		});		
    }  
    
    
    
    
    
    
    
    			