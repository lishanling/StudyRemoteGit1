$('#user_info').datagrid({    
//	url:'user/list',
	fitColumns:true,
	fit:true,
	singleSelect:true,
	border:false,
	pagination:true,
	loadMsg:'数据加载中,请稍后...',
	columns:[[ 
	          {field:'usid',title:'编号',width:50 ,align:'center'},    
	          {field:'uname',title:'用户名',width:100,align:'center'} ,
	          {field:'uemail',title:'邮箱',width:100,align:'center'} 
	          ]],
});

