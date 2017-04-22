loadtext();
function loadtext(){
		var  mid="第一章";
		mid=encodeURI(encodeURI(mid));
		$.post("menu/gettext?bid=B1020&mid="+mid,function(data){
			$("#booktext span").append(data.bcontent);
		},"json");
}
function find(){
	document.getElementById("mymenu").style.display = "block";
	$.post("menu/search?bid=B1020",function(data){
		for(var i=0;i<data.length;i++){
		$("#mymenu ul").append("<li><a id='d' href='javascript:void(0)' onclick=test(this)>"+data[i].mid+"</a></li>");
	}
	},"json");
}
function test(obj){
	var mid=$(obj).html();
	if(mid!=null||mid!=undefined||mid!=''){
		$("#booktext span").empty();
		$("#tit").html(mid);
		mid=encodeURI(encodeURI(mid));
		$.post("menu/gettext?bid=B1020&mid="+mid,function(data){
			$("#booktext span").append(data.bcontent);
		},"json");
	}
	
}	
