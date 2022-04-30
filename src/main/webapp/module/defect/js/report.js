getReport();

function getReport(){ 
var $table = $('#t1');
$table.bootstrapTable({
url: "ReportList.do", 
dataType: "json",
      columns: [
                
              {
                title: '项目ID',
                  field: 'reportid',
                  align: 'center',
                  valign: 'middle',
                	  width: '5%'
              },
              {
                  title: '报告名称',
                    field: 'reportname',
                    align: 'center',
                    valign: 'middle',
                     width: '20%',
                    	 
                },
               {
	                    title: '创建时间',
                    field: 'ctime',
                    align: 'center',
                    valign: 'middle',
                    width: '10%'
                }, {
                    title: '创建者',
                      field: 'realname',
                      align: 'center',
                      valign: 'middle',
                      width: '10%'
                  },
              {
                  title: '操作名称',
                  align: 'center', 
                  width: '10%' ,
                  formatter:function(value,row,index){  
                	  var c = '<a href="Report.do?reportid='+row.reportid+'" >查看</a> ';
                	  var e = '<a href="DeReport.do?reportid='+row.reportid+'" mce_href="#" >设置</a> ';  
                      var d = '<a href="#" mce_href="#" onclick="del(\''+row.reportid+'\')">删除</a> ';
                           return c+e+d;  
                       } 
              }    
          ]
  });
}




function  del(reportid){
	
	$.ajax({
		type : "POST",
		url : "/module/defect/DelReport.do",
		data:{reportid:reportid},
		dataType : "text",
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success : function(data) {
			if(data=="ok"){
			}
			alert("ok");
		}
	});	
	
	
}








