function tab(n){ 
	var tabnav="a"+n; 
	var tabid="b"+n; 
	cleardisplay();  
	document.getElementById(tabid).style.display="block"; //显示对象
}

function cleardisplay(){ 
	for ( var i=1;i<3;i++) { 
		var cleartabid="b"+i; 
		document.getElementById(cleartabid).style.display="none"; //不显示对象
	} 
}



