<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head  runat="server">
<base href="${deployName}">
<meta charset="utf-8">
<title>阅读</title>
<link rel="stylesheet" type="text/css" href="css/bookdetail.css" />
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
				<li class="red"><a href="back/adminlogin.jsp">后台管理</a></li>
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
				<li><a href="back/us.jsp">关于我们</a></li>
				<li><a href="back/search.jsp">去搜索</a></li>
				<li><a href="back/client.jsp">客户端</a></li>
			</ul>
		</div>

		<!-- 头部完 -->

		<div class="g-bd1">
			<!-- 当前位置 -->

			<div class="u-nav-crumbs">
				
			</div>

			<!-- 正文部分 wrap -->
			<div class="g-wrap">

				<!-- 整体除去空白的部分 g-mn -->
				<div class="g-mn">

					<!-- 分为两栏 g-mnc  -->
					<div class="g-mnc">

						<!-- 书和旁边的简介以及收藏 -->
						<div class="m-bookdata j-bookdata f-cb" itemscope=""
							itemtype="http://schema.org/Book">
							

							<!-- 封面的位置 -->
							<div id="cover-img" class="cover"></div>


							<!-- 书的描述 -->
							<div class="desc">
								<!-- <h3>鲁迅全集</h3> -->
								<div class="cnt">
									<!-- 作者、版权、出版 -->
									<div class="data"></div>
									<div class="pay">

										<div class="act j-act f-cb">
											<div class="btn j-buyarea f-cb">
												<br />
												<a id="ss"></a>
											<!-- 	<a id="collect"></a> -->
												<%-- <a id="readdetail" class="u-btn2 j-free"
 													href="${bUrl}"
 												hidefocus="hidefocus" target="_blank">阅读</a>  --%>
												<p id="ss"></p>

												<a class="u-btn j-get" href="javascript:void(0);"
													hidefocus="hidefocus" onclick="addCollects()"
													id="addsuccess">加入书架</a> <span class="added"
													style="display: none" id="noaddsuccess">已加入书架</span>
											 <br /><br />
<!--         <a href="http://down2.txt99.com/d/file/p/txt/2012/12/三生三世枕上书（两卷全）.txt" >点击下载文件</a>
 -->   
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="m-bookdetail j-detail">
							<div class="u-nav-tab j-tab tabnav">
								<ul>
									<li class="itm crt"><a onclick="tab(1)"
										href="javascript:void(0)">简介</a></li>
									<li class="u-sep">|</li>
									<li class="itm"><a onclick="tab(2)"
										href="javascript:void(0)">目录</a></li>
									<li class="u-sep">|</li>
									<li class="itm"><a onclick="tab(3)"
										href="javascript:void(0)">更多信息</a></li>
								</ul>
								<div class="icn-arrow icn-arrow-top3 j-target"
									style="left: 29px;">
									<span class="arrow0"></span> <span class="arrow1"></span>
								</div>
							</div>
							<div>

								<section class="cnt j-cnt" style="display: block;" id="b1">
									<article id="book-content" class="intro" hidefocus="hidefocus"
										style="height: 310px; overflow: hidden;"></article>

								</section>

								<section class="cnt j-cnt" style="display: none" id="b2">
									<article id="toc" class="toc">
										<ol>
											<!-- <li >
											<h3 class="title">01 坟</h3>
											<div class="brief brief0"><p></p></div></li> -->
										</ol>
									</article>


								</section>

								<section class="cnt j-cnt" style="display: none;" id="b3">
									<article class="data"></article>
								</section>

							</div>
						</div>

						<div id="hot-comment">
							<section id="new-comment" class="m-comm j-comment" style="">
								<h3 class="ttl">
									<a>最新评论</a>
								</h3>
								<span id="first" style="display: none">${loginUser.usid}</span>
								<div class="cnt">
									<div class="u-commlist">
										<div id="commemtby">
											<ul class="j-commentlist">

											</ul>
										</div>
									</div>
							</section>
						</div>

						<div>
							<h3>添加评论</h3>
							<input id="discuss" placeholder="20字以内" type="text"
								style="font-size: 16px; width: 440px; heitht: auto" /> <br />
							<button style="color: #ED6C00; width: 70px"
								onclick="addDiscuss()">发 表</button>
						</div>
					</div>
					<br />
					<br />
					<br />
					<br />
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
			<li><a>Copyright&copy;Duokan. All Rights Reserved</a></li>
		</div>
	</div>
	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/bookdetail.js"></script>
</body>
</html>

