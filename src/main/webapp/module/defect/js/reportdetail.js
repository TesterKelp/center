
var names = document.getElementsByName("picid");
var divvs    = document.getElementsByName("divv");
var title    = document.getElementsByName("title");
var pwidths    = document.getElementsByName("pwidth");
var pheights    = document.getElementsByName("pheight");
var sscales    = document.getElementsByName("sscale");
var escales    = document.getElementsByName("escale");
var sspaces    = document.getElementsByName("sspace");
var ptypes    = document.getElementsByName("ptype");
var sources    = document.getElementsByName("source");
var i = 0;
for (; i < names.length; i++) {
	// alert(names[i].value+"--"+divvs[i].value+"--"+title[i].value+"--"+pwidths[i].value+"--"+pheights[i].value+"--"+sscales[i].value+"--"+escales[i].value+"--"+sspaces[i].value);
	if (ptypes[i].value == 1) {
		ggg(sources[i].value,names[i].value, divvs[i].value, title[i].value, pwidths[i].value,pheights[i].value, sscales[i].value, escales[i].value,sspaces[i].value);
	}
	if (ptypes[i].value == 0) {
		gg(sources[i].value,names[i].value, divvs[i].value, title[i].value, pwidths[i].value,pheights[i].value);
	}
}


function   gg(source,picid,divv,title,pwidth,pheight){
	var  colo =["#a5c2d5","#cbab4f","#76a871","#a56f8f","#c12c44","#9f7961","#76a871","#6f83a5","#6f83a5","#a5aaaa","#97b3bc","#9d4a4a","#FF00FF","#00BFFF","#00CED1","#4682B4","#EE82EE","#808080","#D2B48C"," 	#3CB371"];
	var tree=[];
	var reportid =document.getElementById("reportid").value;
	$.ajax({
		type : "GET",
		url : "/module/defect/CreateDefectStatistics.do",
		cache : false,
		data:{picid:picid,source:source,reportid:reportid},
		async : false,
		dataType : "json",
		success : function(data) {
var obj = {
				name : '0',
				value : 0,
				color : '#a5c2d5'
			};
			for (var i = 0; i < (data.length); i++) {
				obj.value = eval('(' + data[i].num + ')');
				obj.name =  data[i].realname ;
				obj.color= colo[i] ;
				obj2 = {
					name : obj.name,
					value : obj.value,
					color : obj.color
				};
				tree.push(obj2);
			}
		}
	})
	
	new iChart.Pie2D({
		render : divv,
		data: tree,
		title : title,
		legend : {enable : true},
		showpercent:true,
		decimalsnum:2,
		width : pwidth,
		height : pheight,
		radius:140
	}).draw();
}

function   ggg(source,picid,divv,title,pwidth,pheight,sscale,escale,sspace){
	var  colo =["#a5c2d5","#cbab4f","#76a871","#a56f8f","#c12c44","#9f7961","#76a871","#6f83a5","#6f83a5","#a5aaaa","#97b3bc","#9d4a4a"];
	var tree=[];
	var reportid =document.getElementById("reportid").value;
//	alert(reportid);
	$.ajax({
		type : "GET",
		url : "/module/defect/CreateDefectStatistics.do",
		cache : false,
		data:{picid:picid,source:source,reportid:reportid},
		async : false,
		dataType : "json",
		success : function(data) {
var obj = {
				name : '0',
				value : 0,
				color : '#a5c2d5'
			};
			for (var i = 0; i < (data.length); i++) {
				obj.value = eval('(' + data[i].num + ')');
				obj.name =  data[i].realname ;
				var index = Math.floor((Math.random()*colo.length)); 
				obj.color= colo[index] ;
				obj2 = {
					name : obj.name,
					value : obj.value,
					color : obj.color
				};
				tree.push(obj2);
			}
		}
	})
	var chart = new iChart.Column2D({
		render : divv,//?????????Dom??????,canvasDiv???Dom???ID
		data : tree,//????????????
		title : title,//????????????
		width : pwidth,//??????????????????????????????px
		height : pheight,//??????????????????????????????px
		shadow : true,//????????????
		shadow_color : '#c7c7c7',//??????????????????
		coordinate : {//????????????????????????
			scale : [ {//?????????????????????
				position : 'left',//???????????????	
				start_scale :parseInt(sscale),//?????????????????????0
				end_scale :parseInt(escale),//?????????????????????26
				scale_space :parseInt(sspace),//??????????????????
				listeners : {//????????????
					parseText : function(t, x, y) {//????????????????????????
						return {
							text : t + "  "
						}
					}
				}
			} ]
		}
	});
	//??????????????????????????????
	chart.draw();
}

function setdata(picid,a,filed){
	var  value=a.value ;
	alert(value);
	$.ajax({
		type : "POST",
		url : "/module/defect/SetPicInfo.do",
		data:{picid:picid,filed:filed,value:value},
		dataType : "json",
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success : function(data) {
			if(data=="ok"){
			}
		}
	});
}


function SetReportIsShow(reportid,show){	
	alert("121");
	$.ajax({
		type : "GET",
		url : "/module/defect/SetReportShow.do",
		data:{reportid:reportid,show:show},
		dataType : "json",
		contentType: "application/x-www-form-urlencoded; charset=utf-8", 
		success : function(data) {
			
		}
	});
}










