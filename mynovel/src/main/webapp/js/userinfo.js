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
function loadCollectInfo(id){
	//以异步的方式取到所有书签的信息
	$.get("collect/"+id, function(data){
		alert(data);
		var favStr = "";
		for (var i = 0; i < data.length; i++) {
			favStr+='<li class="u-bookitm1 u-bookitm1-1"><a href="back/bookdetail.jsp?bid="'+data[i].bid+'"></a>';
			favStr+='<img style="display: block;" src="'+data[i].bpic+'"/>';
			favStr+='<div class="info"><div class="wrap"><a class="title" hidefocus="hidefocus" href="">'+data[i].bname+'</a>';
			favStr+='<p class="u-author"><span>'+data[i].bauthor+'</span></p></div>';
			favStr+='<div class="act"><a class="j-delete delete" hidefocus="hidefocus href="javascript:void(0);">取消收藏</a> ';
			favStr+='<span class="u-sep">|</span><a hidefocus="hidefocus" href="">去阅读</a></div></div>';
		}
		$("#usercollect").html(favStr);
	}, "json");
}


$("#modifyForm").form({
	url:"user/modify", 
	success:function(data){ 
		if(data == ""){
			$.messager.alert('用户修改主','当前用户没有修改用户的权限 ！','warning');
			//$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}

		if(data.trim() == "true"){
			$.messager.show({
				title:'修改信息',
				msg:'修改成功！！！',
				showType:'show',
				style:{
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}
			});
			//$("#modifyDiv").dialog("close"); //关闭修改框
			//$("#adminList").datagrid("reload"); //刷新修改数据
		}else{
			$.messager.show({
				title:'修改信息',
				msg:'修改失败！！！',
				showType:'show',
				style:{
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}
			});
		}
	} 
});
