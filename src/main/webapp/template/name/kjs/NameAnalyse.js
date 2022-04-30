$.ajax({
	type : "GET",
	url : "/module/admin/getUserName.do",
	dataType : "text",
	success : function(data) {
		var  aa=	document.getElementById("defect").innerHTML;
		var  bb= document.getElementById("defect");
		bb.innerHTML=aa+data ;
	}
});	



var  w  = document.getElementById("wx").innerHTML;
var  x =document.getElementById("wx") ;
//var  wx= "本站纯免费，不收取任何费用，请关注公众号支持本站，谢谢！" +"<img src='/pic/wx/wxszjh.jpg' width='100' height='100'>" ;
var  wx= "本站纯免费，不收取任何费用<br>请大家关注公众号，支持本站，谢谢！<br>也可搜索公众号：laiyaleyile  关注我们。"  ;
x.innerHTML=w+wx ;



document.getElementById("wxl").innerHTML= "<img src='/pic/wx/wxszjh.jpg' width='100' height='100'>" ;


var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?03ea227542d6451cba71f3cfb1c5191f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();

document.write ('<script type="text/javascript"  src="https://js.users.51.la/20906883.js"></script>');
