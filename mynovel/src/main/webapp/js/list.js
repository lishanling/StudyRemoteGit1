function outLogin(){
	var uname=$("#dd").html();
	if(uname==null||uname==undefined||uname==''){
		alert("未登录，无需退出");
	}else{
		$.post("user/outlogin",function(data){
			alert("退出成功！");
			document.location = 'http://localhost:8080/mynovel/'; 
		});
	}
}
	