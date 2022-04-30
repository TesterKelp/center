
	function  zgjm(){	
		var d_title = $("#d_title").val();
		var d_word = $("#d_word").val(); 
		var d_con = $("#d_con").val(); 
		var d_username = $("#d_username").val(); 
			$.ajax({
				type : "GET",
				url : "/name/zgjm/ques.do",
				data : {
					title : d_title,
					keyword : d_word,
					con : d_con,
					username : d_username
				},
				async : false,
				dataType : "text",
				success : function(data) {
						//alert(data);
						if(data==1){
							location.reload() 	
						}	
				}
			});
	}
