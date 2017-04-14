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
/*loadBook();
function loadBook(){
	$.get("collects/bookinfo", function(data) {
		for (var i = 0 ; i <4; i++) {	 			 
			$('#bookinfo ul').append("<span>jj</span>");
		}
	}, "json");

}*/

/*loadCollectInfo('${loginUser.uname}');

//加载网站信息内容

function loadCollectInfo(id){
	$.get("collect/"+id, function(data){
		
		var favStr = "";
		for (var i = 0; i < data.length; i++) {
			favStr+='<li class="u-bookitm1 u-bookitm1-1"><a href="back/bookdetail.jsp?bid="'+data[i].bid+'"></a>';
			favStr+='<img style="display: block;" src="'+data[i].bpic+'"/>';
			favStr+='<div class="info"><div class="wrap"><a class="title" hidefocus="hidefocus" href="back/bookdetail.jsp?bid="'+data[i].bid+'">'+data[i].bname+'</a>';
			favStr+='<p class="u-author"><span>'+data[i].bauthor+'</span></p></div>';
			favStr+='<div class="act"><a class="j-delete delete" hidefocus="hidefocus href="javascript:void(0);">取消收藏</a> ';
			favStr+='<span class="u-sep">|</span><a hidefocus="hidefocus" href="back/bookdetail.jsp?bid="'+data[i].bid+'">去阅读</a></div></div>';
		}
		$("#usercollect ul").html(favStr);
	}, "json");
}
*/

