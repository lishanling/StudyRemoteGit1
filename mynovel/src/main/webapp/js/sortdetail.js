
function loadInfo(){
 	var addStr= window.location.href;
  	var bookSortName=decodeURI(addStr.substring(addStr.lastIndexOf('=')+1));
 	$("#sortid h2").html(bookSortName);
	$.post("book/sorts?bookSortName="+encodeURI(encodeURI(bookSortName)), function(data){
		for (var i = 0 ; i < data.length; i++) {	 
	  			 $("#sortdetail ul").append("<li><a><dl><dt><a href='back/bookdetail.jsp?bid="+data[i].bid+"'><img src="+data[i].bpic+"></a></dt>" +
	  			 		"<dd>书名:<span>"+data[i].bname+"</span></dd>" +
	  			 		"<dd>作者:<span>"+data[i].bauthor+"</span></dd>" +
	  			 		"<dd>出版日期:<br><span class='date'>"+data[i].bdate+"</span></dd>" +
	  			 		"</dl></a></li>");
	  		}
		}, "json");
	}

 loadInfo();
 
 function outLogin(){
		var uname=$("#dd").html();
		if(uname==null||uname==undefined||uname==''){
			alert("未登录，无需退出");
		}else{
			$.post("user/outlogin",function(data){
				alert("退出成功！");
				window.location.replace("back/outlogin.jsp"); 
			});
		}
	}
		