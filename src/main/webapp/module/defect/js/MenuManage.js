////////////////////////////
//
// 加载表格内容，操作列表
//
/////////////////////////////
var $table = $('#t1');
$table.bootstrapTable({
url: "getMenuList.do", 
dataType: "json",
pagination: false,
//search: true, //显示搜索框
//sidePagination: "server", //服务端处理分页
      columns: [
					              {
						title : 'ID',
						field : 'menuid',
						align : 'center',
						valign : 'middle',
						width : '5%'
					},
					{
						title : '菜单名称',
						field : 'menuname',
						align : 'center',
						valign : 'middle',
						width : '15%',
						formatter : function(value, row, index) {
							var e = '<input type="text" class="form-control"     value="'+row.menuname+'"     onblur="updataMenu(this,\'menuname\','+row.menuid+')" >'
								return e;
							}

					},
					{
						title : '菜单url',
						align : 'center',
						valign : 'middle',
						width : '25%',
						formatter : function(value, row, index) {
							var e = '<input type="text" class="form-control"     value="'+row.menuurl+'"      onblur="updataMenu(this,\'menuurl\','+row.menuid+')" >'
								return e;
							}
					},	{
						title : '导航类型',
						align : 'center',
						valign : 'middle',
						width : '5%',
						formatter : function(value, row, index) {
							if(row.menutype==1)
								return "应用导航";
							if(row.menutype==2)
								return "分享导航";
								
							}
					},
//					{
//						title : '窗口方式',
//						align : 'center',
//						valign : 'middle',
//						width : '10%',
//							formatter : function(value, row, index) {
//		
//								
//								var 	a	=			'	<select class=\"form-control\" id=\"MenuTarget\"    onchange="updataMenu(this,\'menutarget\','+row.menuid+')"   >'
//							+	'<option      selected="selected"           value=\"_blank\">新窗口打开</option>'
//							+'	<option                        value="_self">原窗口打开</option>'
//						+'</select>' ;
//								
//								var 	b	=			'	<select class=\"form-control\" id=\"MenuTarget\"   onchange="updataMenu(this,\'menutarget\','+row.menuid+')"  >'
//									+	'<option                value=\"_blank\">新窗口打开</option>'
//									+'	<option   selected="selected"   value="_self">原窗口打开</option>'
//								+'</select>' ;
//								
//						
//								 if (row.menutarget=="_blank"){
//						
//									return a;
//								}else{
//							
//									return b;
//								}
//								 
//								 
//								 
//								 
//						}
//					},
					{
						title : '菜单排序',
						align : 'center',
						valign : 'middle',
						width : '10%',
						formatter : function(value, row, index) {
						var e = '<input type="text" class="form-control"     value="'+row.sort+'"      onblur="updataMenu(this,\'sort\','+row.menuid+')"   >'
							return e;
						}
					},
					{
						title : '操作名称',
						align : 'center',
						width : '10%',
						formatter : function(value, row, index) {
							var d = '<a href="#" mce_href="#" onclick="delMenu(\''+row.menuid + '\')">删除</a> ';
							if(row.isshow==0)
							var  f=  '<a href="#" mce_href="#" onclick="setMenuShow(\''+row.menuid + '\',1)">设置显示</a> ';
							if(row.isshow==1)	
								var  f=  '<a href="#" mce_href="#" onclick="setMenuShow(\''+row.menuid + '\',0)">设置隐藏</a> ';
							return  d+f ;
						}
					}
          ]
  });



// //////////////////////////
//
// showlayerByCreateOperation
//
// ///////////////////////////
$('#test1').on('click', function() {
	layer.open({
		title : '添加菜单',
		skin : 'layui-layer-molv',
		type : 1,
		area : [ '600px', '360px' ],
		shadeClose : true, // 点击遮罩关闭
		content : $('#ShowCreateOperation'),

	});
});
function saveMenu() {

	var MenuName = document.getElementById("MenuName").value;
	var MenuUrl = document.getElementById("MenuUrl").value;
//	alert(MenuName  +MenuUrl);
	var MenuTarget = document.getElementById("MenuTarget").value
	var sort = document.getElementById("sort").value;
	
	var menutype = document.getElementById("menutype").value
//alert(menutype);
	

	$.post('addMenu.do', {
		menuname : MenuName,
		menuurl : MenuUrl,
		menutarget: MenuTarget,
		menutype:menutype,
		sort : sort
	}, function(result) {
		layer.alert(result.msg, {
		    skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		$('#t1').bootstrapTable('refresh');
	}, "json")

}
function delMenu(menuid) {
	var url = "delMenu.do";
	$.get(url, {
		menuid : menuid
	}, function(result) {
//		alert(result.msg);
		$('#t1').bootstrapTable('refresh');
	}, "json")

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
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
			
}


function updataMenu(a,file,menuid){
//	alert("dfdsfasdf");
//	alert(a.value);
	var  value=a.value;
	var url="updataMenu.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {value:value,file:file,menuid:menuid},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
	
}



function  setMenuShow(menuid,isshow){
	
	var url="setMenuShow.do";
	$.ajax({
		type : "POST",
		url : url,
		async : false,
		data : {isshow:isshow,menuid:menuid},
		dataType : "json",
		success : function(result) {
			alert(result.msg);
			$('#t1').bootstrapTable('refresh');
		}
		
	});
	
	
}












