function openAdd(){
	$("#addDiv").dialog("open");
}
$(".addadminBtn").linkbutton({
	iconCls: "icon-ok",
});
$("#addDiv").dialog({
	title:"管理员添加",
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
	url:"admin/add",    
	success:function(data){ 
		if(data == ""){
			$.messager.alert('管理员添加','当前管理员没有添加的权限 ！','warning');
			$("#addDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(data.trim() == "true"){
			$("#addDiv").dialog("close"); //关闭修改框
			$("#adminList").datagrid("reload"); //刷新修改数据
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

$('#adminList').datagrid({
	url : "admin/list",
	fitColumns : true,
	pagination : true,
	fit:true,
	singleSelect : true,
	pageList : [ 5, 10, 15, 20, 25, 30 ],
	columns : [ [ {field : 'aid',title : '编号',width : 50,align : 'center'
	}, {field : 'apenname',title : '姓名',width : 100,align : 'center'
	}, {field : 'apwd',title : '密码',width : 50,align : 'center',
	}, {field : 'opr',title : '操作',width : 100,align : 'center',
		formatter: function(value,row,index){
			var oprStr = '<a class="detailBtn" href="javascript:void(0)" onclick="openDatail(' + index + ')">详情</a>&nbsp;&nbsp;' + 
			'<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>&nbsp;&nbsp;' +
			'<a class="delBtn" href="javascript:void(0)" onclick="delDetail('+index+')">删除</a>'+
			'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
			'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>'; 

			/*'<a class="modifyBtn" href="javascript:void(0)" onclick="openUpdate(' + index + ')">修改</a>&nbsp;&nbsp;' +
				'<a class="delBtn" href="javascript:void(0)" onclick="delDetail('+index+')">删除</a>'+
				'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
				'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>'; */
			return oprStr;
		}
	} ] ]
});

$("#modifyDiv").dialog({
	title:"管理员修改",
	closable:false,
	width:300,
	modal:true,
});

$("#modifyDiv").dialog("close");

$("#detailDiv").dialog({
	title:"管理员详情",
	closable:false,
	width:300,
	modal:true,
});

$("#detailDiv").dialog("close");

$("#modifyForm").form({
	url:"admin/modify", 
	success:function(data){ 
		if(data == ""){
			$.messager.alert('用户修改主','当前用户没有修改用户的权限 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}



		if(data.trim() == "true"){
			$("#modifyDiv").dialog("close"); //关闭修改框
			$("#adminList").datagrid("reload"); //刷新修改数据
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
	var row = $("#adminList").datagrid("getRows")[index];
	$("#uaid").val(row.aid);
	$("#uapenname").val(row.apenname);
	$("#uapwd").val(row.apwd);
}

function openDatail(index){
	$("#detailDiv").dialog("open");	
	var row = $("#adminList").datagrid("getRows")[index];
	$("#daid").html(row.aid);
	$("#dapenname").html(row.apenname);
	$("#dapwd").html(row.apwd);
}


function delDetail(index){
	var row = $("#adminList").datagrid("getRows")[index];
	$("#adminList").datagrid("deleteRow",index);
	$.post("admin/delete?aid="+row.aid, function(data) {
		$.messager.alert('管理员删除','删除成功！');

	}, "json");
}
/*function delDetail(index){
	var rowindex = $("#adminList").datagrid("getRows")[index];
	$("#adminList").datagrid("deleteRow",rowindex);
}*/
function delDetail(index){
	var row = $("#adminList").datagrid("getRows")[index];
	$("#adminList").datagrid("deleteRow",index);
	$.post("admin/delete?aid="+row.aid, function(data) {
		$.messager.alert('管理员删除','删除成功！');

	}, "json");
}

/*
function add(){
	$.post("book/add?ssid="+id,function(data){
		//加载所有的主题数据
		$.post("types/sname",function(datat){
			$("#assid").empty();
			for(var i=0;i<datat.length;i++){
				if(data.types.sname==datat[i].sname){
					$("#assid").append("<option value='"+datat[i].ssid+"'selected>"+datat[i].sname+"</option>");
				}else{
					$("#assid").append("<option value='"+datat[i].ssid+"'>"+datat[i].sname+"</option>");
				}
			}
		});
	},"json");
}
 */
