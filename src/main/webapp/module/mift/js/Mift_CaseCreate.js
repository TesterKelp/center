    			$.ajax({
    				type : "GET",
    				url : "/mift/GetProjectSelect.do",
    				async : false,
    				dataType : "text",
    				success : function(data) {
    					document.getElementById("project").innerHTML = data ;
    				}
    			});

    function getmodule(){
    	var projectSelect=document.getElementById("project");  
    	var index=projectSelect.selectedIndex;
    	var projectid=projectSelect.options[index].value ;
    	$.ajax({
			type : "GET",
			url : "/mift/GetModuleSelect.do",
			data: {projectid: projectid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("module").innerHTML = data ;
			}
		});		
    }	
    
    function getInterface(){
    	var moduleSelect=document.getElementById("module");  
    	var index=moduleSelect.selectedIndex;
    	var moduleid=moduleSelect.options[index].value ;
    	$.ajax({
			type : "GET",
			url : "/mift/GetInterfaceSelect.do",
			data: {moduleid: moduleid},
			async : false,
			dataType : "text",
			success : function(data) {
				document.getElementById("InterfaceSelect").innerHTML = data ;
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
	var ue = UE.getEditor('editor');
	var content = ue.getContent();
	$.ajax({
		type : "POST",
		url : "/mift/AddFace.do",
		data : {
			projectid : projectid,
			moduleid : moduleid,
			facename : facename,
			content : content
		},
		async : false,
		dataType : "text",
		success : function(data) {
			alert(data);
		}
	});
}
    
    
    