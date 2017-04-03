<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${deployName }">
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"	href="easyui/themes/default/easyui.css">
</head>
<body>
<table id="backuser"> </table>
	<div id="user_Detail">
    <form action="#" method="post">
    <p>
        <img src="images/not_pic.jpg" id="ipic"  style="width:100px;height:100px">
      </p>
      <p>
        <label> 用户名:</label>
        <input id="username" style="border:0px;"/>
         
      </p>
     
    </form>
	</div>  
	<script type="text/javascript" src="js/backuser.js"></script>
</body>
</html>