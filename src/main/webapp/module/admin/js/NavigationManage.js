// //////////////////////////
//
// showlayerByCreateOperation
//
// ///////////////////////////
$('#test1').on('click', function() {
	LoadNavigationTypeSelect() ;
	layer.open({
		title : '添加导航',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '420px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowCreateOperation'),
	});
});

function LoadNavigationTypeSelect(){
	
	$.ajax({
		type : "GET",
		url : "/module/admin/NavigationTypeList.do",
		async : false,
		dataType : "text",
		success : function(data) {
		//	alert(data);
			var lm ="";
			var  o = JSON.parse(data);
			for(var i=0;i<o.length;i++){
			lm=lm+"<option value='"+o[i].navigation_type_id+"'>"+o[i].navigation_type_name+"</option>" ;
			}
			var  n=	document.getElementById("navigationType") ;
		//	alert(lm);
			n.innerHTML = lm ;
			
		}
	});	
	
	
	
	
}


//////// // // // // // // // // // // // // // //   // // // // // // // // 
//导航类型（NavigationType）管理
$('#test2').on('click', function() {
	LoadNavigationTypeList();
	layer.open({
		title : '导航类型管理',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '500px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowNavigationType'),
	});
});

function LoadNavigationTypeList(){
	 $('#t5').bootstrapTable('destroy');  
		var $table = $('#t5');
		$table.bootstrapTable({ 
		url: "/module/admin/NavigationTypeList.do", 
		dataType: "json",
		      columns : [
				{
					title : '类型ID',
					field : 'navigation_type_id',
					align : 'center',
					valign : 'middle',
					width : '2%',
				},
				{
								title : '类型名称',
								field : 'navigation_type_name',
								align : 'center',
								valign : 'middle',
								width : '2%',
				},
				{
					title : '操作',
					align : 'center',
					width : '10%',
					formatter : function(value, row, index) {
						// var d = '<a href="#" mce_href="#" onclick="DelServer(\''+ row.navigation_type_id + '\')">删除</a> ';
						return "";
					}
				}
		]
		  });
		
	}


function saveNavigationType() {
var  navigationTypeName=	document.getElementById("navigationTypeName").value ;
if (navigationTypeName == null)
{
alert("please  enter navigationTypeName");
} else{
$.ajax({
	type : "POST",
	url : "/module/admin/AddNavigationType.do",
	data: {navigationTypeName: navigationTypeName},
	async : false,
	dataType : "text",
	success : function(data) {
		if(data=='1'){
			 $("#t5").bootstrapTable('refresh');
			 //LoadNavigationTypeList();
		}else{
			alert("faile");	
		}
		
		
	}
});	

}
}




function saveNavigation() {
	var navigationName = document.getElementById("navigationName").value;
	var navigationUrl = document.getElementById("navigationUrl").value;
	var navigationTarget = document.getElementById("navigationTarget").value;
	var navigationSort = document.getElementById("navigationSort").value;
	var navigationType = document.getElementById("navigationType").value;
	var navigationIcon = document.getElementById("navigationIcon").value;
	$.post('/module/admin/addNavigation.do', {
		navigationName : navigationName,
		navigationUrl : navigationUrl,
		navigationTarget: navigationTarget,
		navigationType:navigationType,
		navigationIcon:navigationIcon,
		navigationSort : navigationSort
	}, function(result) {
		layer.alert(result.msg, { skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0});
		$('#t1').bootstrapTable('refresh');
	}, "json")

}
function delNavigation(navigationId,tableName,r) {
	var url = "/module/admin/delNavigation.do";
	$.get(url, {
		navigationId : navigationId
	}, function(result) {
		alert(result.msg);
		var i=r.parentNode.parentNode.rowIndex;
		document.getElementById(tableName).deleteRow(i);
		$('#'+tableName).bootstrapTable('refresh');
	}, "json")

}



function updataNavigation(self,fieldName,navigationId){
	var  value=self.value;
	var url="/module/admin/updataNavigation.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {value:value,fieldName:fieldName,navigationId:navigationId},
		dataType : "json",
		success : function(result) {
			//alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
	
}



function  setNavigationShow(navigationId,navigationShow){
	var url="/module/admin/setNavigationShow.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {navigationId:navigationId,navigationShow:navigationShow},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}	
	});
}












