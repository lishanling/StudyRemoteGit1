<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>管理员信息</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/editadmin.css">
</head>
<body>
	<table id="adminList">
		<tr>
			<a class="addadminBtn" href="javascript:void(0)" onclick="openAdd()">添加</a>
		</tr>

	</table>

	<div id="addDiv">
		<form id="addForm" method="post" enctype="multipart/form-data">
			<p>
				姓名：<input id="aapenname" name="apenname" class="inputclass" />
			</p>
			<p>
				密码：<input type="password" id="aapwd" name="apwd" class="inputclass" />
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp;
				<a class="addBtn" href="javascript:void(0)">添加</a>
			</p>
		</form>
	</div>
	<div id="modifyDiv">
		<form id="modifyForm" method="post" enctype="multipart/form-data">
			<p>
				编号：<input id="uaid" name="aid" readonly="readonly" class="inputclass" />
			</p>
			<p>
				姓名：<input  id="uapenname" name="apenname" class="inputclass" />
			</p>
			<p>
				密码：<input type="password" id="uapwd" name="apwd" class="inputclass" />
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp; 
				<a class="updateBtn" href="javascript:void(0)">修改</a>
			</p>
		</form>
	</div>

	<div id="detailDiv">
		<p>
			编号：<label id="daid"></label>
		</p>
		<p>
			姓名：<label id="dapenname"></label>
		</p>
		
		<p>
			<a class="closeBtn" href="javascript:void(0)">关闭</a>
	</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/editadmin.js"></script>
</body>
</html>