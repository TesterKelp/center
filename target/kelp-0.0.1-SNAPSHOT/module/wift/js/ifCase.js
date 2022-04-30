	var $table = $('#t1');
    			$table.bootstrapTable({
    			url: "/wift/IfCaseList.do", 
    			dataType: "json",
    			      columns: [
    			                
    			              {
    			                title: '用例ID',
    			                  field: 'interface_case_id',
    			                  align: 'center',
    			                  valign: 'middle',
    			                	  width: '5%'
    			              },
    			              {
    			                  title: '接口用例名称',
    			                    field: 'interface_case_name',
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
    			                  width: '20%' ,
    			                  formatter:function(value,row,index){  
//    			                	  var c = '<a href="/wift/Wift_CaseDetail.do?caseid='+row.interface_case_id +'" >查看</a> ';
//    			                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">编辑</a> ';  
//    			                      var d = '<a href="#" mce_href="#" onclick="del(\''+index +'\')">删除</a> ';
//    			                      var f = '    <a href="#" mce_href="#" onclick="del(\''+index +'\')">211用例</a>   ';
//    			                           return c+e+d+f;  
    			                           
    			                           
    			                           var c = '<a href="/wift/Wift_CaseDetailById.do?caseid='+row.interface_case_id +'" >【查看用例】</a> ';
    	    			                   var e = '<a href="#" mce_href="#" onclick="edit(\''+index + '\')">【编辑用例】</a> ';  
    	    			                   var d = '<a href="#" mce_href="#" onclick="DelInterfaceTestCaseById(\''+row.interface_case_id+'\')">【删除用例】</a> ';
    	    			                           return c+" - "+e+" - "+d;     
    			                           
    			                           
    			                           
    			                           
    			                           
    			                           
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
    			
    			
    		    function getInterface(){
    		    	var moduleSelect=document.getElementById("moduleSelect");  
    		    	var index=moduleSelect.selectedIndex;
    		    	var moduleid=moduleSelect.options[index].value ;
    		    	$.ajax({
    					type : "GET",
    					url : "/wift/GetInterfaceSelect.do",
    					data: {moduleid: moduleid},
    					async : false,
    					dataType : "text",
    					success : function(data) {
    						document.getElementById("InterfaceSelect").innerHTML = data ;
    					}
    				});		
    		    }				
    			
    			

    			function DelInterfaceTestCaseById(caseid){
        			
        			$.ajax({
    					type : "POST",
    					url : "/wift/DelInterfaceTestCaseById.do",
    					data: {caseid: caseid},
    					async : false,
    					dataType : "text",
    					success : function(data) {
    						alert(data);
    						$('#t1').bootstrapTable('refresh');
    					}
    				});		
        			
        			
        		}	
        			
    			
    			