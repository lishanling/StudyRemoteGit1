<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${deployName }">
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
</head>
<body>
<table id="user_info"> </table>
	<div id="userDetail">
		<form action="#" method="post">
			<p>
				<label> 编号 :</label> <input id="uid" style="border: 0px;" />
			</p>
			<p>
				<label> 用户名 :</label> <input id="uname" style="border: 0px;" />
			</p>
			<p>
				<label> 邮箱: </label> <input id="uemail" style="border: 0px;" />
			</p>
		</form>
	</div>

	<script type="text/javascript" src="js/backuser.js"></script>
</body>
</html>