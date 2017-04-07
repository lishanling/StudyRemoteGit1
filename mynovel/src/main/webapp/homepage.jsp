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
				<li class="red"><a href="back/login.jsp">登录</a></li>
				<li class="red"><a href="back/register.jsp">注册</a></li>
				<li class="red"><a href="#">作者中心</a></li>
				<li class="red"><a href="#">帮助</a></li>
				<li class="red"><a href="back/adminlogin.jsp">后台管理</a></li>
			</ul>
		</div>

		<div id="search">
			<ul>
				<li><img src="images/logo.jpg">
				<li>
				<li class="s">

					<form method="post">
						<input
							style="width: 400px; height: 40px; border: solid 3px #F98235;"
							type="text" placeholder="请输入小说名、作者"> <input type="submit"
							style="width: 50px; height: 40px; background-color: #F98235; border: solid 3px #F98235; color: #fff; font-family: 微软雅黑; border-radius: 15px;"
							value="搜索" />
					</form>

				</li>
			</ul>
		</div>

		<div id="menu">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="back/list.jsp">榜单</a></li>
				<li><a href="back/sort.jsp">分类</a></li>
				<li><a href="#">精品</a></li>
				<li><a href="#">评论</a></li>
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
				<!-- <li class="rec"><a href="#"><img src="images/book1.jpg"><span>梵高传</span></a>
					<a href="back/bookdetail.jsp"><img src="images/luxun.png"><span>鲁迅全集</span></a>
					<a href="#"><img src="images/book3.jpg"><span>三生三世十里桃花</span></a>
					<a href="#"><img src="images/book4.jpg"><span>半暖</span></a> <a
					href="#"><img src="images/book5.jpg"><span>行者</span></a> <a
					href="#"><img src="images/book6.jpg"><span>皮囊</span></a> <a
					href="#"><img src="images/book7.jpg"><span>钓愚</span></a>
				<li>
				<li class="rec"><a href="#"><img src="images/book8.jpg"><span>诗经</span></a>
					<a href="#"><img src="images/book9.jpg"><span>安伯托</span></a>
					<a href="#"><img src="images/book10.jpg"><span>小风暴</span></a>
					<a href="#"><img src="images/book11.jpg"><span>秦腔</span></a>
					<a href="#"><img src="images/book12.jpg"><span>我不喜欢这世界，我只喜欢你</span></a>
					<a href="#"><img src="images/book14.jpg"><span>明朝那些事</span></a>
					<a href="#"><img src="images/book15.jpg"><span>乖，摸摸头</span></a>
				<li> -->
			</ul>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/homepage.js"></script>
</body>
</html>

