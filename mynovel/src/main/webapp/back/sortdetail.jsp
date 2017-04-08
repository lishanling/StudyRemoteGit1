<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>分类</title>
<link type="text/css" rel="stylesheet"  href="css/sortdetail.css" />
</head>

<body>
<div id="box">

<div id="header">
<ul>
<li class="red"><a href="authorlogin.html">登录</a></li>
<li class="red"><a href="#">注册</a></li>
<li class="red"><a href="#">作者中心</a></li>
<li class="red"><a href="#">帮助</a></li>
<li class="red"><a href="#">关于版本</a></li>
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
<li><a href="homepage.html">首页</a></li>
<li><a href="list.html">榜单</a></li>
<li><a href="sort.html">分类</a></li>
<li><a href="#">精品</a></li>
<li><a href="#">评论</a></li>
</ul>
</div>
<div id="sortid">
<h2>历史</h2><br><br>

<div id="sortdetail">
		<ul>
			<!-- <li>
			<a>
			<dl>
			<dt><img src="images/book10.jpg"></dt>
			<dd>书名:<span class="bookName">小风暴三世是非得失</span></dd>
  			<dd>作者:<span class="bookauthor">妃子一笑</span></dd>
 			<dd>出版日期:<br><span class="date">2012年5月4日</span></dd>
			<dd></dd>
			</dl>
			</a>
			</li> -->
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
        	 <a>Copyright&copy;Duokan. All Rights Reserved</a> 
        </div>
    </div>

</body>
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="js/sortdetail.js"></script>
</html>