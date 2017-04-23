function tab(n) {
	var tabnav = "a" + n;
	var tabid = "b" + n;
	cleardisplay();
	document.getElementById(tabid).style.display = "block";
}
function cleardisplay() {
	for (var i = 1; i < 4; i++) {
		var cleartabid = "b" + i;
		document.getElementById(cleartabid).style.display = "none";
	}
}

function addCollects(){
	var href=window.location.href;
	var bid=(href.split('?')[1]).split('=')[1];//获取bid
	var usid=$("#first").html();
	var datapa =bid+"&usid="+usid;
	if(usid==null||usid==""){
		alert("请先登录！");
	}else{
		$.post("collect/get?bid="+datapa,function(data){
			if(data){
				document.getElementById("addsuccess").style.display = "none";
				document.getElementById("noaddsuccess").style.display = "block";
			
			}
		},"json");
	}
	
}
		
loadInfo()

function loadInfo(){
	 	var addStr= window.location.href;
	  	var url=decodeURI(addStr.substring(addStr.lastIndexOf('=')+1));
	  	//加载位置
 	  	$.post("",function(){
 	  			
 	  		$(".u-nav-crumbs").append(
 	  			'<span>当前位置：</span><a href="homepage.jsp" hidefocus="hidefocus">首页</a><span'+
				'class="sep"></span><a href="#"'+
				'hidefocus="hidefocus">文学</a> <span class="sep"></span>');	
	  	},"json");
 	   
	  	//加载评论
	  	$.post("discuss/info?id="+url,function(data){
 	  		
	  			for(var i= 0 ;i < data.length ; i++){ 
	  				$("#commemtby").append('<li class="itm"><div class="article">'+
	  						'<p>'+data[i].dcontent+'</p></div>'+
	  						'<div class="u-comminfo">'+
	  						'<div class="u-comm-user">'+
	  						'<div class="u-stargrade">'+
	  						'<div class="icon grade6"></div></div>'+
	  						'<span class="autor j-xm-1197146305">'+(i+1)+'楼网友</span> <span class="u-sep">-</span> <span class="times">'+data[i].dtime+'</span>'+
	  						'</div></div></li>');
	  					}														
		},"json");	 										 	  	
	  	
	  	//加载目录信息
	  	$.post("menu/info?id="+url,function(data){
 	  			for(var i = 0 ; i < data.length ;i++ ){
	  			$("#toc ol").append('<li><h3 class="title">'+data[i].mname+'</h3>'+
	  				'<div class="brief brief0"><p>'+data[i].bcontent+'</p></div></li>');}
	  			
	  	},"json");
	  	
	  	//加载书籍信息
  		$.post("book/bookinfo?bookId="+url,function(data){
   			$("#cover-img").append('<a hidefocus="hifefocus"> <img src="'+data.bpic+'" ondragstart="return false;"'+
			'oncontextmenu="return false;" style="display: block;"></a>'); 
			 
  			$(".data").append('<h3>'+data.bname+'</h3>');
  			$("#ss").append('<a href="'+data.burl+'">阅读</a>');
  	/*		$("#collect").append('<a href="'+data.burl+'">阅读</a>');*/
  			$(".data").append('<table><tbody>'+
  				'<tr><td class="col0">作者：</td>'+
				'<td class="author" itemprop="author">'+ 
				'<a href="/author/8504/1-1" >'+data.bauthor+'</a></td></tr>'+
				'<tr><td class="col0">版权：</td><td class="published" itemprop="copyrightHolder">'+
				'<a target="_blank">'+data.bcopyright+'</a></td></tr>'+
				'<tr><td class="col0">出版：</td><td itemprop="datePublished">'+data.bdate+'</td></tr>'+
				'</tbody></table>');
    			 
    			$("#book-content").append('<p>'+data.bdesc+'</p>');
     			 
 		},"json");
		
 	}
function addDiscuss(){
	var dcontent=document.getElementById("discuss").value;
	dcontent=encodeURI(encodeURI(dcontent));
	var href=window.location.href;
	var bid=(href.split('?')[1]).split('=')[1];//获取bid
	var usid=$("#first").html();
	var dataAll=bid+"&usid="+usid+"&dcontent="+dcontent;
	if(usid.trim()==null||usid==''){
		alert("您尚未登录，不可发表评论！");
	}else{
		$.post("discuss/add?bid="+dataAll,function(data){
			if(data){
				alert("发表成功");
				$('#discuss').val("");  
				history.go(0); 			}
		});
	}
}

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
	