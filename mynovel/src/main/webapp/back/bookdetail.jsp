<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
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
				<li class="red"><a href="#">作者中心</a></li>
				<li class="red"><a href="#">帮助</a></li>
				<li class="red"><a href="back/adminlogin.jsp">后台管理</a></li>
			</ul>
		</div>
		<div id="search">
			<ul>
				<li><img src="images/logo.jpg"></li>
				<li class="s">
					<form method="post">
						<input
							style="width: 400px; height: 33px; border: solid 3px #F98235;"
							type="text" placeholder="请输入小说名、作者"> <input type="submit"
							style="width: 50px; height: 40px; background-color: #F98235; border: solid 3px #F98235; color: #fff; font-family: 微软雅黑; border-radius: 15px;"
							value="搜索" />
				</li>
			</ul>
		</div>

		<div id="menu">
			<ul>
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="back/list.jsp">榜单</a></li>
				<li><a href="back/sort.jsp">分类</a></li>
				<li><a href="#">精品</a></li>
				<li><a href="#">评论</a></li>
			</ul>
		</div>

		<!-- 头部完 -->

		<div class="g-bd1">
			<!-- 当前位置 -->
			
			<div class="u-nav-crumbs">
				<!-- <span>当前位置：</span> <a href="homepage.jsp" hidefocus="hidefocus">首页</a> <span
					class="sep"></span> <a   href=""
					hidefocus="hidefocus"> 文学</a> <span class="sep"></span>  -->
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
							<div id="cover-img" class="cover">
								
							</div>

							
							<!-- 书的描述 -->
							<div class="desc">
								<!-- <h3>鲁迅全集</h3> -->
 								<div class="cnt">
									<!-- 作者、版权、出版 -->
									<div class="data">
										
									</div>
									<div class="pay">
										
										<div class="act j-act f-cb">
											<div class="btn j-buyarea f-cb">
											<br/>
											<p id="ss" ></p>
											
												<%-- <a id="readdetail" class="u-btn2 j-free"
 													href="${bUrl}"
 												hidefocus="hidefocus" target="_blank">阅读</a>  --%>
 												<a class="u-btn j-get" href="javascript:void(0);"
											 hidefocus="hidefocus" onclick="addCollects()" id="addsuccess">加入书架</a> <span
													class="added" style="display: none" id="noaddsuccess">已加入书架</span>
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
										style="height: 310px; overflow: hidden;">
									</article>
									
								</section>

								<section class="cnt j-cnt" style="display: none" id="b2">
									<article id="toc"	class="toc">
										<ol>
											<!-- <li >
											<h3 class="title">01 坟</h3>
											<div class="brief brief0"><p></p></div></li> -->
 										</ol>
									</article>
									<div class="more j-close" style="visibility: hidden;">
										<a class="u-more1 j-more" href="javascript:void(0);"
											hidefocus="hidefocus"> 显示全部
											<div class="icn-arrow icn-arrow-bottom">
												<span class="arrow0"></span> <span class="arrow1"></span>
											</div>
										</a>
									</div>

								</section>

								<section class="cnt j-cnt" style="display: none;" id="b3">
									<article class="data">
										<!-- <ul>
											<li>作者： <span class="u-author"> <span
													itemprop="author">鲁迅</span>
											</span>
											</li>
											<li>字数： <span class="size">160.5万字</span>
											</li>
											<li>大小： <span class="size">7.70MB</span>
											</li>
											<li>出版： <span itemprop="datePublished">2012-08-01</span>
											</li>
											<li class="updated f-cb"><label>更新：</label> <span
												class="date" itemprop="dateModified">2016-04-25</span></li>
										</ul> -->
									</article>
								</section>

							</div>
						</div>

						<div id="hot-comment">
 							<section id="new-comment" class="m-comm j-comment" style="">
								<h3 class="ttl">
									<a>最新评论</a>
								</h3>
								 <span id="first">${loginUser.usid}</span>
								<div class="cnt">
  									<div class="u-commlist">
 										<div id="commemtby">
											<ul class="j-commentlist">
												<!-- <li class="itm">
\													<div class="article">
 														<p>看不懂《起死》的内涵</p> 														
													</div>
													<div class="u-comminfo">
														<div class="u-comm-user">
															<div class="u-stargrade">
																<div class="icon grade6"></div>
															</div>
															<span class="autor j-xm-1197146305">1197146305</span> <span
																class="u-sep">-</span> <span class="times">03-20</span>
														</div>
														
													</div>
												</li>	 -->								
											</ul>
										</div>
									</div>
									
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/bookdetail.js"></script>
</body>
</html>

