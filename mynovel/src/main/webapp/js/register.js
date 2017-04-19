$("#register").attr("style","background:url('images/register.jpg') no-repeat;width:1366px;height:768px;");

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
