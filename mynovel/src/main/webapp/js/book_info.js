$('#book_info').datagrid({    
	url:'book/list',
	fitColumns:true,
	fit:true,
	singleSelect:true,
	border:false,
	pagination:true,
	loadMsg:'数据加载中,请稍后...',
	columns:[[ 
	          {field:'bid',title:'编号',width:50 ,align:'center'},    
	          {field : 'bpic',title : '图像',width : 100,align : 'center',
	        	  formatter: function(value,row,index){
	        		  if(value == null){
	        			  return "<img width='80' src='images/not_pic.jpg'/>"
	        		  }else{
	        			  return "<img width='80' src='" + value + "'/>"
	        		  }
	        	  }},
	        	  {field:'bname',title:'书名',width:100,align:'center'} ,
	        	  {field:'bauthor',title:'作者',width:100,align:'center'} ,
	        	  {field:'bcopyright',title:'出版社',width:100,align:'center'} ,
	        	  {field:'bdate',title:'出版日期',width:100,align:'center'} ,

	        	  {field : 'opr',title : '操作',width : 100,align : 'center',
	        		  formatter: function(value,row,index){
	        			  var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;&nbsp;' + 
	        			  '<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>' +
	        			  '<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
	        			  '$(".modifyBtn").linkbutton({iconCls: "icon-edit"});</script>';

	        			  return oprStr;
	        		  }
	        	  } ] ]
});


$("#modifyDiv").dialog({
	title:"图书修改",
	closable:false,
	modal:true,
});
$("#modifyDiv").dialog("close");

$("#detailDiv").dialog({
	title:"图书详情",
	closable:false,
	width:320,
	modal:true,
});
$("#detailDiv").dialog("close");

$("#modifyForm").form({
	url:'book/modify',
	success:function(data){ 
		alert(JSON.stringify(data));
		if(data == ""){
			$.messager.alert('图书修改','当前用户没有修改图书的权限 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(true){
			$("#modifyDiv").dialog("close"); //关闭修改框
			$("#book_info").datagrid("reload"); //刷新修改数据
		}else{
			$.messager.show({
				title:'修改信息',
				msg:'修改失败！！！',
				showType:'show',
				style:{
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}
			});
		}
	} 
});

$(".closeBtn").linkbutton({
	iconCls: "icon-cancel",
	onClick: function(){
		$("#modifyDiv").dialog("close");
		$("#detailDiv").dialog("close");

	} 	
});

$(".updateBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#modifyForm").submit();
	} 	
});

function openUpdate(index){
	$("#modifyDiv").dialog("open");
	var row = $("#book_info").datagrid("getRows")[index];
	$("#bid").val(row.bid);
	$("#bname").val(row.bname);
	$("#bauthor").val(row.bauthor);
	$("#bcopyright").val(row.bcopyright);
	$("#bdate").val(row.bdate);
	$("#burl").val(row.burl);
	$("#bdesc").val(row.bdesc);
	$("#upicPath").val("");
	if(row.bpic){
		$("#pic").attr("src", row.bpic);
	}else{
		$("#pic").attr("src", "images/not_pic.jpg");
	}
}
function openDatail(index){
	$("#detailDiv").dialog("open");
	var row = $("#book_info").datagrid("getRows")[index];
	$("#dbid").html(row.bid);
	$("#dbname").html(row.bname);
	$("#dbauthor").html(row.bauthor);
	$("#dbcopyright").html(row.bcopyright);
	$("#dbdate").html(row.bdate);
	$("#dburl").html(row.burl);
	$("#dbdesc").html(row.bdesc);
	$("#dpic").html("");
	if(row.bpic){
		$("#dpic").attr("src", row.bpic);
	}else{
		$("#dpic").attr("src", "images/not_pic.jpg");
	}

}

function chgPic(obj){
	$("#pic").attr("src", window.URL.createObjectURL(obj.files[0]));
}

