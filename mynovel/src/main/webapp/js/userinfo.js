
loadBook();
function loadBook(){
	var s=$("#ddd").html();
	$.post("collect/collectbookinfo?usid="+s, function(data) {
		for (var i = 0 ; i <data.length; i++) {
			$(".u-colslist ul").append('<li class="u-bookitm1 u-bookitm1-1"><a class="book" href="back/bookdetail.jsp?bid='+data[i].bid+'"><img style="display: block;" src="'+data[i].bpic+'"/></a>'+
					'<div class="info"><div class="wrap"><a class="title" href="back/bookdetail.jsp?bid='+data[i].bid+'">'+data[i].bname+'</a>'+
					'<p class="u-author"><span>'+data[i].bauthor+'</span></p></div>'+
					'<p  style="display: none"><span id="copybid">'+data[i].bid+'</span></p>'+
					'<div class="act"><a class="j-delete delete"  href="javascript:void(0);" onclick="delCollect()">取消收藏</a>'+
					'<span class="u-sep">|</span><a href="back/bookdetail.jsp?bid='+data[i].bid+'">去阅读</a></div></div>');
		}
	}, "json");
}

function tab(n){ 
	var tabnav="a"+n; 
	var tabid="b"+n; 
	cleardisplay();  
	document.getElementById(tabid).style.display="block"; //显示对象
}

function cleardisplay(){ 
	for ( var i=1;i<3;i++) { 
		var cleartabid="b"+i;
		document.getElementById(cleartabid).style.display="none"; //不显示对象
	} 
} 

function delCollect(){
	var bid=$("#copybid").html();
	$.post("collect/delcollect?bid="+bid, function(data) {
		$.messager.alert('删除收藏','删除成功！');

	}, "json");
	$("#cls ul").empty();
	loadBook();
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

function updUser(){
	$("#updateUserForm").submit();
	$.post("user/modify", function(data) {
		$.messager.alert('用户修改','修改成功！');

	}, "json");
	$(".inputclass").empty();
}






