function tab(n) {
		var tabnav = "a" + n;
		var tabid = "b" + n;
		alert(tabid);
		cleardisplay();
		document.getElementById(tabid).style.display = "block";
	}
	function cleardisplay() {
		for (var i = 1; i < 4; i++) {
			var cleartabid = "b" + i;
			document.getElementById(cleartabid).style.display = "none";
		}
	}