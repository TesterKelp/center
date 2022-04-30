
			
					$.ajax({
						type : "GET",
						url : "getEmailInfo.do",
						async : false,
						dataType : "json",
						success : function(result) {

//							 alert(result[0].companyname);
							 document.getElementById("fromemail").value=result[0].fromemail  ;
							 document.getElementById("fromname").value=result[0].fromname  ;
							 document.getElementById("smtpserver").value=result[0].smtpserver ;
							 document.getElementById("smtpport").value=result[0].smtpport  ;
							 document.getElementById("smtpname").value=result[0].smtpname  ;
							 document.getElementById("smtppass").value=result[0].smtppass  ;

							 
							 if(result[0].isued==1){
								 
							 }else{
								 
								 
							 }
							 
							 
							 
							 if(result[0].istry==1){
								 
							 }else{
								 
								 
							 }
							 
							 
							 
						}
					});
					
					
					
					
					
					
					
	function  SendEmail(){
		alert("sendemail");
		$.ajax({
			type : "GET",
			url : "SendEmail.do",
			async : false,
			dataType : "json",
			success : function(result) {
					alert(result);

			}
		});
		
		
	}
					
					
					
					
					
					
					
					
					
					
					
					
					