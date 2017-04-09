
function loadInfo(){
 	var addStr= window.location.href;
  	var url=decodeURI(addStr.substring(addStr.lastIndexOf('=')+1));
 	alert( url );
	$.get("book/sorts?bookSortName="+url+"", function(data) {
	  		for (var i = 0 ; i < data.length; i++) {	 			 
	  			 $("#sortdetail ul").append("<li><a><dl> <dt><img src="+data[i].bpic+"></dt>" +
	  			 		"<dd>书名:<span class='bookName>"+data[i].bname+"</span></dd>" +
	  			 		"<dd>作者:<span class='bookauthor'>"+data[i].bauthor+"</span></dd>" +
	  			 		"<dd>出版日期:<br><span class='date'>"+data[i].bdate+"</span></dd>" +
	  			 		"</dl></a></li>");
	  		}
	  		alert(" i am your father");
		}, "json");
	}

 loadInfo();