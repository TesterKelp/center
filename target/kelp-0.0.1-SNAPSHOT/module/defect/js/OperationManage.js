////////////////////////////
//
// 加载表格内容，操作列表
//
/////////////////////////////
var projectid=document.getElementById("projectid").value ;
//alert(projectid);
var url="GetOperationByProjectId.do?projectid="+projectid ;

//alert(url);
var $table = $('#t1');


$table.bootstrapTable({
// "getOperationList.do", 
	url:url,
dataType: "json",
pagination: false,
//search: true, //显示搜索框
//sidePagination: "server", //服务端处理分页
      columns: [
					              {
						title : 'ID',
						field : 'operationid',
						align : 'center',
						valign : 'middle',
						width : '10%'
					},
					{
						title : '英文名称',
						field : 'englishname',
						align : 'center',
						valign : 'middle',
						width : '10%',

					},
					{
						title : '中文名称',
						field : 'chinaname',
						align : 'center',
						valign : 'middle',
						width : '10%'
					},
					{
						title : '操作类型',
						field : 'operationtype',
						align : 'center',
						valign : 'middle',
						width : '10%',
						formatter : function(value, row, index) {
							if (value == 1)
								return '文本框';
							if (value == 2)
								return '下拉列表';
							if (value == 3)
								return '日期类型';
						}
					},
					{
						title : '是否显示',
						field : 'isshow',
						align : 'center',
						valign : 'middle',
						width : '10%',
						formatter : function(value, row, index) {
							if (value == 1)
								return '<font color=blue>已显示 </font>---<a href="#" onclick="setShowOrHidden(\''+row.operationid+'\',\''+row.isshow+'\')" > 设置隐藏</a>';
							if (value == 0)
								return '已隐藏---<a href="#" onclick="setShowOrHidden(\''+row.operationid+'\',\''+row.isshow+'\')" >设置显示</a>';
						}
					},
					{
						title : '主题',
				//		field : 'operationorder',
						align : 'center',
						valign : 'middle',
						width : '10%',
							
							formatter : function(value, row, index) {
								if(row.subjecttype==1){
									var f="缺陷";
								}
								if(row.subjecttype==3){
									var f="任务";
								}
								return f;
							}	
				
					},
					{
						title : '排序',
						field : 'operationorder',
						align : 'center',
						valign : 'middle',
						width : '10%'
							
					},
					{
						title : '设置',
						field : 'id',
						align : 'center',
						valign : 'middle',
						width : '10%',
						formatter : function(value, row, index) {
							var f = '<a href="#" mce_href="#" onclick="setting(\''
									+ row.operationid
									+ '\',\''
									+ row.operationtype + '\')">设置</a> ';
							return f;
						}
					},
					{
						title : '操作名称',
						align : 'center',
						width : '10%',
						formatter : function(value, row, index) {
							var e = '<a href="#" mce_href="#" onclick="editOperation(\''
									+ row.operationid + '\')">编辑</a> ';
							var d = '<a href="#" mce_href="#" onclick="delOperation(\''
									+ row.operationid + '\')">删除</a> ';

							return e + d;
						}
					}
          ]
  });

// //////////////////////////
//
// showlayerByOperationType
//
// ///////////////////////////

function setting(operationid,operationtype){
	document.getElementById("operationid").value=operationid;
	document.getElementById("operationtype").value=operationtype;
	var url ="getDefaultValue.do";
	$.ajax({
		type : "GET",
		url : url,
		async : false,
		data : {operationid:operationid,operationtype:operationtype},
		dataType : "text",
		success : function(result) {
//			alert(result.msg);
			if(operationtype==1){//			返回字符串
				var defaulttext = document.getElementById("defaulttext");
				defaulttext.value=result;
				 layer.open({
				        title:'设置默认值',
				         skin:'layui-layer-molv',
				        type: 1,
				        area: ['600px', '360px'],
				        // shadeClose: true, //点击遮罩关闭
				        content: $('#ShowSetTextDefault') ,
				    });
			}
			if(operationtype==2){//			返回list  
			//	alert("11111111111111111122222222222222222222233333333333");
				// alert("result.msg"+result);
			var defaulttext = document.getElementById("OperationText");
			defaulttext.innerHTML =result ;
			 layer.open({
			        title:'设置默认值',
			         skin:'layui-layer-molv',
			        type: 1,
			        area: ['600px', '360px'],
			        // shadeClose: true, //点击遮罩关闭
			        content: $('#ShowSetSelectDefault') ,

			    });
			
		}
			
			if(operationtype==3){//			返回字符串
				var defaulttext = document.getElementById("defaulttext");
				defaulttext.value=result.msg;
				 layer.open({
				        title:'设置默认值',
				         skin:'layui-layer-molv',
				        type: 1,
				        area: ['600px', '360px'],
				        // shadeClose: true, //点击遮罩关闭
				        content: $('#ShowSetTimeDefault') ,

				    });
			}
			
			
		}
	});
	
}

// //////////////////////////
//
// showlayerByCreateOperation
//
// ///////////////////////////
$('#test1').on('click', function() {
	layer.open({
		title : '创建操作',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '360px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowCreateOperation'),

	});
});
function saveOperation() {
	var OperationName = document.getElementById("OperationName").value;
	var EnglishName = document.getElementById("EnglishName").value;
	var OperationType = document.getElementById("OperationType").value;
	var SubjectType = document.getElementById("SubjectType").value;
	var  ProjectId= document.getElementById("projectid").value;
	alert(ProjectId);
//	alert(SubjectType);
	var url = "saveOperation.do";
	$.post('saveOperation.do', {
		OperationName : OperationName,
		EnglishName : EnglishName,
		OperationType : OperationType,
		SubjectType  : SubjectType ,
		ProjectId :ProjectId
	}, function(result) {
		layer.alert(result.msg, {
		    skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		document.getElementById("OperationName").value="";
		document.getElementById("EnglishName").value="";	
		$('#t1').bootstrapTable('refresh');
	}, "json")

}
function delOperation(operatinid) {
	var url = "delOperation.do";
	$.get(url, {
		OperationId : operatinid
	}, function(result) {
		alert(result.msg);
		$('#t1').bootstrapTable('refresh');
	}, "json")

}


function saveOperationVale() {

var operationid = document.getElementById("operationid").value
alert(operationid);
var operationtype =	document.getElementById("operationtype").value
alert(operationtype);
var operationvalue ;
	if(operationtype==1){
		operationvalue = document.getElementById("defaulttext").value
	}
	if(operationtype==2){
		operationvalue = document.getElementById("selectvalue").value
	}
	alert("operationvalue"+operationvalue);
	var url ="saveOperationVale.do";
	alert(url);
//	$.post(
//			url, 
//			{operationid:operationid,operationvalue:operationvalue,operationtype:operationtype},
//			function(result) {
////		alert(result.msg);  
//				alert("123");
//	}, "json")


	$.ajax({
		type : "POST",
		url : url,
		data : {operationid:operationid,operationvalue:operationvalue,operationtype:operationtype},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
		}
		
	});
	
	
	
	
	
	
	
	
	
	
	
}

function setShowOrHidden(operationid,isshow){
	var url="setOperationShowOrHidden.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {operationid:operationid,isshow:isshow},
		dataType : "json",
		success : function(result) {
			location.reload() ;
		}
		
	});
			
}

function  setdatasource(datasource){
	var operationid = document.getElementById("operationid").value
	var url ="setdatasource.do";
	$.post(
			url, 
			{operationid:operationid,datasource:datasource},
			function(result) {
				if(result=="setting successful"){
					alert(result.msg);
				}else{
//					alert(result.msg);
					document.getElementById("ccomment").value =result.msg ;
				}

	}, "json")
}

function  SetDataSourceSqlStr(){
	
	var operationid = document.getElementById("operationid").value ;
	var sqlstr = document.getElementById("dsql").value;
//	alert("1213");
	var url ="setDataSourceSqlStr.do" ;
	$.post(
			url, 
			{operationid:operationid,sqlstr:sqlstr},
			function(result) {
//					alert(result.msg);
	}, "json")
	
	
	
}
