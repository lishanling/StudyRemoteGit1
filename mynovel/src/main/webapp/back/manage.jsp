<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>后台管理</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link href="css/manage.css" rel="stylesheet" type="text/css" />
</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="height: 100px;">
		<img style="padding-left: 20px;" height="80px" width="337px"
			class="mainpage_head_img" alt="公司logo" src="#" />

		<div
			style="float: right; margin-top: 40px; margin-right: 20px; color: #082C5A;">
			<div>
				管理员：[<strong style="font-size: 120%; color: green;">${loginAdmin.apenname}</strong>]，欢迎您进入锦书阅读系统
			</div>
			<div style="margin-top: 8px;">
				<a href="javascript:void(0);" class="easyui-menubutton"
					data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-help'">信息中心</a>
				<a href="javascript:void(0);" class="easyui-menubutton"
					data-options="menu:'#layout_north_zxMenu',iconCls:'icon-back'">注销</a>
			</div>
		</div>
	</div>
	<div data-options="region:'south'" style="height: 80px;">
		<div id="footer">
			<p class="copyright">
				Copyright &copy; 2017-2020 Front Back Template, All Right Reserver <br />
				XXXX系统 版权所有
			</p>
		</div>
	</div>
	<div data-options="region:'east',title:'工具栏'" style="width: 182px;">
		<div class="easyui-calendar"
			style="width: 180px; height: 180px; border: 0px; border-bottom: 1px solid #94BAE7"></div>
	</div>
	<div data-options="region:'west',title:'菜单栏', collapsible:false"
		style="width: 160px;">
		<div id="sideNav">
			<div title="用户管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>用户信息</span></li>
				</ul>
			</div>
			<div title="管理员管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>管理员信息</span></li>
				</ul>
			</div>
			<div title="图书管理" data-options="iconCls:'icon-mini-add'">
				<ul class="treeNav">
					<li><span>图书信息</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		data-options="region:'center', title:'主界面', tools: [{    
	    iconCls:'icon-full', handler:function(){full();}},
	    {iconCls:'icon-unfull', handler:function(){unfull();}}]">
		<div id="main" style="width: 500px; height: 250px;">
			<div title="欢迎" data-options="iconCls:'icon-mini-add'">
				<h1 style="width: 100%; text-align: center; margin-top: 80px">
					<label> 欢迎<span>${loginAdmin.apenname}</span>进入后台图书管理
					</label>
				</h1>
			</div>
		</div>
	</div>

	<!-- 下拉信息中心菜单 -->
	<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
		<div onclick="userInfoFun();">修改密码</div>
		<div class="menu-sep"></div>
		<div onclick="aboutUs();">联系我们</div>
	</div>
	<!-- 下拉信息菜单 -->
	<div id="layout_north_zxMenu" style="width: 100px; display: none;">
		<div onclick="reLogin();">切换用户</div>
		<div class="menu-sep"></div>
		<div onclick="logoutFun();">退出系统</div>
	</div>


	<!-- 修改密码 -->
	<div id="personalInfo">
		<form id="modifyForm" method="post">
			<input name="username" type="hidden" value="${username }" />
			<p>
				原密码:<input type="password" name="username" placeholder="请输入原密码"
					required="required" />
			</p>
			<p>
				新密码:<input type="password" name="password" placeholder="请输入新密码"
					required="required" />
			</p>
			<p>
				重复新密码:<input type="password" id="repassword" placeholder="请重复输入新密码"
					required="required" />
			</p>
			<p>
				<a id="modifyBtn" href="javascript:void(0)">修 改</a><a id="closeBtn"
					href="javascript:void(0)">关 闭</a>
			</p>
		</form>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/manage.js"></script>
</body>
</html>