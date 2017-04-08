//使用文本编辑器
var contentEditor=UE.getEditor('bdesc',{
	elementPathEnabled:false,
	enableAutoSave:false,
	aotuSyncData:false
});

function add(){
	$("#addDiv").dialog("open");
	$.post("book/get?ssid="+id,function(data){
		//加载所有的主题数据
		$.post("types/all",function(datat){
			$("#ssid").empty();
			for(var i=0;i<datat.length;i++){
				if(data.topic.tname==datat[i].tname){
					$("#ssid").append("<option value='"+datat[i].ssid+"'selected>"+datat[i].sname+"</option>");
				}else{
					$("#ssid").append("<option value='"+datat[i].ssid+"'>"+datat[i].sname+"</option>");
				}
			}
		});
	},"json");
}


$("#addDiv").dialog({
	title:"图书添加",
	closable:false,
	modal:true,
});
$("#addDiv").dialog("close");


$("#addForm").form({
	url:'book/add',
	success:function(data){ 
		alert(JSON.stringify(data));
		if(data == ""){
			$.messager.alert('图书添加','当前用户没有添加图书的权限 ！','warning');
			$("#addDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(true){
			$("#addDiv").dialog("close"); //关闭修改框
			$("#book_info").datagrid("reload"); //刷新修改数据
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


$(".addBook").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#bdesc").val(contentEditor.getContent());
		$("#addForm").submit();
	} 	
});






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

