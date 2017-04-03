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