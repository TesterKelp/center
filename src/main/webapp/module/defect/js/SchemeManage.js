$('#scheme')
		.bootstrapTable(
				{
					url : "/module/defect/JsGetSchemeList.do",
					search : false,
					pagination : true,
					pageSize : 20,
					columns : [
							{
								title : 'ID',
								field : 'scheme_id',
								align : 'center',
								valign : 'middle',
								width : '2%'
							},
							{
								title : '方案名称',
								field : 'scheme_name',
								align : 'left',
								valign : 'middle',
								width : '20%',
								
							}, {
								title : '方案标题',
								field : 'bugtitle',
								align : 'left',
								valign : 'middle',
								width : '1%',
								visible : false
							}, {
								title : '方案类型',
								align : 'center',
								valign : 'middle',
								width : '5%',
								formatter:function(value,row,index){  
							              
									var a ;
									if(row.scheme_type==1){ a= '缺陷' }
									if(row.scheme_type==3){a= '用例'  }
									if(row.scheme_type==5){ a= '待定' }
									;
							                    return a ;
							 } 	
									
									
									
							}, {
								title : '创建日期',
								field : 'scheme_createtime',
								align : 'center',
								valign : 'middle',
								width : '10%'
							}, {
								title : '创建者',
								field : 'realname',
								align : 'center',
								valign : 'middle',
								width : '3%'
							}, {
								title : '设置',
								align : 'center',
								valign : 'middle',
								width : '5%',
								 formatter:function(value,row,index){  
						               var a = '<a href="SchemeWidget.do?schemeId='+row.scheme_id+'">配置方案组件</a> ';
						                    return a ;
						                } 

							} ]
				})
        
    
				
	function  addSchmem(){
	var schemeName = document.getElementById("schemeName").value;
	var selectI = document.getElementById("schemeType").selectedIndex;
	var schemeType = document.getElementById("schemeType").options[selectI].value
	if(schemeName.trim() ==""){
		alert("请输入方案名称");
	}else{
	var url="/module/defect/AddScheme.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {schemeName:schemeName,schemeType:schemeType},
		dataType : "text",
		success : function(result) {
			window.location.href=window.location.href;
		}
	});
	}
	
	
	
}			
				
				
				
				
				
				