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
		alert(JSON.stringify(data));
		if(data == ""){
			$.messager.alert('图书修改','当前用户没有修改图书的权限 ！','warning');
			$("#modifyDiv").dialog("close"); //关闭修改框
			return ;
		}
		if(data.trim()=='true'){
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
/*
function editUsersInfo(){
	var formData = new FormData($( "#modifyForm" )[0]);
	$.ajax({
	 	url:"book/modify",
	 	data:formData,
	 	type: 'POST',
	 	dataType:"json",
	 	async: false,  
        cache: false,  
        contentType: false,  
        processData: false,  
	 	success:function(data,status){
		 	if(data){
		 		
		 	}else{
		 		$.messager.alert("错误提示","会员修改失败...\n","error");
		 	}
	 	}
	});
}
*/

function add(){
	$("#addDiv").dialog("open");
	//$.post("book/get?ssid="+id,function(data){
		//加载所有的主题数据
		$.post("types/info",function(data){
			$("#assid").empty();
			for(var i=0;i<data.length;i++){
				if(data.types.sname==datat[i].sname){
					$("#assid").append("<option value='"+datat[i].ssid+"' selected>"+datat[i].sname+"</option>");
				}else{
					$("#assid").append("<option value='"+datat[i].ssid+"'>"+datat[i].sname+"</option>");
				}
			}
		//});
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


$(".addBtn").linkbutton({
	iconCls: "icon-ok",
	onClick: function(){
		$("#addForm").submit();
	} 	
});

$(".addBook").linkbutton({
	iconCls: "icon-add",
});
