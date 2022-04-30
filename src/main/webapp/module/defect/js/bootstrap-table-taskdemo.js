/*!
 * Remark (http://getbootstrapadmin.com/remark)
 * Copyright 2015 amazingsurge
 * Licensed under the Themeforest Standard Licenses
 */
function cellStyle(value, row, index) {
  var classes = ['active', 'success', 'info', 'warning', 'danger'];

  if (index % 2 === 0 && index / 2 < classes.length) {
    return {
      classes: classes[index / 2]
    };
  }
  return {};
}

function rowStyle(row, index) {
  var classes = ['active', 'success', 'info', 'warning', 'danger'];

  if (index % 2 === 0 && index / 2 < classes.length) {
    return {
      classes: classes[index / 2]
    };
  }
  return {};
}

function scoreSorter(a, b) {
  if (a > b) return 1;
  if (a < b) return -1;
  return 0;
}

function nameFormatter(value) {
  return value + '<i class="icon wb-book" aria-hidden="true"></i> ';
}

function starsFormatter(value) {
  return '<i class="icon wb-star" aria-hidden="true"></i> ' + value;
}

function queryParams() {
  return {
    type: 'owner',
    sort: 'updated',
    direction: 'desc',
    per_page: 100,
    page: 1
  };
}

function buildTable($el, cells, rows) {
  var i, j, row,
    columns = [],
    data = [];

  for (i = 0; i < cells; i++) {
    columns.push({
      field: '字段' + i,
      title: '单元' + i
    });
  }
  for (i = 0; i < rows; i++) {
    row = {};
    for (j = 0; j < cells; j++) {
      row['字段' + j] = 'Row-' + i + '-' + j;
    }
    data.push(row);
  }
  $el.bootstrapTable('destroy').bootstrapTable({
    columns: columns,
    data: data,
    iconSize: 'outline',
    icons: {
      columns: 'glyphicon-list'
    }
  });
}

(function(document, window, $) {
  'use strict';

  // Example Bootstrap Table From Data
  // ---------------------------------
  (function() {
    var bt_data = [{
      "Tid": "1",
      "First": "奔波儿灞",
      "sex": "男",
      "Score": "50"
    }, {
      "Tid": "2",
      "First": "灞波儿奔",
      "sex": "男",
      "Score": "94"
    }, {
      "Tid": "3",
      "First": "作家崔成浩",
      "sex": "男",
      "Score": "80"
    }, {
      "Tid": "4",
      "First": "韩寒",
      "sex": "男",
      "Score": "67"
    }, {
      "Tid": "5",
      "First": "郭敬明",
      "sex": "男",
      "Score": "100"
    }, {
      "Tid": "6",
      "First": "马云",
      "sex": "男",
      "Score": "77"
    }, {
      "Tid": "7",
      "First": "范爷",
      "sex": "女",
      "Score": "87"
    }];


    $('#exampleTableFromData').bootstrapTable({
      data: bt_data,
      // mobileResponsive: true,
      height: "250"
    });
  })();

  // Example Bootstrap Table Columns
  // -------------------------------
  (function() {
    $('#exampleTableColumns').bootstrapTable({
      url: "../../test/js/demo/bootstrap_table_test.json",
      height: "400",
      iconSize: 'outline',
      showColumns: true,
      icons: {
        refresh: 'glyphicon-repeat',
        toggle: 'glyphicon-list-alt',
        columns: 'glyphicon-list'
      }
    });
  })();


  // Example Bootstrap Table Large Columns
  // -------------------------------------
  buildTable($('#exampleTableLargeColumns'), 50, 50);


  // Example Bootstrap Table Toolbar
  // -------------------------------
  (function() {
    $('#exampleTableToolbar').bootstrapTable({
      url: "../../test/js/demo/bootstrap_table_test2.json",
      search: true,
      showRefresh: true,
      showToggle: true,
      showColumns: true,
      toolbar: '#exampleToolbar',
      iconSize: 'outline',
      icons: {
        refresh: 'glyphicon-repeat',
    //    toggle: 'glyphicon-list-alt',
        columns: 'glyphicon-list'
      }
    });
  })();



  // Example Bootstrap Table Events
  // ------------------------------
  (function() {
	  
	  var  abc="z" ;
	  

	  
	  
    $('#exampleTableEvents').bootstrapTable({
//      url: "../../test/js/demo/bootstrap_table_test.json",
      url: "/module/defect/JstaskList.do", 
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
        field: 'taskid',
        align: 'center',
        valign: 'middle',
      	  width: '2%'
    },
    {
        title: '任务名称',
          align: 'left',
          valign: 'middle',
           width: '33%',
           formatter:function(value,row,index){  

               var a = '<a href="TaskDetail.do?taskid='+row.taskid+'">'+ row.taskname+'</a> ';

                    return a ;
                } 
      
           
      }, {
          title: '分配者',
          field: 'realname',
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
          field: 'value',
          align: 'center',
          valign: 'middle',
          width: '5%',
       
   
      },
              {
                  title: '创建日期',
                    field: 'ctime',
                    align: 'center',
                    valign: 'middle',
                    width: '9%'
                },
                
            {
                title: '操作名称',
                align: 'center', 
                width: '13%' ,
                formatter:function(value,row,index){  
                	var  ff = document.getElementById("operationcode").value ;
                	var strs= new Array();
                	strs=ff.split(",");
////                	{"closebug","ebug","xbug","dbug","gbug","ropen","rbug"};
////    				关闭   编辑   修复  删除 分配  重新打开   拒绝       	
                	var  hclosebug ="<a href=''   onclick=\"CloseDefect("+row.bugid+")\">  <font color='#F00'>关闭  </font></a>" ;
                	var  nclosebug="关闭 ";
                	var  hrbug="<a href='#' onclick=\"showRefuse("+row.bugid+","+row.userid+")\">  <font color='#F00'>拒绝     </font></a>  ";
                	var  nrbug="拒绝 ";
                	
                	
                	var  hebug="<a href='EnterTaskEdit.do?taskid="+row.taskid+"' >   <font color='#F00'>编辑 </font></a> ";
                	var  nebug="编辑 ";
                	var  hdbug="<a href='DelTask.do?taskid="+row.taskid+"' >  <font color='#F00'>删除  </font></a>   ";
                	var  ndbug="删除 ";
                	var  hgbug="<a href='#'    onclick=\"showAssigned("+row.taskid+","+row.auserid+")\" >  <font color='#F00'>分配   </font></a>   ";
                	var  ngbug="分配 ";
                	var  hxbug="<a href='#'    onclick=\"showFinish("+row.taskid+","+row.taskid+")\" >  <font color='#F00'>完成  </font></a>   ";
                	var  nxbug="完成 ";
                	var result ="";
//                	
                  if(row.tstatus==1){  // 新建
                
                	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
//                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }

                  }
               	  
               	  if(row.tstatus==2){   //"已解决"; 
               		 if( strs[1]==1){result = result + hebug ; }else{ result = result + nebug ; }
//                	 if( strs[0]==1){ result = result + hclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ; }
                	 if( strs[3]==1){ result = result + hdbug ;}else{result = result + ndbug ; }
                	 if( strs[4]==1){result = result + hgbug ; }else{result = result + ngbug ; }

               	  }
               	  if(row.tstatus==3){   //"已关闭"; 
                  	 if( strs[1]==1){ result = result + hebug ; }else{ result = result + nebug ; }
//                	 if( strs[0]==1){result = result + nclosebug  ; }else{result = result + nclosebug ; }
                	 if( strs[2]==1){result = result + nxbug ; }else{ result = result + nxbug ;}
                	 if( strs[3]==1){result = result + hdbug ; }else{ result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ; }else{result = result + ngbug ; }

               	  }
               	  
               	  if(row.tstatus==4){  
               		  
//               		  return "打开";  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
//                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
     
               	  }
               	  
               	  if(row.tstatus==5){  
               		  
//               		  return "拒绝";  
               		  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
//                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + nxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }
            
               		  
               	  }
               	  if(row.tstatus==6){  
//               		  return "重新打开";  
                 	 if(strs[1]==1){ result = result + hebug ; }else{result = result + nebug ;}
//                	 if( strs[0]==1){ result = result + nclosebug  ; }else{ result = result + nclosebug ; }
                	 if( strs[2]==1){ result = result + hxbug ; }else{result = result + nxbug ;}
                	 if( strs[3]==1){ result = result + hdbug ; }else{result = result + ndbug ; }
                	 if( strs[4]==1){ result = result + hgbug ;}else{result = result + ngbug ; }

               	  }

               	return  result ;
                     } 
            }
        ]
    
    
    
    
    
    
    });

    var $result = $('#examplebtTableEventsResult');

    $('#exampleTableEvents').on('all.bs.table', function(e, name, args) {
        console.log('Event:', name, ', data:', args);
      })
      .on('click-row.bs.table', function(e, row, $element) {
        $result.text('Event: click-row.bs.table');
      })
      .on('dbl-click-row.bs.table', function(e, row, $element) {
        $result.text('Event: dbl-click-row.bs.table');
      })
      .on('sort.bs.table', function(e, name, order) {
        $result.text('Event: sort.bs.table');
      })
      .on('check.bs.table', function(e, row) {
        $result.text('Event: check.bs.table');
      })
      .on('uncheck.bs.table', function(e, row) {
        $result.text('Event: uncheck.bs.table');
      })
      .on('check-all.bs.table', function(e) {
        $result.text('Event: check-all.bs.table');
      })
      .on('uncheck-all.bs.table', function(e) {
        $result.text('Event: uncheck-all.bs.table');
      })
      .on('load-success.bs.table', function(e, data) {
        $result.text('Event: load-success.bs.table');
      })
      .on('load-error.bs.table', function(e, status) {
        $result.text('Event: load-error.bs.table');
      })
      .on('column-switch.bs.table', function(e, field, checked) {
        $result.text('Event: column-switch.bs.table');
      })
      .on('page-change.bs.table', function(e, size, number) {
        $result.text('Event: page-change.bs.table');
      })
      .on('search.bs.table', function(e, text) {
        $result.text('Event: search.bs.table');
      });
  })();
})(document, window, jQuery);



