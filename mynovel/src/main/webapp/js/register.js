$("#RegisterDiv").dialog({
	width:300,
	title:"",
	border:false,
	model:true,
});

$('#RegisterLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick: function(){
    	$("#RegisterForm").submit();//表单提交
    }
});  
