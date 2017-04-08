<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet" href="easyui/themes/default/easyui.css">
</head>
<body>

	<div id="addDiv">
		<form id="addForm" method="post" enctype="multipart/form-data">
			<p>
				编号：<input id="aaid" name="aid" class="inputclass" />
			</p>
			<p>
				姓名：<input id="aapenname" name="apenname" class="inputclass" />
			</p>
			<p>
				密码：<input id="aapwd" name="apwd" type="password" class="inputclass" />
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp; <a
					class="addBtn" href="javascript:void(0)">添加</a>
			</p>
		</form>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/addadmin.js"></script>
</body>
</html>