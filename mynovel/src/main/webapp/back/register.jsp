<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>Register</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/register.css">
</head>
<body>
<div id="register">
	<div id="RegisterDiv" >
		<form id="RegisterForm" method="POST"	action="user/register">
			<p><h2>欢迎注册锦书阅读</h2>
			<p><label>${errorMsg }</label></p><c:remove var="errorMsg" scope="session"/>
			<p><input name="uname" placeholder="请输入用户名" required="required"></p>
			<p><input type="password" name="upwd" placeholder="请输入密码" required="required"></p>
			<p><input type="email" name="uemail" placeholder="请输入邮箱" required="required"></p>
			<p><button id="btnRegister" href="javascript:void(0)">注册</button></p>
		</form>
	</div>
</div>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</body>
</html>