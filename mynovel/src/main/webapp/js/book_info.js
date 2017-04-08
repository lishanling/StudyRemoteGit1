$('#book_info').datagrid({    
	url:'book/list',
	pagination : true,
	fitColumns : true,
	singleSelect : true,
	pageList : [ 5, 10, 15, 20, 25, 30 ],
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
	        	  {field:'bauthor',title:'作者',width:50,align:'center'} ,
	        	  {field:'bcopyright',title:'出版社',width:100,align:'center'} ,
	        	  {field:'bdate',title:'出版日期',width:100,align:'center'} ,

	        	  {field : 'opr',title : '操作',width : 150,align : 'center',
	        		  formatter: function(value,row,index){
	        			  var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;' + 
	        			  '<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>&nbsp;' +
	        			 '<a class="delBtn" href="javascript:void(0)" onclick="delDetail('+index+')">删除</a>'+
	        			  '<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
	        			  '$(".modifyBtn").linkbutton({iconCls: "icon-edit"});'+
	        			  '$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>';
	        			 
	        			  return oprStr;
	        		  }
	        	  } ] ],toolbar:[{
	        		  text:"添加",
	        		  iconCls: "icon-add",
	        		  handler:function(){
	        			  $("#addDiv").dialog("open");
	        		  }
	        	  }]
});
$(".closeBtn").linkbutton({
	iconCls: "icon-cancel",
	onClick: function(){
		$("#detailDiv").dialog("close");
		$("#modifyDiv").dialog("close");
		$("#addDiv").dialog("close");
	} 	
});
$("#modifyDiv").dialog({
	title:"图书修改",
	closable:false,
	modal:true,
});
$("#modifyDiv").dialog("close");

$("#modifyForm").form({
	url:'book/modify',
	success:function(data){ 
		if(data == ""){
			$.messager.alert('图书修改','当前用户没有修改图书的权限 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(data.trim()=='true'){
			$("#modifyDiv").dialog("close"); //关闭修改框
			$.messager.alert('图书修改','修改成功');
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
	$("#picData").val("");
	if(row.bpic){
		$("#pic").attr("src", row.bpic);
	}else{
		$("#pic").attr("src", "images/not_pic.jpg");
	}
}
$(".updateBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#modifyForm").submit();
	} 	
});

function delDetail(index){
	var row = $("#book_info").datagrid("getRows")[index];
	$.post("book/delete?bid="+row.bid, function(data) {
		$.messager.alert('图书删除','删除成功！');
	}, "json");
}
$("#detailDiv").dialog({
	title:"图书详情",
	closable:false,
	width:400,
	modal:true,
});
$("#detailDiv").dialog("close");

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
	$("#ddpic").html("");
	if(row.bpic){
		$("#ddpic").attr("src", row.bpic);
	}else{
		$("#ddpic").attr("src", "images/not_pic.jpg");
	}

}

function chgPic(obj){
	$("#pic").attr("src",window.URL.createObjectURL(obj.files[0]));
}
function changPic(obj){
	$("#apic").attr("src",window.URL.createObjectURL(obj.files[0]));
}


$("#addDiv").dialog({
	title:"图书添加",
	closable:false,
	modal:true,
	minimizable:true,
	resizable:true,
	maximizable:true,
	
});
$("#addDiv").dialog("close");


$("#addForm").form({
	url:'book/add',
	success:function(data){
		if(data == ""){
			$.messager.alert('图书添加','当前用户没有添加图书的权限 ！','warning');
			$("#addDiv").dialog("close"); 
			return ;
		}
		if(data.trim()=="true"){
			$("#addDiv").dialog("close"); 
			$("#book_info").datagrid("reload"); //刷新数据
		}else{
			$.messager.show({
				title:'添加信息',
				msg:'添加失败！！！',
				showType:'show',
				style:{
					top:document.body.scrollTop+document.documentElement.scrollTop,
				}
			});
		}
	} 
});


$(".addBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#addForm").submit();
	}
});
$(".addBook").linkbutton({
	iconCls: "icon-add",
});
