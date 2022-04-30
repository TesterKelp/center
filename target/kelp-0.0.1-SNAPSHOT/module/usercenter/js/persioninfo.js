		$.ajax({
						type : "GET",
						url : "getPersonInfo.do",
						async : false,
						dataType : "json",
						success : function(result) {
							 document.getElementById("username").value=result[0].username  ;
//							 document.getElementById("avatar").value=result[0].useravatar  ;
							 document.getElementById("avatar").src=result[0].useravatar  ;
							 document.getElementById("email").value=result[0].useremail ;
							 document.getElementById("realname").value=result[0].realname  ;
							 document.getElementById("englishname").value=result[0].englishname  ;
							 document.getElementById("qq").value=result[0].qq  ;
							 document.getElementById("telephone").value=result[0].telephone  ;						  
						}
					});
		
		
		function  EditPersionInfo(){

		var username =	document.getElementById("username").value  ;
		var	avatar = document.getElementById("av").value ;
		var	email  = document.getElementById("email").value;
		var   realname=document.getElementById("realname").value ;
		var	englishname= document.getElementById("englishname").value  ;
		var	qq= document.getElementById("qq").value  ;
		var	telephone= document.getElementById("telephone").value  ;			
		$.ajax({
			type : "POST",
			url : "editPersonInfo.do",
			async : false,
				data : {
					username : username,
					avatar : avatar ,
					email : email,
					realname: realname ,
					englishname :englishname,
					qq :qq ,
					telephone :telephone
				},
			dataType : "json",
			success : function(result) {
				if(result.msg =="ok")		{
					alert("修改成功");
				}		  
			}
		});
		}