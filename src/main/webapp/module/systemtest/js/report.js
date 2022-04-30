		var testtype = document.getElementById("testtype").value;
		alert(testtype);
		var $table = $('#t8');
      $table.bootstrapTable({
			url : "/systemtest/Web_ReportManageJson.do?testtype="+testtype,
			pageSize : 10,
			dataType : "json",
			columns : [
					{
						title : 'reportid',
						field : 'reportid',
						align : 'center',
						valign : 'middle',
						width : '5%'
					},
					{
						title : '任务名称',
						field : 'taskname',
						align : 'center',
						valign : 'middle',
						width : '10%',
					},
					{
						title : '操作名称',
						align : 'center',
						width : '15%',
						formatter : function(value, row, index) {
							var f = '<a href="SyncPermission.do?groupid='
									+ row.groupid + '">[查看]</a> ';
							return f;
						}
					} ]
		});

