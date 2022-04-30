 function getmodule(){
    	var projectSelect=document.getElementById("project");  
    	var index=projectSelect.selectedIndex;
    	var projectid=projectSelect.options[index].value ;
    	$.ajax({
    		
    		
			type : "GET",
			url : "/wift/GetModuleSelect.do",
			data: {projectid: projectid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("module").innerHTML = data ;
				
			}
		});		
    	
    	$.ajax({
			type : "GET",
			url : "/wift/GetEnvironmentInit.do",
			data: {projectid: projectid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("environment").innerHTML = data ;
			}
		});	
    	
    	
    	
    	
    }	
    
    function getInterface(){
    	var moduleSelect=document.getElementById("module");  
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
    
    
	    function getInterfaceInfo(){
		
	    	var InterfaceSelect=document.getElementById("InterfaceSelect");  
	    	var index=InterfaceSelect.selectedIndex;
	    	var Interfaceid=InterfaceSelect.options[index].value ;
	    	$.ajax({
				type : "GET",
				url : "/wift/GetInterfaceInfo.do",
				data: {interfaceid: Interfaceid},
				dataType : "json",
				success : function(data) {
					document.getElementById("interfaceaddress").value=data[0].directories ;
					document.getElementById("environmen").value=data[0].environmentname ;
					//alert(data[0].environmentname );
					var  typ= data[0].requesttype ;
			 		 var s = document.getElementById("type");  
			 	    var ops = s.options;  
			 	    for(var i=0;i<ops.length; i++){  
			 	        var tempValue = ops[i].value;  
			 	        if(tempValue == typ)  
			 	        {  
			 	            ops[i].selected = true;  
			 	        }  
			 	    }  
			 		
			 		
			 		
			 		
			 		
					
				}
			});		
	    }		
    
    
    
    
    
    
    


    function AddFace() {
	var projectSelect = document.getElementById("project");
	var index = projectSelect.selectedIndex;
	var projectid = projectSelect.options[index].value;
	
	var moduleSelect = document.getElementById("module");
	var index1 = moduleSelect.selectedIndex;
	var moduleid = moduleSelect.options[index1].value;
	var facename = document.getElementById("title").value;
	var directories = document.getElementById("directories").value;
	
	var requesttypeindex = document.getElementById("requesttype").selectedIndex;
	var requesttype = document.getElementById("requesttype").options[requesttypeindex].value;
	
	var ue = UE.getEditor('editor');
	var content = ue.getContent();
	$.ajax({
		type : "POST",
		url : "/wift/AddFace.do",
		data : {
			projectid : projectid,
			moduleid : moduleid,
			facename : facename,
			content : content,
			directories:directories,
			requesttype:requesttype
		},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});
}
    	
    		
    			
    			
    function AssertionBeforeInsertRow(s){
    	alert("ddfd");
    	var i = 1;
    	var o = document.getElementById("AssertionSource");
    	var c = document.getElementById("c5");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
    	newTR.style.visibility="visible";
    }
    function AssertionAfterInsertRow(s){
    	var i = 1;
    	var o = document.getElementById("AssertionSource");
    	var c = document.getElementById("c5");
    	var newTR = o.cloneNode(true);
    	newTR.setAttribute("id", "no"); 
    	var i = s.parentNode.parentNode.rowIndex;
    	if (c.parentNode.lastChild == s.parentNode.parentNode) {
    		c.parentNode.appendChild(newTR);
    	} else {
    		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
    	}
    	newTR.style.visibility="visible";
    }	
    			
    function AssertionDeleteRow(row){
    	var i = row.parentNode.parentNode.rowIndex;
    	document.getElementById('Assertion').deleteRow(i);
    }				
    		

    
    
    
    
    
    
    
    
    
    
    
    			