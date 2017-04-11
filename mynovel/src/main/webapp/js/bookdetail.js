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
	
	$.ajax({
		type:"post",
		url:"collects/get",
		contentType:"application/json;charset=utf-8",
		data:'{"bid":bid,"usid":"B1005"}',
		success:function(data){
			alert(data);
		}
	});

		/*$.get("collects/get",function(data){
			document.write(bid.length);
			if(data.trim()=='true'){
				document.getElementById("addsuccess").style.display = "block";
				document.getElementById("noaddsuccess").style.display = "none";
			}
		},"json");*/
		
	}