
			
					$.ajax({
						type : "GET",
						url : "getCompanyInfo.do",
						async : false,
						dataType : "json",
						success : function(result) {

//							 alert(result[0].companyname);
							 document.getElementById("companyname").value=result[0].companyname  ;
							 document.getElementById("telephone").value=result[0].telephone  ;
							 document.getElementById("fox").value=result[0].fox  ;
							 document.getElementById("address").value=result[0].address  ;
							 document.getElementById("pz").value=result[0].pz  ;
							 document.getElementById("webaddress").value=result[0].webaddress  ;
							 document.getElementById("inwebaddress").value=result[0].inwebaddress  ;
						}
					});
					
					
					
					
					
					
					
					
	function  saveCompanyInfo(){
		
		var  companyname =	 document.getElementById("companyname").value ;
		var  telephone =	 document.getElementById("telephone").value  ;
		var  fox =	  document.getElementById("fox").value ;
		var  address =	 document.getElementById("address").value  ;
		var  pz =	 document.getElementById("pz").value  ;
		var  webaddress =	 document.getElementById("webaddress").value ;
		var  inwebaddress =	 document.getElementById("inwebaddress").value ;
		
//		alert(companyname);
		
					 $.ajax({
                         type: "POST",
                         url: "saveCompanyInfo.do",
//                         contentType: "application/json",
                         contentType: "application/x-www-form-urlencoded",
                         dataType: "json",
//                         data:{'companyname':'companyname','telephone':'telephone','fox':'fox','address':'address','pz':'pz','webaddress':'webaddress','inwebaddress':'inwebaddress'},  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",
//                         data: JSON.stringify({companyname:'companyname',telephone:'telephone',fox:'fox',address:'address',pz:'pz',webaddress:'webaddress',inwebaddress:'inwebaddress'}),  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",                   
                         
//                         data: JSON.stringify({companyname:"companyname",telephone:"telephone",fox:"fox",address:"address",pz:"pz",webaddress:"webaddress",inwebaddress:"inwebaddress"}),  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",
                         data: {companyname:companyname,telephone:telephone,fox:fox,address:address,pz:pz,webaddress:webaddress,inwebaddress:inwebaddress},
                         success: function(msg) {
                             alert("Data Saved: " + msg.msg);
                         }
					
					 });
					
	}				
	
	
	
	
	
	
	function getCompanyInfo(){
		
		
		$.ajax({
			type : "GET",
			url : "getCompanyInfo.do",
			async : false,
			dataType : "json",
			success : function(result) {

//				 alert(result[0].companyname);
				 document.getElementById("companyname").value=result[0].companyname  ;
				 document.getElementById("telephone").value=result[0].telephone  ;
				 document.getElementById("fox").value=result[0].fox  ;
				 document.getElementById("address").value=result[0].address  ;
				 document.getElementById("pz").value=result[0].pz  ;
				 document.getElementById("webaddress").value=result[0].webaddress  ;
				 document.getElementById("inwebaddress").value=result[0].inwebaddress  ;
			}
		});
		
		
	}
	
	
	
	
	
	
	
	