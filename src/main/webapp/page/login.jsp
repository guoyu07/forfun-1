<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>forFun</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="forFun">
  <meta name="description" content="forFun">
  <link rel="icon" href="${pageContext.request.contextPath}/res/css/favicon.ico" type="image/x-icon" />
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/res/css/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/global.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/forfun.css">
</head>
<body style="margin-top: 15%;">

	<video preload="auto" class="video-player" autoplay="autoplay" loop="loop">
	    <source src="res/video/sea.mp4" type="video/mp4">
	</video>

	<div class="login-box login-box-radius">
		<h1>forFun 登录</h1>
		<form class="layui-form" method="post" action="${pageContext.request.contextPath}/login">
			<div class="layui-form-item">
			     <input type="text" name="username" lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
			 </div>
			 
			 <div class="layui-form-item">
			     <input type="password" name="password" lay-verify="required" placeholder="密码" autocomplete="off" class="layui-input">
			 </div>
			 
			 <button class="layui-btn login-btn" lay-submit lay-filter="login">登录</button>
			 
			 <div class="login-auth">
			 	<a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
	        	<a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
			 </div>
		</form>
		
		<div class="login-design">
			<p>Designed by 
			<strong><a class="login-design-color" href="${pageContext.request.contextPath}">forFun</a></strong>
			</p>
		</div>
	</div>
<script src="${pageContext.request.contextPath}/res/js/jQuery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['layer','form'], function(){
		var form = layui.form,
		 	layer = layui.layer,
			error = "${error}";
			
		form.on('submit(login)', function(data){
			//TODO
		});
		
		if(error){
			layer.msg(error, {icon: 4});
		}
		
	});
	$(function(){
		$(window).resize(function(){
			$(".video-player").css({
				"width":"100%",
				"height":"100%"
			})
		}).resize(); 
	}) 
</script>
</body>
</html>
