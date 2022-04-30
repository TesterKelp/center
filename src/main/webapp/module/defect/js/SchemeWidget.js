////////////////////////////
//
// 加载表格内容，操作列表
//
/////////////////////////////
var schemeId= document.getElementById("schemeId").value
var url="JsGetSchemeWidgetList.do?schemeId="+schemeId ;
var $table = $('#t1');
$table.bootstrapTable({
	url:url,
dataType: "json",
pagination: false,
//search: true, //显示搜索框
//sidePagination: "server", //服务端处理分页
      columns: [
					              {
						title : 'ID',
						field : 'widget_id',
						align : 'center',
						valign : 'middle',
						width : '10%'
					},
					{
						title : '英文名称',
						field : 'widget_english_name',
						align : 'center',
						valign : 'middle',
						width : '10%',

					},
					{
						title : '中文名称',
						field : 'widget_china_name',
						align : 'center',
						valign : 'middle',
						width : '10%'
					},
					{
						title : '操作类型',
						field : 'widget_type',
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
						field : 'widget_show',
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
						title : '排序',
						field : 'widget_order',
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
									+ row.widget_id
									+ '\',\''
									+ row.widget_type + '\')">设置</a> ';
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

function setting(widgetId,widgetType){
	document.getElementById("vauleWidgetId").value=widgetId;
	document.getElementById("vauleWidgetType").value=widgetType;
	var url ="getWidgetDefaultValue.do";
	$.ajax({
		type : "GET",
		url : url,
		async : false,
		data : {widgetId:widgetId,widgetType:widgetType},
		dataType : "text",
		success : function(result) {
			if(widgetType==1){//			返回字符串
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
			if(widgetType==2){
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
			
			if(widgetType==3){//			返回字符串
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
		title : '添加组件',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '360px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowCreateOperation'),

	});
});

function addWidget() {
	var widgetType = document.getElementById("widgetType").value;
	var widgetEnglishName = document.getElementById("widgetEnglishName").value;
	var widgetChinaName = document.getElementById("widgetChinaName").value;
	var  schemeId= document.getElementById("schemeId").value;
	$.post('addWidget.do', {
		widgetType : widgetType,
		widgetEnglishName : widgetEnglishName,
		widgetChinaName : widgetChinaName,
		schemeId  : schemeId 
	}, function(result) {
		layer.alert(result.msg, {skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		document.getElementById("widgetEnglishName").value="";
		document.getElementById("widgetChinaName").value="";	
		$('#t1').bootstrapTable('refresh');
	}, "json")
}
function delOperation(operatinid) {
	var url = "delOperation.do";
	$.get(url, {
		OperationId : operatinid
	}, function(result) {
//		alert(result.msg);
		$('#t1').bootstrapTable('refresh');
	}, "json")

}


function saveWidgetValue() {
	var widgetId = document.getElementById("vauleWidgetId").value;
	var widgetType = document.getElementById("vauleWidgetType").value;
	var valueText;
	if (widgetType == 1) {valueText = document.getElementById("defaulttext").value;}
	if (widgetType == 2) {valueText = document.getElementById("selectvalue").value;}
	var url = "saveWidgetValue.do";
	$.ajax({
		type : "POST",
		url : "saveWidgetValue.do",
		data : {widgetId : widgetId,valueText : valueText,widgetType : widgetType},
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
