 var total=5;
	 var index=1;
	 function showPic(){
	    $('#right img:first').attr('src','images/'+(index+1)+'.jpg'); 
		//设置li样式	 
		index++;
		if(index>=total){
			index=0;
		}
	}
	window.setInterval('showPic()',2000);

	loadInfo();
	
	function loadInfo() {
		$.get("types/info", function(data) {
	  		for (var i = 0 ; i < data.length; i++) {	 			 
	 			$("#left ul").append("<li class='item'> <a href='#'>" +
						" <img src='"+data[i].imgsrc+"'/><span class='label'>"+data[i].sname+"</span></a></li>");
			}
		}, "json");

	}
	
	
	
	