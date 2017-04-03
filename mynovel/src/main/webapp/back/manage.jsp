<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>manage</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout" style="width: 1100px; margin: 0px auto;">
	<div data-options="region:'north'" style="height:auto;">
		<div id="header">
			<div id="top_login">
				</label> <img src="images/manage.jpg" alt="锦书阅读" id="friend_logo" style="width:1092px;height:auto;" />
			</div>
		</div>
	</div>
		</div>
	<div data-options="region:'east',title:'工具栏'" style="width: 182px;">
		<div class="easyui-calendar"
			style="width: 180px; height: 180px; border: 0px; border-bottom: 1px solid #94BAE7"></div>
	</div>
	<div data-options="region:'west',title:'导航栏', collapsible:false" style="width: 160px;">
		<div id="sideNav">
			<div title="用户管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>用户信息</span></li>
					</ul>
			</div>
			<div title="图书管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>图书添加</span></li>
					<li><span>图书修改</span></li>
				</ul>
			</div>
			
		</div>
	</div>
	<div data-options="region:'center', title:'主界面',tools: [{    
    iconCls:'icon-full',    
    handler:function(){full();}    
  },{    
    iconCls:'icon-unfull',    
    handler:function(){unfull();}    
  }] ">
  <div id="main" style="width: 500px; height: 250px;">
			<div title="欢迎">
				<h1 style="width: 100%; text-align: center; margin-top: 80px">
					<label> 欢迎<span>${loginUser.uname}</span>进入后台图书管理
					</label>
				</h1>
			</div>
		</div>
  
			</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/manage.js"></script>
</body>
</html>