$(document).ready(function(){
	$("#submit").click(function(){					   				   
		var hasError = false;
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		
		var nameVal = $("#name").val();
		if(nameVal == '') {
			$("#name").parent().addClass("error");
			hasError = true;
		}else{
			$("#name").parent().removeClass("error");
		}
		
		var emailFromVal = $("#emailFrom").val();
		if(emailFromVal == '') {
			$("#emailFrom").parent().addClass("error");
			hasError = true;
		} else if(!emailReg.test(emailFromVal)) {	
			$("#emailFrom").parent().addClass("error");
			hasError = true;
		}else{
			$("#emailFrom").parent().removeClass("error");
		}
		
		var subjectVal = $("#subject").val();
		if(subjectVal == '') {
			$("#subject").parent().addClass("error");
			hasError = true;
		}else{
			$("#subject").parent().removeClass("error");
		}
		
		var messageVal = $("#message").val();
		if(messageVal == '') {
			$("#message").parent().addClass("error");
			hasError = true;
		}else{
			$("#message").parent().removeClass("error");
		}
		
		
		if(hasError == false) {
			$(this).hide();
			$("#sendEmail .submit").append('<div class="formloading">loading...</div>');
			
			$.post("contactform/sendemail.php",
   				{ emailFrom: emailFromVal, subject: subjectVal, message: messageVal },
   					function(data){
						$("#sendEmail").slideUp("normal", function() {				   
							$("#sendEmail").before('<div class="sucess"><strong>Success</strong> - Your email was sent.</div>');											
						});
   					}
				 );
		}
		
		return false;
	});						   
});
