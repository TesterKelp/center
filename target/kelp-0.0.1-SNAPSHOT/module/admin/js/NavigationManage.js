// //////////////////////////
//
// showlayerByCreateOperation
//
// ///////////////////////////
$('#test1').on('click', function() {
	layer.open({
		title : '添加导航',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '360px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowCreateOperation'),
	});
});
function saveNavigation() {
	var navigationName = document.getElementById("navigationName").value;
	var navigationUrl = document.getElementById("navigationUrl").value;
	var navigationTarget = document.getElementById("navigationTarget").value;
	var navigationSort = document.getElementById("navigationSort").value;
	var navigationType = document.getElementById("navigationType").value;
	$.post('addNavigation.do', {
		navigationName : navigationName,
		navigationUrl : navigationUrl,
		navigationTarget: navigationTarget,
		navigationType:navigationType,
		navigationSort : navigationSort
	}, function(result) {
		layer.alert(result.msg, {
		    skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		$('#t1').bootstrapTable('refresh');
	}, "json")

}
function delNavigation(navigationId,tableName,r) {
	var url = "delNavigation.do";
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
	var url="updataNavigation.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {value:value,fieldName:fieldName,navigationId:navigationId},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
	
}



function  setNavigationShow(navigationId,navigationShow){
	var url="setNavigationShow.do";
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












