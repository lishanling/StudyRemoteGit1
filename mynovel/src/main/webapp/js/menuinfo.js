function openAdd(){
	$("#addDiv").dialog("open");
}
$(".addmenuBtn").linkbutton({
	iconCls: "icon-add",
});
$("#addDiv").dialog({
	title:"目录添加",
	closable:false,
	width:300,
	modal:true,
});
$("#addDiv").dialog("close");

$(".addBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#addForm").submit();
	} 	
});

$("#addForm").form({
	url:"menu/add",    
	success:function(data){ 
		if(data == ""){
			$.messager.alert('目录添加','当前目录没有添加的权限 ！','warning');
			$("#addDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(data.trim() == "true"){
			$("#addDiv").dialog("close"); //关闭修改框
			$("#menuList").datagrid("reload"); //刷新修改数据
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




$('#menuList').datagrid({
	url : "menu/list",
	pagination : true,
	fitColumns : true,
	pagePosition:'bottom',
	singleSelect : true,
	pageList : [ 5, 10, 15, 20, 25, 30 ],
	loadMsg:'数据加载中,请稍后...',
	columns : [ [ {field : 'mid',title : '章节',width : 50,align : 'center'
	}, {field : 'mname',title : '章节名',width : 50,align : 'center'
	}, {field : 'bid',title : '书的编号',width : 50,align : 'center'
	}, {field : 'bnid',title : '书名',width : 200,align : 'center'
	}, {field : 'opr',title : '操作',width : 150,align : 'center',
		formatter: function(value,row,index){
			var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;&nbsp;' + 
			'<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>&nbsp;&nbsp;' +
			'<a class="delBtn" href="javascript:void(0)" onclick="delDetail('+index+')">删除</a>'+
			'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
			'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>'; 
			return oprStr;
		}
	} ] ]
});

$("#modifyDiv").dialog({
	title:"目录修改",
	closable:false,
	width:300,
	modal:true,
});

$("#modifyDiv").dialog("close");

$("#detailDiv").dialog({
	title:"目录详情",
	closable:false,
	width:300,
	modal:true,
});


$("#detailDiv").dialog("close");

$("#modifyForm").form({
	url:"menu/modify", 
	success:function(data){ 
		if(data == ""){
			$.messager.alert('目录修改','当前目录不能修改 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(data.trim() == "true"){
			$("#modifyDiv").dialog("close"); //关闭修改框
			$("#menuList").datagrid("reload"); //刷新修改数据
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
		$("#addDiv").dialog("close");
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
	var row = $("#menuList").datagrid("getRows")[index];
	$("#umid").val(row.mid);
	$("#umname").val(row.mname);
	$("#ubid").val(row.bid);
	$("#ubcontent").val(row.bcontent);
}

function openDatail(index){
	$("#detailDiv").dialog("open");	
	var row = $("#menuList").datagrid("getRows")[index];
	$("#dmid").val(row.mid);
	$("#dmname").val(row.mname);
	$("#dbid").val(row.bid);
	$("#dbname").val(row.book.bname);
	$("#dbcontent").val(row.bcontent);
}


function delDetail(index){
	var row = $("#menuList").datagrid("getRows")[index];
	$("#menuList").datagrid("deleteRow",index);
	menumid=encodeURI(encodeURI(row.mid));
	var del=menumid+"&menubid="+row.bid;
	$.post("menu/delete?menumid="+del, function(data) {
		if(data){
			$.messager.alert('目录删除','删除成功！');
		}

	}, "json");
}

$(".searchMenuBtn").linkbutton({
	iconCls: "icon-search",
});
function find(){
	var bid=$("#bid").val();	
		$('#menuList').datagrid({
			url : "menu/search?bid="+bid,
			pagination : true,
			fitColumns : true,
			fit:true,
			pagePosition:'bottom',
			singleSelect : true,
			pageList : [ 5, 10, 15, 20, 25, 30 ],
			loadMsg:'数据加载中,请稍后...',
			columns : [ [ {field : 'mid',title : '章节',width : 50,align : 'center'
			}, {field : 'mname',title : '章节名',width : 50,align : 'center'
			}, {field : 'bid',title : '书的编号',width : 50,align : 'center'
			}, {field : 'bcontent',title : '章节内容',width : 200,align : 'center'
			}, {field : 'opr',title : '操作',width : 150,align : 'center',
				formatter: function(value,row,index){
					var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;&nbsp;' + 
					'<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>&nbsp;&nbsp;' +
					'<a class="delBtn" href="javascript:void(0)" onclick="delDetail('+index+')">删除</a>'+
					'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
					'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>'; 
					return oprStr;
				}
			} ] ]
		});
}


