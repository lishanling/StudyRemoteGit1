<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>分类</title>
<link rel="stylesheet" type="text/css" href="css/sort.css" />
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
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="back/list.jsp">榜单</a></li>
				<li><a href="#">分类</a></li>
				<li><a href="#">精品</a></li>
				<li><a href="#">评论</a></li>
			</ul>
		</div>
		<div id="sortid">
			<h2>所有类别</h2>
			<ul>
				<span class="sortchild">文学</span>
				<hr color="#999999" style="margin-right: 120px;" />
				<br />
				<li><a>

						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book10.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">小风暴三世是非得失</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>
				<!--

<li>历史</li>
<li>传记</li>
<li>科幻</li>
<li>计算机</li>
<li>杂志</li>
<li>艺术</li>
<li>外国文学</li>
<li>小说</li>
<li>生活</li>
-->
			</ul>
			<li><a>
					<dl>
						<dt>
							<img src="images/book4.jpg">
						</dt>
						<dd>
							书名:<span class="bookName">半暖</span>
						</dd>
						<dd>
							作者:<span class="bookauthor">妃子一笑</span>
						</dd>
						<dd>
							出版日期:</br> <span class="date">2012年5月4日</span>
						</dd>
						<dd></dd>
					</dl></li> </a>

			</ul>

			<ul>
				<span class="sortchild">科幻</span>
				<hr color="#999999" style="margin-right: 120px;" />
				<br />
				<li><a>
						<dl>
							<dt>
								<img src="images/book6.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">皮囊</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book10.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">小风暴三世是非得失</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl>
				</a></li>
			</ul>


			<ul>
				<span class="sortchild">科幻</span>
				<hr color="#999999" style="margin-right: 120px;" />
				<br />
				<li><a>

						<dl>
							<dt>
								<img src="images/book6.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">皮囊</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>
						<dl>
							<dt>
								<img src="images/book10.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">小风暴三世是非得失</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>

						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>
			</ul>


			<ul>
				<span class="sortchild">科幻</span>
				<hr color="#999999" style="margin-right: 120px;" />
				<br />
				<li><a>

						<dl>
							<dt>
								<img src="images/book6.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">皮囊</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>
						<dl>
							<dt>
								<img src="images/book10.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">小风暴三世是非得失</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>

						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>

				<li><a>
						<dl>
							<dt>
								<img src="images/book4.jpg">
							</dt>
							<dd>
								书名:<span class="bookName">半暖</span>
							</dd>
							<dd>
								作者:<span class="bookauthor">妃子一笑</span>
							</dd>
							<dd>
								出版日期:</br> <span class="date">2012年5月4日</span>
							</dd>
							<dd></dd>
						</dl></li>
				</a>
			</ul>


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

</body>
</html>