<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>目录信息</title>
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
</head>
<body>
	<table id="menuList">
		<tr>
			<a class="addmenuBtn" href="javascript:void(0)" onclick="openAdd()">添加</a>
		</tr>

	</table>

	<div id="addDiv">
		<form id="addForm" method="post" enctype="multipart/form-data">
			<p>
				章&nbsp;节：<input id="mid" name="mid" class="inputclass" />
			</p>
			<p>
				章节名：<input id="mname" name="mname" class="inputclass" />
			</p>
			<p>
				书编号：<input id="bid" name="bid" class="inputclass" />
			</p>
			<p>
				内容：
				<textarea id="bcontent" name="bcontent" rows="6" cols="25"></textarea>
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp; <a
					class="addBtn" href="javascript:void(0)">提交</a>
			</p>
		</form>
	</div>
	<div id="modifyDiv">
		<form id="modifyForm" method="post" enctype="multipart/form-data">
			<p>
				章&nbsp;节：<input id="umid" name="mid" readonly="readonly" class="inputclass" />
			</p>
			<p>
				章节名：<input id="umname" name="mname" class="inputclass" />
			</p>
			<p>
				书编号：<input id="ubid" name="bid" readonly="readonly" class="inputclass" />
			</p>
			<p>
				内容：
				<textarea id="ubcontent" name="bcontent" rows="6" cols="25"></textarea>
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp; <a
					class="updateBtn" href="javascript:void(0)">修改</a>
			</p>
		</form>
	</div>

	<div id="detailDiv">
		<p>
			章&nbsp;节：<input id="dmid" name="mid" class="inputclass" />
		</p>
		<p>
			章节名：<input id="dmname" name="mname" class="inputclass" />
		</p>
		<p>
			书编号：<input id="dbid" name="bid" class="inputclass" />
		</p>
		<p>
			内容：
			<textarea id="dbcontent" name="bcontent" rows="6" cols="25"></textarea>
		</p>
		<p>
			<a class="closeBtn" href="javascript:void(0)">关闭</a>
	</div>

	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/menuinfo.js"></script>
</body>
</html>