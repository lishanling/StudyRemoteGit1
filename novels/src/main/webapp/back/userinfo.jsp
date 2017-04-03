<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<base href="/novel/">
<meta charset="utf-8">
<title>我的信息</title>
<link rel="stylesheet" type="text/css" href="css/userinfo.css"/>
<script language='javascript'> 
 function tab(n){ 
	  var tabnav="a"+n; 
	  var tabid="b"+n; 
	  cleardisplay();  
	  document.getElementById(tabid).style.display="block"; //显示对象
	   }
 function cleardisplay(){ 
 for ( var i=1;i<3;i++) { 
  var cleartabid="b"+i; 
  document.getElementById(cleartabid).style.display="none"; //不显示对象
  } 
   }  </script>
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
      <li><img src="images/logo.jpg"> </li>
      <li class="s">
        <form method="post">
          <input style="width:400px; height:40px; border:solid 3px #F98235;" type="text" placeholder="请输入小说名、作者"/>
          <input type="submit" style="width:50px; height:40px; background-color:#F98235; border:solid 3px #F98235;color:#fff; font-family:微软雅黑;border-radius: 15px;　" value="搜索"/>
        </form>
      </li>
    </ul>
  </div>
  <div id="menu">
    <ul>
      <li><a href="homepage.jsp">首页</a></li>
      <li><a href="list.jsp">榜单</a></li>
      <li><a href="sort.jsp">分类</a></li>
      <li><a href="#">精品</a></li>
      <li><a href="#">评论</a></li>
    </ul>
  </div>
  <div id="wk">
    <div id="left" class="tabnav">
      <h1 align="center" style="color:#999">个人中心</h1>
      <ul>
        <li class="crt" id="a1" onClick="tab(1)"> <a href="#">我的收藏</a> </li>
        <li class="" id="a2" onClick="tab(2)"> <a href="#">账号设置</a> </li>
      </ul>
    </div>
    <div id="right">
      <div id="rh">
        <h1 align="center" id="headinfo" style="color:#000">我   的</h1>
      </div>
      <div class="container" id="b1">
      
      
      <div class="u-colslist">
          <ul class="j-container">
          
            <li class="u-bookitm1 u-bookitm1-1"> <a class="book" hidefocus="hidefocus" href=""> <img style="display: block;" onload="onLoadImg(this)" oncontextmenu="return false;" ondragstart="return false;" src="images/1.png"> </a>
              <div class="info">
                <div class="wrap"> <a class="title" hidefocus="hidefocus" href="">设计龙门阵（第三季）</a>
                  <p class="u-author"> <span>ZCOOL站酷</span> </p>
                </div>
                <div class="act"> <a class="j-delete delete" hidefocus="hidefocus" href="javascript:void(0);">取消收藏</a> <span class="u-sep">|</span> <a hidefocus="hidefocus" href="">去阅读</a> </div>
              </div>
            </li>
            
            <li class="u-bookitm1 u-bookitm1-1"> <a class="book" hidefocus="hidefocus" href=""> <img style="display: block;" onload="onLoadImg(this)" oncontextmenu="return false;" ondragstart="return false;" src="images/1.png"> </a>
              <div class="info">
                <div class="wrap"> <a class="title" hidefocus="hidefocus" href="">设计龙门阵（第三季）</a>
                  <p class="u-author"> <span>ZCOOL站酷</span> </p>
                </div>
                <div class="act"> <a class="j-delete delete" hidefocus="hidefocus" href="javascript:void(0);">取消收藏</a> <span class="u-sep">|</span> <a hidefocus="hidefocus" href="">去阅读</a></div>
              </div>
            </li>
            
            <li class="u-bookitm1 u-bookitm1-1"> <a class="book" hidefocus="hidefocus" href=""> <img style="display: block;" onload="onLoadImg(this)" oncontextmenu="return false;" ondragstart="return false;" src="images/1.png"> </a>
              <div class="info">
                <div class="wrap"> <a class="title" hidefocus="hidefocus" href="">设计龙门阵（第三季）</a>
                  <p class="u-author"> <span>ZCOOL站酷</span> </p>
                </div>
                <div class="act"> <a class="j-delete delete" hidefocus="hidefocus" href="javascript:void(0);">取消收藏</a> <span class="u-sep">|</span> <a hidefocus="hidefocus" href="">去阅读</a></div>
              </div>
            </li>
            
            <li class="u-bookitm1 u-bookitm1-1"> <a class="book" hidefocus="hidefocus" href=""> <img style="display: block;" onload="onLoadImg(this)" oncontextmenu="return false;" ondragstart="return false;" src="images/1.png"> </a>
              <div class="info">
                <div class="wrap"> <a class="title" hidefocus="hidefocus" href="">设计龙门阵（第三季）</a>
                  <p class="u-author"> <span>ZCOOL站酷</span> </p>
                </div>
                <div class="act"> <a class="j-delete delete" hidefocus="hidefocus" href="javascript:void(0);">取消收藏</a> <span class="u-sep">|</span> <a hidefocus="hidefocus" href="">去阅读</a></div>
              </div>
            </li>
            
            <li class="u-bookitm1 u-bookitm1-1"> <a class="book" hidefocus="hidefocus" href=""> <img style="display: block;" onload="onLoadImg(this)" oncontextmenu="return false;" ondragstart="return false;" src="images/1.png"> </a>
              <div class="info">
                <div class="wrap"> <a class="title" hidefocus="hidefocus" href="">设计龙门阵（第三季）</a>
                  <p class="u-author"> <span>ZCOOL站酷</span> </p>
                </div>
                <div class="act"> <a class="j-delete delete"  href="javascript:void(0);">取消收藏</a> <span class="u-sep">|</span> <a  href="">去阅读</a></div>
              </div>
            </li>
            
          </ul>
        </div>
        </div>
     
      <div id='b2' style='display:none'>
      <br/><div class="infomation">
   
      <form action="">
      <span>用户名： </span><input ><br/><br/><br/>
   	  <span>密  码：&nbsp;&nbsp; </span> <input ><br/><br/>
      <button>修改</button>
      </form>

      </div>
           </div>
</div>
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
</body>
</html>
</em>