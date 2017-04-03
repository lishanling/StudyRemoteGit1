<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="/novel/">
<meta charset="UTF-8">
<title>login</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
	<div id="loginDiv" >
		<form id="loginForm"  method="post" action="user/login">
			<p><label>${errorMsg }</label></p><c:remove var="errorMsg" scope="session"/>
			<p><input name="uname" placeholder="请输入用户名" required="required"></p>
			<p><input type="password" name="upwd" placeholder="请输入密码" required="required"></p>
			<p><a id="btnLogin" href="javascript:void(0)">登录</a></p>
		</form>
	</div>

<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</body>
</html>