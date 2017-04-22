<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>分类</title>
<link rel="stylesheet" type="text/css" href="css/us.css" />
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
				<li><img src="images/logo.jpg">
				<li>
				<li class="s">

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
		<div id="us">
		<h3>关于我们</h3>
		<p></p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 锦书阅读是新兴的女性阅读与原创平台。隶属于北京大麦中金科技有限公司，成立于2011年12月份。具有雄厚的势力，顶尖的团队，目前与众多出版机构、<p>
		 </p>&nbsp;&nbsp;&nbsp;&nbsp;影视公司和无线版权运营机构具有深度合作。
		 主要提供在线阅读、无线阅读、影视改编、游戏改编、动漫改编、实体出版服务等业务。依托原创文学作品，通过发掘精品和高端策划，向社会输出精品版权，以实现版权价值最大化。

寻找每一部原创作品的亮点，开发每一部精品的卖点。这是我们永远的追求。

锦书阅读很年轻，但成长却很快。<p></p>

&nbsp;&nbsp;&nbsp;&nbsp;锦书阅读从创建到现在近两年时间内，网站日均访问用户超过40000人，日PV超过1800000次。<p></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网站拥有签约作家1260人，拥有原创文学作品2050部（其中95%以上为长篇小说），
其中不乏大量网络上很有名气的当红作家和作品锦书阅读一年多来不断向众多无线阅读平台、影视公司、杂志和出版社等版权需求方输送优质版权累计超过600部。在无线方面，我们版权库里拥有一世风流、蓝尧、雪凝烟、月斜影清、甲乙明堂、于正、靳羽西、金星、扬扬、锦夏末、小妖火火等作品；在漫画方面，我们拥有蔡志忠、王泽等名家漫画作品；在影视改编方面，我们成功签约了《天才小毒妃》、《恶魔少爷别吻我》、《闺蜜来了》、《VIP情人》、《大清最后的格格：步云衢》、《帝凰之神医弃妃》、《最美不过初相见》等作品，而且还有一系列在谈重大影视项目。

锦书阅读立志成为中国女性原创和女性阅读的重要一部分。&nbsp;&nbsp;锦书阅读真诚期待与各位作家以及版权运营商合作！ 
		
		</p>
		
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
	
<script type="text/javascript">
function outLogin(){
	var uname=$("#dd").html();
	if(uname==null||uname==undefined||uname==''){
		alert("未登录，无需退出");
	}else{
		$.post("user/outlogin",function(data){
			alert("退出成功！");
			window.location.replace("back/outlogin.jsp"); 
		});
	}
}
	
</script>
</body>
</html>