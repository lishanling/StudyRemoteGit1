<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>榜单</title>
<link rel="stylesheet" type="text/css" href="css/list.css" />
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
<li class="red"><a href="javascript:void(0)" onclick="outLogin()">退出登录</a></li>

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
				<li><a href="collect/toDayList.action">榜单</a></li>
				<li><a href="book/toAll">去搜索</a></li>
				<li><a href="back/us.jsp">关于</a></li>
				<li><a href="back/client.jsp">关注</a></li>
			</ul>
		</div>

		<div id="listdetail">
			<div id="left">
				<ul>
					<h1>榜单导航</h1>
					<li><a id="day" href="collect/toDayList.action">日度榜</a></li>
					<li><a id="month" href="collect/toMonthList.action">月度榜</a></li>
					<li><a id="latest" href="collect/toLatestList.action">新书榜</a></li>
					<li><a id="all" href="collect/toAllList.action">全部</a></li>
				</ul>
			</div>

			<div id="right">
				<ul>
					<c:forEach items="${book}" var="item">
						<li><a>
								<dl>
									<dt>
										<a href="back/bookdetail.jsp?bid=${item.bid}"><img
											src="${item.bpic}"></a>
									</dt>
									<dd>
										书名：<span class="bookName">${item.bname}</span>
									</dd>
									<dd>
										作者：<span class="bookauthor">${item.bauthor}</span>
									</dd>
									<dd>
										出版日期：<span class="date">${item.bdate}</span>
									</dd>
									<dd></dd>
								</dl>
						</a></li>

					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="aboutUs">
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
		<script type="text/javascript" src="js/list.js"></script>
