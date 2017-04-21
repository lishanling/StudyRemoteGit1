function saveImageAs(imgOrURL) {
        if (typeof imgOrURL == 'object')
          imgOrURL = imgOrURL.src;
        window.win = open (imgOrURL);
        setTimeout('win.document.execCommand("SaveAs")', 500);
    }
function savetxt(fileURL){
    var fileURL=window.open (fileURL,"_blank","height=0,width=0,toolbar=no,menubar=no,scrollbars=no,resizable=on,location=no,status=no");
    fileURL.document.execCommand("SaveAs");
    fileURL.window.close();
    fileURL.close();
}
function svcode(obj) { 
    var winname = window.open('', '_blank', 'height=1,width=1,top=200,left=300'); 
    winname.document.open('text/html', 'replace'); 
    winname.document.writeln(obj.value); 
    winname.document.execCommand('saveas','','code.txt'); 
    winname.close(); 
}