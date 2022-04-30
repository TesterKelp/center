// loadinterfaceProjectSelect
alert("ffff") ;
   			$.ajax({
   				
    				type : "GET",
    				url : "/wift/GetProjectSelect.do",
    				async : false,
    				dataType : "text",
    				success : function(data) {
    					alert(data);
    					document.getElementById("project").innerHTML = data ;
    				}
    			});
   			
   			
   			
   			
   			
// loadmodulebyproject
   		    function getmodule(){
   		    	var projectSelect=document.getElementById("project");  
   		    	var index=projectSelect.selectedIndex;
   		    	var projectid=projectSelect.options[index].value ;
   		    	$.ajax({
   					type : "GET",
   					url : "/wift/GetModuleSelect.do",
   					data: {projectid: projectid},
   					async : false,
   					dataType : "text",
   					success : function(data) {
   						document.getElementById("module").innerHTML = data ;
   					}
   				});	
   		    	
   		    	
   		    	$.ajax({
   					type : "GET",
   					url : "/wift/GetEnvironmentInit.do",
   					data: {projectid: projectid},
   					async : false,
   					dataType : "text",
   					success : function(data) {
   						document.getElementById("environment").innerHTML = data ;
   					}
   				});	
   		    	
   		    	
   		    	
   		    }
   		    
   		    
function SwwaveIfCase() {

	var els = document.getElementsByName("RequestParameter");
	var elv = document.getElementsByName("demo22");
	var _list = [];
	var _val = [];
	for (var i = 0; i < els.length; i++) {
		_list[i] = els[i].value;
		_val[i] = elv[i].value;
	}

	var selectIndex = document.getElementById("project").selectedIndex;//获得是第几个被选中了
	var projectid = document.getElementById("project").options[selectIndex].value;
	var selectI = document.getElementById("module").selectedIndex;//获得是第几个被选中了
	var moduleid = document.getElementById("module").options[selectI].value;
	var casename = document.getElementById("casename").value;
	var casedesc = document.getElementById("casedesc").value;
	var directories = document.getElementById("interfaceaddress").value;
	var type1 = document.getElementById("type");
	var index = type1.selectedIndex;
	var type = type1.options[index].value;
	var header = document.getElementById("header").value;
	var InterfaceSelect = document.getElementById("InterfaceSelect");
	var index = InterfaceSelect.selectedIndex;
	var Interfaceid = InterfaceSelect.options[index].value;
	alert(els);
	alert("1223");
	alert(Interfaceid);
	alert(casename);
	$.ajax({
		type : "POST",
		url : "/wift/SaveIfCase.do",

		data : {
			"els" : _list,
			"elv" : _val,
			"casename" : casename,
			"casedesc" : casedesc,
			"type" : type,
			"header" : header,
			"Interfaceid" : Interfaceid,
			"projectid" : projectid,
			"moduleid" : moduleid,
			"directories" : directories
		},
		async : false,
		dataType : "json",
		traditional : true,
		success : function(data) {
			alert(data);
		}
	});
}

function InputDataDo(biaoshi) {
	var _list = [];
	var els = document.getElementsByName(biaoshi);
	for (var i = 0; i < els.length; i++) {
		_list[i] = els[i].value;
	}
	return _list ;
}


function SelectDataDo(biaoshi) {
	var _list = [];
	var i=0 ;
//	 var len = "select[id='"+biaoshi+"']".length;
//	 alert(len);
	$("select[id='"+biaoshi+"']").each(function(){
//		if(i== len-1){
//			
//		}else{
		    _list[i] = $(this).val() ;
			 i++ ;
//		}

		 
	 });
	return _list ;
}



function CreateWiftInterface() {
	alert("ddddd");
	$('#datasource').remove(); 
	var projectSelect = document.getElementById("project");
	var environmentid = document.getElementById("environmentid").value;
	var index = projectSelect.selectedIndex;
	var projectid = projectSelect.options[index].value;
	var moduleSelect = document.getElementById("module");
	var index1 = moduleSelect.selectedIndex;
	var moduleid = moduleSelect.options[index1].value;
	var facename = document.getElementById("title").value;
	var directories = document.getElementById("directories").value;
	var requesttypeindex = document.getElementById("requesttype").selectedIndex;
	var requesttype = document.getElementById("requesttype").options[requesttypeindex].value;
	var ue = UE.getEditor('editor');
	var content = ue.getContent();

	var _RequestParameterName = [];
	var _RequestParameterRequired = [];
	var _RequestParameterType = [];
	var _RequestParameterDefaultValue = [];
	var _RequestParameterDescription = [];

	var _ResponseParameterName = [];
	var _ResponseParameterRequired = [];
	var _ResponseParameterType = [];
	var _ResponseParameterDescription = [];
	
	var _RequestHeaderParameterName = [];
	var _RequestHeaderParameterRequired = [];
	var _RequestHeaderParameterDefaultValue = [];
	var _RequestHeaderParameterDescription = [];
	
	var _ResponseHeaderParameterName = [];
	var _ResponseHeaderParameterRequired = [];
	var _ResponseHeaderParameterDescription = [];
	
	_RequestParameterName = InputDataDo("RequestParameterName") ;
	_RequestParameterRequired = SelectDataDo('RequestParameterRequired');
	_RequestParameterType = SelectDataDo('RequestParameterType');
	_RequestParameterDefaultValue = InputDataDo("RequestParameterDefaultValue") ;
	_RequestParameterDescription =  InputDataDo("RequestParameterDescription") ;

	_ResponseParameterName = InputDataDo("ResponseParameterName") ;
	_ResponseParameterRequired = SelectDataDo('ResponseParameterRequired');
	_ResponseParameterType = SelectDataDo('ResponseParameterType');
	_ResponseParameterDescription =  InputDataDo("ResponseParameterDescription") ;
	
	_RequestHeaderParameterName = InputDataDo("RequestHeaderParameterName") ;
	_RequestHeaderParameterRequired = SelectDataDo('RequestHeaderParameterRequired');
	_RequestHeaderParameterDefaultValue = InputDataDo("RequestHeaderParameterDefaultValue") ;
	_RequestHeaderParameterDescription =  InputDataDo("RequestHeaderParameterDescription") ;
	
	_ResponseHeaderParameterName = InputDataDo("ResponseHeaderParameterName") ;
	_ResponseHeaderParameterRequired = SelectDataDo('ResponseHeaderParameterRequired');
	_ResponseHeaderParameterDescription =  InputDataDo("ResponseHeaderParameterDescription") ;
	

	for (var i = 0; i < _RequestParameterRequired.length; i++) {
//		alert("Name:"+_RequestParameterName[i] +"Required:"+_RequestParameterRequired[i]+"Type:"+_RequestParameterType[i]+"DefaultValue:"+_RequestParameterDefaultValue[i]+"Description:"+_RequestParameterDescription[i]);
		alert(_RequestParameterRequired[i]);
		
	}

	
	$.ajax({
	type : "POST",
	url : "/wift/CreateInterface.do",
	data : {
		"projectid" : projectid,
		"moduleid" : moduleid,
		"facename" : facename,
		"content" : content,
		"directories" : directories,
		"requesttype" : requesttype,
		"environmentid":environmentid ,
		
		"RequestParameterName":_RequestParameterName,
		"RequestParameterRequired" : _RequestParameterRequired  ,
		"RequestParameterType" : _RequestParameterType ,
		"RequestParameterDefaultValue" :_RequestParameterDefaultValue ,
		"RequestParameterDescription" :_RequestParameterDescription,
		
	"ResponseParameterName" : _ResponseParameterName ,
	"ResponseParameterRequired" : _ResponseParameterRequired,
	"ResponseParameterType" : _ResponseParameterType ,
	"ResponseParameterDescription" : _ResponseParameterDescription ,
	
	"RequestHeaderParameterName" : _RequestHeaderParameterName,
	"RequestHeaderParameterRequired" : _RequestHeaderParameterRequired ,
	"RequestHeaderParameterDefaultValue" : _RequestHeaderParameterDefaultValue ,
	"RequestHeaderParameterDescription" : _RequestHeaderParameterDescription,
	
	"ResponseHeaderParameterName" : _ResponseHeaderParameterName,
	"ResponseHeaderParameterRequired" : _ResponseHeaderParameterRequired ,
	"ResponseHeaderParameterDescription" : _ResponseHeaderParameterDescription 
		
		
	},
	async : false,
	dataType : "text",
	 traditional: true,
	success : function(data) {
		alert(data);
	}
});
	
	
//	$.ajax({
//		type : "POST",
//		url : "/wift/AddFace.do",
//		data : {
//			projectid : projectid,
//			moduleid : moduleid,
//			facename : facename,
//			content : content,
//			directories : directories,
//			requesttype : requesttype
//		},
//		async : false,
//		dataType : "text",
//		success : function(data) {
//			alert(data);
//		}
//	});
}



function AddEnvironmentToDirectories(environmentid,environmentname) {
	document.getElementById("environmentid").value=environmentid  ;
	document.getElementById("environmentname").value=environmentname  ;
	
}



// 参数操作


//RequestParameter Operation Start
function RequestParameterBeforeInsertRow(s) {
	var i = 1;
	var o = document.getElementById("RequestParametersource");
	var c = document.getElementById("c1");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
	newTR.style.visibility="visible";
}

function RequestParameterAfterInsertRow(s) {
	var i = 1;
	var o = document.getElementById("RequestParametersource");
	var c = document.getElementById("c1");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	if (c.parentNode.lastChild == s.parentNode.parentNode) {
		c.parentNode.appendChild(newTR);
	} else {
		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
	}
	newTR.style.visibility="visible";
}

function RequestParameterDeleteRow(row) {
	var i = row.parentNode.parentNode.rowIndex;
	document.getElementById('RequestParameter').deleteRow(i);
}

//ResponseParameter Operation Start

function ResponseParameterBeforeInsertRow(s) {
	var i = 1;
	var o = document.getElementById("ResponseParametersource");
	var c = document.getElementById("c2");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
	newTR.style.visibility="visible";
}

function ResponseParameterAfterInsertRow(s) {
	var i = 1;
	var o = document.getElementById("ResponseParametersource");
	var c = document.getElementById("c2");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	if (c.parentNode.lastChild == s.parentNode.parentNode) {
		c.parentNode.appendChild(newTR);
	} else {
		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
	}
	newTR.style.visibility="visible";
}

function ResponseParameterDeleteRow(row) {
	var i = row.parentNode.parentNode.rowIndex;
	document.getElementById('ResponseParameter').deleteRow(i);
}

//RequestHeaderParameter Operation Start

function RequestHeaderParameterBeforeInsertRow(s) {
	var i = 1;
	var o = document.getElementById("RequestHeaderSource");
	var c = document.getElementById("c5");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
	newTR.style.visibility="visible";
}

function RequestHeaderParameterAfterInsertRow(s) {
	var i = 1;
	var o = document.getElementById("RequestHeaderSource");
	var c = document.getElementById("c5");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	if (c.parentNode.lastChild == s.parentNode.parentNode) {
		c.parentNode.appendChild(newTR);
	} else {
		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
	}
	newTR.style.visibility="visible";
}

function RequestHeaderParameterDeleteRow(row) {
	var i = row.parentNode.parentNode.rowIndex;
	document.getElementById('RequestHeader').deleteRow(i);
}

//ResponseHeaderParameter Operation Start

function ResponseHeaderParameterBeforeInsertRow(s) {
	var i = 1;
	var o = document.getElementById("ResponseHeaderSource");
	var c = document.getElementById("c6");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	c.parentNode.insertBefore(newTR, s.parentNode.parentNode);
	newTR.style.visibility="visible";
}

function ResponseHeaderParameterAfterInsertRow(s) {
	var i = 1;
	var o = document.getElementById("ResponseHeaderSource");
	var c = document.getElementById("c6");
	var newTR = o.cloneNode(true);
	newTR.setAttribute("id", "no"); 
	var i = s.parentNode.parentNode.rowIndex;
	if (c.parentNode.lastChild == s.parentNode.parentNode) {
		c.parentNode.appendChild(newTR);
	} else {
		c.parentNode.insertBefore(newTR, s.parentNode.parentNode.nextSibling);
	}
	newTR.style.visibility="visible";
}

function ResponseHeaderParameterDeleteRow(row) {
	var i = row.parentNode.parentNode.rowIndex;
	document.getElementById('ResponseHeader').deleteRow(i);
}
