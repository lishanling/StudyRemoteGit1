$("#loginDiv").dialog({
	width:300,
	title:"",
	border:false,
	model:true,
});


$('#btnLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick: function(){
    	$("#loginForm").submit();//表单提交
    }
}); 


