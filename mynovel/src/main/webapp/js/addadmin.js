$("#addDiv").dialog({
	title:"管理员添加",
	closable:false,
	width:300,
	modal:true,
});

$("#addDiv").dialog("close");


$(".addBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#addForm").submit();
	} 	
});


$("#addForm").form({
	url:"admin/add",    
    success:function(data){ 
    	if(data == ""){
    		$.messager.alert('管理员修改主','当前管理员没有修改的权限 ！','warning');
    		$("#addDiv").dialog("close"); //关闭修改框
    		return ;
    	}

    	if(data.trim() == "true"){
    		$("#modifyDiv").dialog("close"); //关闭修改框
    		$("#adminList").datagrid("reload"); //刷新修改数据
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
		$("#addDiv").dialog("close");
	} 	
});