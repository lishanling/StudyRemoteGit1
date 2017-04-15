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
				<li class="red"><a href="#">帮助</a></li>
				<li class="red"><a href="back/manage.jsp">后台管理</a></li>
			</ul>
		</div>
		<div id="search">
			<ul>
				<li><img src="images/logo.jpg"></li>
				<li class="s">
					
				</li>
			</ul>
		</div>
		<div id="menu">
			<ul>
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="collect/toAllList.action">榜单</a></li>
				<li><a href="back/search.jsp">去搜索</a></li>
				<li><a href="back/us.jsp">关于我们</a></li>
				<li><a href="#">客户端</a></li>
			</ul>
		</div>
		<div id="wk">
			<div id="left" class="tabnav">
				<h1 align="center" style="color: #999">个人中心</h1>
				<ul>
					<li class="crt" id="a1" onClick="tab(1)"><a
						href="javascript:void()">我的收藏</a></li>
					<li class="" id="a2" onClick="tab(2)"><a
						href="javascript:void()">账号设置</a></li>
				</ul>
			</div>
			<div id="right">
				<div id="rh">
					<h1 align="center" id="headinfo" style="color: #000">我 的</h1>
				</div>
				<div class="container" id="b1">
					<div class="u-colslist" id="bookinfo">
						<ul class="j-container">


							<c:forEach items="${book}" var="item">
								<li>
									<a>
										<dl>
											<dt>
												<img src="${item.bpic}" alt="${item.bpic}">
											</dt>
											<dd>
												书名:<span class="bookName">${item.bname}</span>
											</dd>
											<dd>
												作者:<span class="bookauthor">${item.bauthor}</span>
											</dd>
											<dd>
												出版日期：<span class="date">${item.bdate}</span>
											</dd>
											<dd></dd>
										</dl>
									</a>
								<li>
							</c:forEach>

							<li class="u-bookitm1 u-bookitm1-1"><a class="book" href="#">
									<img style="display: block;" src="images/1.png">
							</a>
								<div class="info">
									<div class="wrap">
										<a class="title" href="">设计龙门阵（第三季）</a>
										<p class="u-author">
											<span>ZCOOL站酷</span>
										</p>
									</div>
									<div class="act">
										<a class="j-delete delete" href="#">取消收藏</a> <span
											class="u-sep">|</span> <a href="">去阅读</a>
									</div>
								</div></li>

						</ul>
					</div>
				</div>

				 <div id='b2' style='display: none'>
					<br />

					<div class="infomation">
						<form action="#" method="post">

							<span style="color:red"> 用户名：</span><input id="uname" style="border: 1px;" value="${loginUser.uname}" /><br />
							<br /> <span style="color:red"> 密&nbsp;&nbsp; 码：</span>
							 <input id="upwd" value="*"  style="border: 1px;"/>
								<br/>
				<span style="color:red">邮  &nbsp;箱：</span><input id="uemail" style="border: 1px;" value="${loginUser.uemail}" /><br />
								
							<br /> <a class="updateBtn" href="javascript:void(0)" onclick="updateMyself()">修改提交</a>

							<%-- <span>用户名： </span><input id="uname" style="border: 1px;"
								value="${loginUser.uname}" /><br /> <br /> <span>密&nbsp;&nbsp;
								码：</span> <input id="upwd" style="border: 1px;" /><br /> <br /> <a
								class="updateBtn" href="javascript:void(0)">修改</a> --%>
						</form>
					</div>
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
				<li><a>Copyright&copy;Duokan. All Rights Reserved</a></li>
			</div>
		</div>
	</div>
		<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="js/userinfo.js"></script>
</body>
</html>
