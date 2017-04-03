<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>榜单</title>
<link rel="stylesheet" type="text/css" href="css/list.css"/>
</head>

<body>
<div id="box">

<div id="header">
<ul>
<li class="red"><a href="back/login.jsp">登录</a></li>
<li class="red"><a href="back/register.jsp">注册</a></li>
<li class="red"><a href="#">作者中心</a></li>
<li class="red"><a href="#">帮助</a></li>
<li class="red"><a href="back/manage.jsp">后台管理</a></li>
</ul>
</div>

<div id="search">
<ul>
<li><img src="images/logo.jpg"><li>
<li class="s">

<form method="post">
<input style="width:400px; height:40px; border:solid 3px #F98235;" type="text" placeholder="请输入小说名、作者">
<input type="submit" style="width:50px; height:40px; background-color:#F98235; border:solid 3px #F98235;color:#fff; font-family:微软雅黑;border-radius: 15px;　" value="搜索"/>
</form>

</li>
</ul>
</div>

<div id="menu">
<ul>
<li><a href="homepage.jsp">首页</a></li>
<li><a href="#">榜单</a></li>
<li><a href="back/sort.jsp">分类</a></li>
<li><a href="#">精品</a></li>
<li><a href="#">评论</a></li>
</ul>
</div>
<div id="listdetail">
<div id="left">

<ul>
<h1>榜单导航</h1>
<li><a>日度榜</a></li>
<li><a>月度榜</a></li>
<li><a>新书榜</a></li>
</ul>
</div>

<div id="right">

<ul>

<li>
<a>
<dl>
<span class="rightchild">1</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>

<li>
<a>
<dl>
<span class="rightchild">2</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>

<li>
<a>
<dl>
<span class="rightchild">3</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>

</ul><ul>

<li>
<a>
<dl>
<span class="rightchild">4</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>


<li>
<a>
<dl>
<span class="rightchild">5</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>

<li>
<a>
<dl>
<span class="rightchild">6</span>
<dt><img src="images/book4.jpg"></dt>
<dd>书名:<span class="bookName">半暖</span></dd>
<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
<dd>出版日期：<span class="date">2012年5月4日</span></dd>
<dd></dd>
</dl>

</a>
<li>
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
        	<li><a>Copyright&copy;Duokan. All Rights Reserved</a></li>
        </div>
    </div>

