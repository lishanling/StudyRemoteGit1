<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书信息</title>
<base href="${deployName }">
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
</head>
<body>
	<!-- <table id="book_info"></table> -->
	<table id="book_info">
		<tr>
			<a class="addBook" href="javascript:void(0)" onclick="add()">添加</a>
		</tr>
	</table>
	
	<div id="addDiv">
		<form id="addForm"  method="post" enctype="multipart/form-data">
			<p>
				类型 :&nbsp;<select name="ssid" id="ssid"></select>
			</p>
			<p>
				书 名 :&nbsp;<input id="bname" name="bname" />
			</p>
			<p>
				作 者 :&nbsp;<input id="bauthor" name="bauthor" />
			</p>
			<p>
				出版社:&nbsp;<input id="bcopyright" name="bcopyright" />
			</p>
			<p>
				出版时间:<input id="bdate" name="bdate" />
			</p>
			<p>
				访问地址:<input id="burl" name="burl" />
			</p>
			<p>
				简 介 : &nbsp;<input id="bdesc" name="bdesc" />
			</p>
			<p>
				封 面 :<input id="upicPath" type="file" name="picData"
					onchange="chgPic(this)" /><br> <img src="images/not_pic.jpg"
					id="pic" width="100" height="100">
			</p>
			<p>
				<a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp; 
				<a class="updateBtn" href="javascript:void(0)">添加</a>
			</p>
		</form>
	</div>
<div id="detailDiv">
			<p>&nbsp; 编 号 :<label id="dbid" ></label></p>
			<p>&nbsp; 书 名 :<label id="dbname" ></label></p>
			<p>&nbsp; 作 者 :<label id="dbauthor" ></label></p>
			<p>&nbsp; 出版社:<label id="dbcopyright" ></label></p>
			<p>&nbsp; 出版时间:<label id="dbdate" ></label></p>
			<p>&nbsp; 访问地址:<label id="dburl" /></label></p>
			<p>&nbsp; 简   介 : &nbsp;<label id="dbdesc" /></label></p>
			<p>&nbsp; 封 面 :<img src="images/not_pic.jpg" id="ddpic" width="100" height="100" align="top"></p>
			<p><a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp;
	</div>
	<div id="modifyDiv">
		<form id="modifyForm"  method="post" enctype="multipart/form-data">
			<p> 编 号 :&nbsp;<input id="bid" name="bid" readonly="readonly" style="border:none"/></p>
			<p> 书 名 :&nbsp;<input id="bname" name="bname" /></p>
			<p> 作 者 :&nbsp;<input id="bauthor" name="bauthor"/></p>
			<p>出版社:&nbsp;<input id="bcopyright" name="bcopyright"/></p>
			<p>出版时间:<input id="bdate" name="bdate"/></p>
			<p>访问地址:<input id="burl" name="burl"/></p>
			<p>简  介 : &nbsp;<input id="bdesc" name="bdesc"/></p>
			 <p> 封 面 :
			 <input id="picData" type="file" name="picData" onchange="chgPic(this)"/><br>
			<img src="images/not_pic.jpg" id="pic" width="100" height="100">
			</p>
			<p><a class="closeBtn" href="javascript:void(0)">关闭</a>&nbsp;&nbsp;
			  <a class="updateBtn"  href="javascript:void(0)">修改</a>
		</p>
		</form>
	</div>
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/book_info.js"></script>
</body>
</html>