
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
				'<a class="delBtn" href="javascript:void(0)" onclick="showDetail('+index+')">删除</a>'+
				'<script>$(".detailBtn").linkbutton({iconCls: "icon-search"});' +
				'$(".modifyBtn").linkbutton({iconCls: "icon-edit"});$(".delBtn").linkbutton({iconCls:"icon-cancel"});</script>'; 
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
    	alert(data.trim());
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
