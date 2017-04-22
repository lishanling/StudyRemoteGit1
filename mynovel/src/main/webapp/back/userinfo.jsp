<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${deployName}">
<meta charset="utf-8">
<title>我的信息</title>
<link rel="stylesheet" type="text/css" href="css/userinfo.css" />

</head>

<body>
	<div id="box">
		<div id="header">
			<ul>
				<li class="red"><c:choose>
						<c:when test="${loginUser.uname eq null}">
							<a href="back/login.jsp">登录</a>
						</c:when>
						<c:otherwise>
							<a href="back/userinfo.jsp">${loginUser.uname}</a>
						</c:otherwise>
					</c:choose></li>
				<li class="red"><a href="back/register.jsp">注册</a></li>
				<li class="red"><a href="javascript:void(0)"
					onclick="outLogin()">退出登录</a></li>

			</ul>
		</div>
		<div id="search">
			<ul>
				<li><img src="images/logo.jpg"></li>
				<li class="s"></li>
			</ul>
		</div>
		<div id="menu">
			<ul>
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="collect/toAllList.action">榜单</a></li>
				<li><a href="back/search.jsp">去搜索</a></li>
				<li><a href="back/us.jsp">关于</a></li>
				<li><a href="back/client.jsp">关注</a></li>
			</ul>
		</div>
		<div id="wk">
			<div id="left" class="tabnav">
				<h1 align="center" style="color: #999">个人中心</h1>
				<ul>
					<li class="crt" id="a1" onClick="tab(1)"><a
						href="javascript:void(0)">我的收藏</a></li>
					<li class="" id="a2" onClick="tab(2)"><a
						href="javascript:void(0)">账号设置</a></li>
				</ul>
			</div>
			<div id="right">
				<div id="rh">
					<h1 align="center" id="headinfo" style="color: #000">我 的</h1>
				</div>
				<div class="container" id="b1">
					<div class="u-colslist" id="cls">
						<ul class="j-container">

						</ul>
					</div>
				</div>
				<div id='b2' style='display: none'>
					<br />

					<div class="infomation">
						<form id="updateUserForm" method="post" enctype="multipart/form-data">
							<span style="color: red"> 用户名：</span><input id="uname" name="uname"
								style="border: 1px;" value="${loginUser.uname}" class="inputclass"/><br /> <br />
							<span style="color: red"> 密&nbsp;&nbsp; 码：</span> <input type="password"
								id="upwd" name="upwd" value="u" style="border: 1px;" class="inputclass"/> <br /> <span
								style="color: red">邮 &nbsp;箱：</span><input id="uemail" name="uemail"
								style="border: 1px;" value="${loginUser.uemail}" class="inputclass"/><br /> <br />
							<a class="updateBtn" href="javascript:void(0)" onclick="updUser()">修改提交</a>
						</form>
					</div>

				</div>

			</div>
		</div>
	</div>

	<div id="footer">
		<div id="aboutUs">
			<span id="ddd" style="display: none">${loginUser.usid}</span>
			<ul>
				<li class="qwer"><a href="#">关于我们</a></li>
				<li class="qwer"><a href="#">联系我们</a></li>
				<li class="qwer"><a href="#">商务合作</a></li>
			</ul>
		</div>
		<div id="allRight">
		<span id="dd" style="display:none">${loginUser.uname}</span>
			<li><a>Copyright&copy;Duokan. All Rights Reserved</a></li>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="js/userinfo.js"></script>
</body>

</html>
