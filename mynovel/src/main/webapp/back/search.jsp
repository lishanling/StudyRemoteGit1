<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>分类</title>
<link type="text/css" rel="stylesheet"  href="css/search.css" />
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
			</li><li class="red"><a href="back/register.jsp">注册</a></li>
<li class="red"><a href="javascript:void(0)" onclick="outLogin()">退出登录</a></li>

</ul>
</div>

<div id="search">
<ul>
<li><img src="images/logo.jpg"><li>
<li class="s">

<form method="post">
<input style="width:400px; height:40px; border:solid 3px #F98235;" type="text" placeholder="请输入小说名、作者" id="contends">
<input  type="button"  onclick="searchall()" style="width:50px; height:40px; background-color:#F98235; border:solid 3px #F98235;color:#fff; font-family:微软雅黑;border-radius: 15px;　" value="搜索" />
</form>
</li>
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


<div id="sortdetail">
<h3 style="font-size:18px;color:#CDCDCD;margin-right:400px">你查询的结果如下：</h3><br/>
		<ul>
 		</ul>
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


    <script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
</body>
</html>