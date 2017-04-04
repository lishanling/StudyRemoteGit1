$('#user_info').datagrid({    
		url:'user/list',
		pagination:true,
        fitColumns:true,
        singleSelect:true,
    	fit:true,
    	border:false,
    	loadMsg:'数据加载中,请稍后...',
    	columns:[[ 
        {field:'usid',title:'编号',width:50 ,align:'center'},    
        {field:'uname',title:'用户名',width:100,align:'center'} ,
        {field:'uemail',title:'邮箱',width:100,align:'center'} ,
        {field:'operator',title:'操作',width:100,align:'center',
        	formatter: function(value,row,index){
        		/*return '<a class="detailBtn" href="javascript:void(0)" onclick="showDetail('+row.usid+')">详情</a>'+
        		'<script> $(".detailBtn").linkbutton({ iconCls: "icon-search"});</script>';*/
        		
        		var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;&nbsp;' + 
				'<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>' +
				'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
				'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});</script>'; 
				return oprStr;
        	}
        }]]
});

/*
$("#userDetail").dialog({
	title:"用户信息预览",
	left:10,
	closed:true,
})

function showDetail(id){
	$("#userDetail").dialog("open");
	$.post("news/get?usid="+id,function(data){
		$("#usid").val(data.usid);
		$("#uname").val(data.uname);
		$("#uemail").val(data.uemail);
	},"json");
}
*/












$("#modifyDiv").dialog({
	title:"用户修改",
	closable:false,
	modal:true,
});

$("#modifyDiv").dialog("close");

$("#userDetail").dialog({
	title:"用户详情",
	closable:false,
	modal:true,
});

$("#userDetail").dialog("close");


$("#modifyForm").form({
	url:"user/modify",    
	success:function(data){ 
		if(data == ""){
			$.messager.alert('用户修改中','当前用户没有修改用户的权限 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}

		if(data.trim() == "true"){
			$("#modifyDiv").dialog("close"); //关闭修改框
			$("#user_info").datagrid("reload"); //刷新修改数据
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

$(".closeBtn").linkbutton({
	iconCls: "icon-cancel",
	onClick: function(){
		$("#modifyDiv").dialog("close");
		$("#userDetail").dialog("close");

	} 	
});

$(".updateBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#modifyForm").submit();
	} 	
});

function openUpdate(index){
	$("#modifyDiv").dialog("open");
	var row = $("#user_info").datagrid("getRows")[index];
	$("#usid").val(row.usid);
	$("#uname").val(row.uname);
	$("#uemail").val(row.uemail);
}

function openDatail(index){
	$("#userDetail").dialog("open");	
	var row = $("#user_info").datagrid("getRows")[index];
	$("#usid").html(row.usid);
	$("#uname").html(row.uname);
	$("#uemail").html(row.uemail);	
}
