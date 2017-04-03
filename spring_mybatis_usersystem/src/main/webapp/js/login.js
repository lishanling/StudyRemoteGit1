$("#loginDiv").dialog({
	title:"",
	border:false,
	modal:true,
	width:240,
	top:80
});

$('#btnLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick: function(){
    	$("#loginForm").submit();//表单提交
    }
});  