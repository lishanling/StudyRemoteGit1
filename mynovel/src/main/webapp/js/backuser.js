$('#backuser').datagrid({    
		url:'user/list',
        fitColumns:true,
    	fit:true,
    	singleSelect:true,
    	border:false,
    	pagination:true,
    	loadMsg:'数据加载中,请稍后...',
    	columns:[[ 
        {field:'usid',title:'编号',width:50 ,align:'center'},    
        {field:'uname',title:'用户名',width:100,align:'center'} ,
        {field:'uemail',title:'邮箱',width:100,align:'center'} ,
        {field:'operator',title:'操作',width:100,align:'center',
        	formatter: function(value,row,index){
        		return '<a class="detailBtn" href="javascript:void(0)" onclick="showDetail('+row.nid+')">详情</a>'+
        		'<script> $(".detailBtn").linkbutton({ iconCls: "icon-search"});</script>';
        	}
        }
        ]],
});
$("#userDetail").dialog({
	title:"新闻预览",
	left:10,
	closed:true,
})
function showDetail(id){
	$("#userDetail").dialog("open");
	$.post("user/get?nid="+id,function(data){
		$("#usid").val(data.usid);
		$("#uname").html(data.uname);
		$("#ipic").attr("src",data.npicPath=="" ? "images/not_pic.jpg" : data.npicPath);
	},"json");
}

