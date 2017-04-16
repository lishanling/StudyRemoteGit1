
var total=5;
var index=1;
function showPic(){
	$('#right img:first').attr('src','images/'+(index+1)+'.jpg'); 
	//设置li样式	 
	index++;
	if(index>=total){
		index=0;
	}
}
window.setInterval('showPic()',2000);

loadInfo();

function loadInfo(){
	$.get("types/info", function(data) {
		for (var i = 0 ; i < data.length; i++) {	 			 
			$("#left ul").append("<li class='item'> <a href='back/sortdetail.jsp?bookSortName="+data[i].sname+"'>" +
					" <img src='"+data[i].imgsrc+"'/><span class='label'>"+data[i].sname+"</span></a></li>");
		}
	}, "json");

}

loadBookCommand();
function loadBookCommand(){
	
	$.get('book/recommendinfo',function(data){
		for(var i=0;i<8;i++){
			$("#recommend ul").append("<li><a href='back/bookdetail.jsp?bid="+data[i].bid+"'><img src='"+data[i].bpic+"'/><span>"+data[i].bname+"</span></a></li>");
		}
	},"json");
}
function outLogin(){
	var uname=$("#dd").html();
	if(uname==null||uname==undefined||uname==''){
		alert("未登录，无需退出");
	}else{
		$.post("user/outlogin",function(data){
			alert("退出成功！");
			window.location.replace("back/outlogin.jsp"); 
		});
	}
}
