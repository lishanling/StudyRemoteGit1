<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户信息</title>
<base href="${deployName}">
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"	href="easyui/themes/default/easyui.css">
</head>
<body>
<table id="user_info"> </table>

<div id="modifyDiv">
		<form id="modifyForm" method="post" enctype="multipart/form-data" >
			<p>编&nbsp;&nbsp;号：<input id="usid" name="usid" readonly="readonly" class="inputclass"/></p>
			<p>用户名：<input id="uname" name="uname" class="inputclass"/></p>
			<p>邮&nbsp;&nbsp;箱：<input id="uemail" name="uemail" class="inputclass"/></p>
			<p><a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp;
			<a class="updateBtn" href="javascript:void(0)">修改</a></p>
		</form>
	</div>




	<div id="userDetail">
    <form action="#" method="post">
      <p><label> 编号 :</label><input id="usid" style="border:0px;"/></p>
      <p><label> 用户名 :</label><input id="uname" style="border:0px;"/></p>
      <p><label> 邮箱: </label><input id="uemail" style="border:0px;"/></p>
      
       </form>
	</div> 
	 
	 
	 
	 
	<script type="text/javascript" src="js/backuser.js"></script>
</body>
</html>