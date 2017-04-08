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

		$.get("collects/get",function(data){
			var href=window.location.href;
			var bid=(href.split('?')[1]).split('=')[1];//获取bid
			document.write(bid.length);
			if(data.trim()=='true'){
				document.getElementById("addsuccess").style.display = "block";
				document.getElementById("noaddsuccess").style.display = "none";
			}
		},"json");
		
	}