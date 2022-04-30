////////
///
//
//
//
//
////////////////////////

function  setProject(projectId){
	var url ="setProjectId.do" ;
	$.get(
			url, 
			{projectId:projectId},
			function(result) {
					alert(result.msg);
			if(result.msg=="ok"){
				alert(" change project Succesfull !");
				location.reload() ;
			}else{
				alert(" change project failed !");
			}	
	}, "json")
	
	
	
}
