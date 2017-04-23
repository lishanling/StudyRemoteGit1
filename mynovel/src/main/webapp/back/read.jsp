<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html>
<head>
<base href="${deployName }">
<meta charset="utf-8">
<title>阅读</title>
<link type="text/css" rel="stylesheet" href="css/read.css">
</head>
<div id="box">
	<div id="booktext">
		<h3 id="tit">第一章</h3>
		<span></span>
	</div>
	<div id="r">
		<a href="javascript:void(0)" onclick="find()">显示目录</a></li>
	<div id="mymenu" style="display: none">
	<ul></ul>
	<div>
	</div>
</div>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/read.js"></script>