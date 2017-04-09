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
loadCollectInfo();
//加载网站信息内容
function loadCollectInfo(tagName){
	//以异步的方式取到所有书签的信息
	$.get("collect/"+bid, function(data){	
		var favStr = "";
		for (var i = 0; i < data.length; i++) {
			favStr+='<a href="back/bookdetail.jsp?bid="'+data[i].book.bid+'"><img style="display: block;" src="'+data[i].book.bpic+'"/></a>';
			favStr+='<div class="info"><div class="wrap"><a class="title" hidefocus="hidefocus" href="">'+data[i].book.bname+'</a>';
			favStr+='<p class="u-author"><span>'+data[i].book.bauthor+'</span></p></div>';

		}
		$(".u-bookitm1 u-bookitm1-1").html(favStr);
	}, "json");
}
