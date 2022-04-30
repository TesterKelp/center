<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="favicon.ico">
<link href="../../test/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="../../test/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link
	href="../../test/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="../../test/css/defect.css" rel="stylesheet">
<link href="../../test/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<div id="defect">
		<div class="defect_top">
			<auto:DefectMenu></auto:DefectMenu>
			<auto:LoginInfo></auto:LoginInfo> 
		</div>
	</div>
	<br>
	<br>
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-content">
				<div class="row row-lg">
					<div class="col-sm-12" style="min-height: 850px;">
						<!-- Example Events -->
						<div class="example-wrap">
							<div class="example">
								<div class="btn-group hidden-xs" id="exampleTableEventsToolbar"
									role="group">
									<shiro:hasPermission name="user:cbug">
									</shiro:hasPermission>
							
									<input class="form-control" type="hidden"
										value="${operationcode}" id="operationcode">
								</div>
								<table id="exampleTableEvents" data-mobile-responsive="true">

								</table>
							</div>
						</div>
						<!-- End Example Events -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Panel Other -->
	</div>










	<input type="hidden" class="span.col-xs-2" name="taskid" id="taskid"  style="width: 30%; vertical-align: middle;">


	<div id="ShowAssigned" style="display: none">
		<div class="ibox-content">
			<form class="form-horizontal" method="get">
				<div class="form-group">
					<label class="col-sm-3 control-label">分配给：</label>
					<div class="col-sm-6">
						<select class="select" id="Assigned">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label"> 备注说明</label>
					<div class="col-sm-8">
						<textarea id="notice" class="form-control" name="notice"
							required="" aria-required="true"></textarea>
					</div>
				</div>
			</form>
			<div class="form-group">
				<div class="col-sm-4 col-sm-offset-2">
					<button type="input" class="btn btn-primary"
						onclick="TaskAssigned()">分配</button>
				</div>
			</div>
		</div>
	</div>


	<script>





function showAssigned(taskid,assigned){
    	$.ajax({
    		type : "GET",
    		url : "GetTaskAssigned.do",
    		data: {taskid :taskid,assigned:assigned},
    		async : false,
    		dataType : "text",
    		success : function(data) {                     
    			var con= document.getElementById("Assigned").innerHTML;
    			var co= document.getElementById("Assigned");
    			co.innerHTML=data+ con;	
    			 document.getElementById("taskid").value=taskid ;
    		  	layer.open({
    	    		title : '创建操作',
    	    		skin : 'layui-layer-molv',
    	    		type : 1,
    	    		area : [ '600px', '360px' ],
    	    		shadeClose : true, // 点击遮罩关闭
    	    		content : $('#ShowAssigned'),
    	    	});
    		}
    	});	
}  	


function  TaskAssigned(){
	var se = document.getElementById("Assigned").selectedIndex;//获得是第几个被选中了
	var assigned = document.getElementById("Assigned").options[se].value;
	alert(assigned+"assigned")
	var taskid  = document.getElementById("taskid").value ;
	$.ajax({
		type : "GET",
		url : "AssignedTask.do",
		data: {taskid: taskid,assigned:assigned},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}
</script>






	<!-- 全局js -->
	<script src="../../test/js/jquery.min.js?v=2.1.4"></script>
	<script src="../../test/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="../../layer/layer.js"></script>
	<!-- 自定义js -->
	<script src="../../test/js/content.js?v=1.0.0"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="../../test/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<!-- Peity -->
	<script src="js/bootstrap-table-taskdemo.js"></script>



	<script>

function Search(){
	$('#exampleTableEvents').bootstrapTable('destroy');  
	//alert("456456456");
    $('#exampleTableEvents').bootstrapTable({
//      url: "../../test/js/demo/bootstrap_table_test.json",
      url: "http://192.168.1.100:8080/module/defect/AssignedMeDefect.do", 
      search: true,
      pagination: true,
      pageSize: 20,
      showRefresh: true,
//      showToggle: true,
      showColumns: true,
      iconSize: 'outline',
      toolbar: '#exampleTableEventsToolbar',
      icons: {
        refresh: 'glyphicon-repeat',
//        toggle: 'glyphicon-list-alt',
        columns: 'glyphicon-list'	
      },
 
    columns: [       {
        title: 'ID',
        field: 'bugid',
        align: 'center',
        valign: 'middle',
      	  width: '2%'
    },
    {
        title: 'BUG标题',
          align: 'left',
          valign: 'middle',
           width: '35%',
           formatter:function(value,row,index){  

               var a = '<a href="DefectDetail.do?bugid='+row.bugid+'">'+ row.bugtitle+'</a> ';

                    return a ;
                } 
      
           
      }, {
          title: '创建者',
          field: 'realname',
          align: 'center',
          valign: 'middle',
          width: '5%'
      }, {
          title: '严重程度',
          field: 'severity',
          align: 'center',
          valign: 'middle',
          width: '5%'
      }, {
          title: '优先级',
          field: 'priority',
          align: 'center',
          valign: 'middle',
          width: '5%'
      },{
          title: '指派',
          field: 'assignedname',
          align: 'center',
          valign: 'middle',
          width: '5%'
      },{
          title: "状态",
          align: 'center',
          valign: 'middle',
          width: '5%',
              formatter:function(value,row,index){  
            	  if(row.pstatus==1){ return "新建";}   	  
            	  if(row.pstatus==2){  return "已解决";  }
            	  if(row.pstatus==3){  return "已关闭";  }
            	  if(row.pstatus==4){  return "打开";  }
            	  if(row.pstatus==5){  return "拒绝";  }
            	  if(row.pstatus==6){  return "重新打开";  }
                   } 
   
      },
              {
                  title: '创建日期',
                    field: 'createtime',
                    align: 'center',
                    valign: 'middle',
                    width: '7%'
                },
                
            {
                title: '操作名称',
                align: 'center', 
                width: '13%' ,
                formatter:function(value,row,index){  
                	var  ff = document.getElementById("operationcode").value ;
//                    var a = '<a href="#" mce_href="#" onclick="delblog(\''+row.articleid +'\')">关闭</a> ';
                	var strs= new Array();
                	strs=ff.split(",");
////                	{"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
////    				关闭   编辑   修复  删除 分配  重新打开   拒绝       	
                	var  hclosebug ="<a href=''   onclick=\"CloseDefect("+row.bugid+")\">  <font color='#F00'>关闭  </font></a>" ;
                	var  nclosebug="关闭 ";
                	var  hebug="<a href='DefectLoaderEditPage.do?bugid="+row.bugid+"' >   <font color='#F00'>编辑  </font></a> ";
                	var  nebug="编辑 ";
                	var  hxbug="<a href='#'  onclick=\"showRepair("+row.bugid+","+row.userid+")\">  <font color='#F00'  >修复  </font></a>"; 
                	var  nxbug="修复 ";
                	var  hdbug="<a href='delcase.do?bugid="+row.bugid+"' >  <font color='#F00'>删除  </font></a>   ";
                	var  ndbug="删除 ";
                	var  hgbug="<a href='#'    onclick=\"showFenPei("+row.bugid+","+row.assigned+")\" >  <font color='#F00'>分配   </font></a>   ";
                	var  ngbug="分配 ";
                	var  hropen="<a href='' >  <font color='#F00'>激活    </font></a>   ";
                	var  nropen="激活 ";
                	var  hrbug="<a href='#' onclick=\"showRefuse("+row.bugid+","+row.userid+")\">  <font color='#F00'>拒绝     </font></a>  ";
                	var  nrbug="拒绝 ";
                	var result ="";
//                	
                  if(row.pstatus==1){  // 新建
                
                	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
                  }
               	  
               	  if(row.pstatus==2){   //"已解决"; 
               		 if( strs[1]==1){result = result + hebug ; }else{ result = result + nebug ; }
                	 if( strs[0]==1){ result = result + hclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ; }
                	 if( strs[3]==1){ result = result + hdbug ;}else{result = result + ndbug ; }
                	 if( strs[4]==1){result = result + hgbug ; }else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
               	  }
               	  if(row.pstatus==3){   //"已关闭"; 
                  	 if( strs[1]==1){ result = result + hebug ; }else{ result = result + nebug ; }
                	 if( strs[0]==1){result = result + nclosebug  ; }else{result = result + nclosebug ; }
                	 if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ;}
                	 if( strs[3]==1){result = result + hdbug ; }else{ result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ; }else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + nrbug ; }else{ result = result + nrbug ; }
               	  }
               	  
               	  if(row.pstatus==4){  
               		  
//               		  return "打开";  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
               	  }
               	  
               	  if(row.pstatus==5){  
               		  
//               		  return "拒绝";  
               		  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + nxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + nrbug ; }else{result = result + nrbug ; }  
               		  
               	  }
               	  if(row.pstatus==6){  
//               		  return "重新打开";  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
                	 if( strs[5]==1){ result = result + hrbug ; }else{result = result + nrbug ; }
               	  }

               	return  result ;
                     } 
            }
        ]
    });

}
</script>

<script>
function showFinish(taskid,a){
	$.ajax({
		type : "GET",
		url : "FinishTask.do",
		data: {taskid: taskid},
		async : false,
		dataType : "text",
		success : function(data) {
			//alert(data);
			if(data=="ok"){
				location.reload() 
			}
		}
	})
}
</script>



</body>

</html>
