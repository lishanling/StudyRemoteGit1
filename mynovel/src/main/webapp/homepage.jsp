<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/homepage.css" />
</head>
<body>
	<div id="box">
		<div id="header">
			<ul>
			
			<li class="red">
			<c:choose>
			<c:when test="${loginUser.uname eq null}">
			<a href="back/login.jsp">登录</a>
			</c:when>
			<c:otherwise>
			<a href="back/userinfo.jsp">${loginUser.uname}</a>
			</c:otherwise>
			</c:choose>
			</li>
 				<li class="red"><a href="back/register.jsp">注册</a></li>
				<li class="red"><a href="#">帮助</a></li>
				<li class="red"><a href="back/adminlogin.jsp">后台管理</a></li>
			</ul>
		</div>
		
		<div id="search">
			<ul>
				<li><img src="images/logo.jpg">
				<li>
				<li class="s">
				</li>
			</ul>
		</div>

		<div id="menu">
			<ul>
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="collect/toAllList.action">榜单</a></li>
				<li><a href="back/us.jsp">关于我们</a></li>
				<li><a href="back/search.jsp">去搜索</a></li>
				<li><a href="#">客户端</a></li>
			</ul>
		</div>
		<div id="left">
			<h4>图书分类</h4>
			<ul>
			</ul>
		</div>
		<div id="right">
			<a href="#"> <img src="images/1.jpg" width="750" height="330">
			</a>
		</div>
		<div id="recommend">
			<h5>推荐书籍</h5>
			<ul>
				
			</ul>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/homepage.js"></script>
</body>
</html>

