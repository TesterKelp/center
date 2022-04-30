



    function userlogout(){
    	$.ajax({
    		type : "GET",
    		url : "/userlogout.do",
    		async : false,
    		dataType : "text",
    		success : function(data) {
    				 location.reload()    ;
    		}
    	});			
	
    }
    
    
    
    function userLogin(){
        var	j_username  =  $("#j_username").val()  ;
        var j_password  =  $("#j_password").val()  ;
        var rememberMe  = $("#rememberMe").is(":checked") ;
      //  alert(rememberMe);
        $.ajax({
    		type : "POST",
    		url : "/module/usercenter/userlogin.do",
    		data: {j_username: j_username ,j_password: j_password ,rememberMe: rememberMe },
    		async : false,
    		dataType : "text",
    		success : function(data) {
    		//	alert(data);
    			if(data==1){
    				 location.reload()    ;
    			}else{
    				$("#info").html(data)  ;
    			}
    		}
    	});		
        
        }
    
    $.ajax({
		type : "GET",
		url : "/module/admin/GetUserId.do",
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data==0){	
				$("#login-form-logout").show()  ;
			}else{
				$("#login-form-login").show()  ;
			}
		}
	});
    
    
    
    