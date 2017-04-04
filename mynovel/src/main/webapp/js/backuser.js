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
        {field:'uemail',title:'邮箱',width:100,align:'center',
        }]]
});

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


