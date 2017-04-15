function searchall(){
	$("#sortdetail ul").empty();;
	var contend = document.getElementById("contends").value;   //获取text的值aa
		$.post("book/search?contend="+encodeURI(encodeURI(contend)), function(data){
			for (var i = 0 ; i < data.length; i++) {
		  			 $("#sortdetail ul").append("<li><a><dl> <dt><a href='back/bookdetail.jsp?bid="+data[i].bid+"'><img src="+data[i].bpic+"></a></dt>" +
		  			 		"<dd>书名:<span class='bookName>"+data[i].bname+"</span></dd>" +
		  			 		"<dd>书名:<span class='bookName>"+data[i].bname+"</span></dd>" +
		  			 		"<dd>作者:<span class='bookauthor'>"+data[i].bauthor+"</span></dd>" +
		  			 		"<dd>出版日期:<br><span class='date'>"+data[i].bdate+"</span></dd>" +
		  			 		"</dl></a></li>");
		  		}
	},"json");
}

