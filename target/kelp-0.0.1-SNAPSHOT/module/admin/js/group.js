////////////////////////////
//
// 加载表格内容，分类列表
//
/////////////////////////////

var $table = $('#t1');
$table.bootstrapTable({
url: "getGroupList.do", 
dataType: "json",
//search: true, //显示搜索框
//sidePagination: "server", //服务端处理分页
      columns: [
              {
                title: 'ID',
                  field: 'groupid',
                align: 'center',
               valign: 'middle',
                width: '5%'
              },
              {
                  title: '分组名称',
                    field: 'name',
                    align: 'center',
                    valign: 'middle',
                     width: '10%',
                },
                {
                    title: '分组描述',
                      field: 'desct',
                      align: 'center',
                      valign: 'middle',
                      width: '10%'
                  },
//                  {
//                      title: '成员列表',
//                        align: 'left',
//                        valign: 'middle',
//                        width: '60%',
//				 formatter : function(value, row, index) {
//
//					var ab = ""
//					$.ajax({
//						type : "GET",
//						url : "getGroupUserList.do",
//						async : false,
//						data : {
//							groupid : row.groupid
//						},
//						dataType : "text",
//						success : function(data) {
//							// alert(data);
//							ab = ab + data;
//						}
//					});
//
//					return ab;
//
//				} 
//                    },
   
              {
                  title: '操作名称',
                  align: 'center', 
                  width: '15%' ,
                  formatter:function(value,row,index){  
                	  var g = '<a href="SetPermission.do?groupid='+ row.groupid +'">[权限设置]</a> ';  
                	  var b = '<a href="#" mce_href="#" onclick="showGroupUser(\''+row.groupid + '\')">[成员管理]</a> ';  
//                	  var e = '<a href="#" mce_href="#" onclick="edit(\''+row.groupid + '\')">[分组编辑]</a> ';  
                     
                      

						if (row.groupid == 14) {
							 var d = '[分组删除]'  ;
							} else {
								 var d = '<a href="#" mce_href="#" onclick="delGroup(\''+row.groupid +'\')">[分组删除]</a> '
							}  
                      
                      
                      
                      var f =  '<a href="SyncPermission.do?groupid='+ row.groupid +'">[权限同步]</a> ';  
                           return g+b+d+f;  
                       } 
              }
          ]

  });




function showPermission(groupid){
	 layer.open({
	        title:'权限管理',
	         skin:'layui-layer-molv',
	        type: 1,
	        area: ['800px', '360px'],
	        // shadeClose: true, //点击遮罩关闭
	        content: $('#settingPermission') ,

	    });
	
}


function showGroupUser(groupid){
	document.getElementById("group_id").value = groupid ;
	$.ajax({
		type : "GET",
		url : "getInGroupUser.do",
		async : false,
		data : {
			groupid : groupid
		},
		dataType : "text",
		success : function(data) {
//			 alert(data);
			 document.getElementById("ingroupuser").innerHTML=data ;
		}
	});
	$.ajax({
		type : "GET",
		url : "getOutGroupUser.do",
		async : false,
		data : {
			groupid : groupid
		},
		dataType : "text",
		success : function(data) {
//			 alert(data);
			 document.getElementById("outgroupuser").innerHTML=data ;
		}
	});
	
	
	 layer.open({
	        title:'成员管理',
	         skin:'layui-layer-molv',
	        type: 1,
	        area: ['950px', '520px'],
	        // shadeClose: true, //点击遮罩关闭
	        content: $('#groupUserManage') ,

	    });
	
}

//加入到组
function addusertogroup(user){

	if(user.checked==true)
	{

//		user.visibility=hidden ;
		var groupid = document.getElementById("group_id").value;
		var userid=user.value ;
		var username = user.nextSibling.nodeValue ;
//		alert("groupid:"+groupid+"qqq"+userid+"eeeee"+username);
		$.ajax({
		type : "POST",
		url : "addUserToGroup.do",
		async : false,
		data : {
			groupid : groupid,
			 userid : userid ,
			username: username,
		},
		dataType : "json",
		success : function(data) {
				var con= document.getElementById("ingroupuser").innerHTML;
				var co= document.getElementById("ingroupuser") ;
				co.innerHTML=con+"<input type='checkbox' onclick='groupdeluser(this)'  checked='false'  name='VoteOption1' value="+user.value+">"+user.nextSibling.nodeValue+"<br>";
				$('#t1').bootstrapTable('refresh');
		}
	});	
	}
}

//从组中删除
function groupdeluser(user){
	if(user.checked==false)
	{
		var groupid = document.getElementById("group_id").value;
		var userid=user.value ;
		var username = user.nextSibling.nodeValue ;
//		alert("groupid:"+groupid+"qqq"+userid+"eeeee"+username);
		$.ajax({
		type : "POST",
		url : "groupDelUser.do",
		async : false,
		data : {
			groupid : groupid,
			 userid : userid ,
		},
		dataType : "json",
		success : function(data) {
				var con= document.getElementById("outgroupuser").innerHTML;
				var co= document.getElementById("outgroupuser") ;
				co.innerHTML=con+"<input type='checkbox' onclick='addusertogroup(this)'  checked='false'  name='VoteOption1' value="+user.value+">"+user.nextSibling.nodeValue+"<br>";
				$('#t1').bootstrapTable('refresh');
		}
	});	

	
	}
	
	
	
	
	
	
}


function saveGroup(){
	var groupname = document.getElementById("groupname").value;
	var groupdesc = document.getElementById("groupdesc").value;
	
	if(groupname.trim() ==""){
		alert("请输入分组名称");
	}else{
	
	
	$.post('saveGroup.do', {
		groupname : groupname,
		groupdesc : groupdesc,
	}, function(result) {
		layer.alert(result.msg, {
		    skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		document.getElementById("groupname").value="";
		document.getElementById("groupdesc").value="";
		$('#t1').bootstrapTable('refresh');
	}, "json")
	}
	
	
	
}


function delGroup(groupid){
	$.post('delGroup.do', {
		groupid : groupid
	}, function(result) {
		layer.alert(result.msg, {
		    skin: 'layui-layer-molv' //样式类名
		    ,closeBtn: 0
		});
		$('#t1').bootstrapTable('refresh');
	}, "json")
}






