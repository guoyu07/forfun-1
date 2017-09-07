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
<body style="background-color: #efefef">
<div id="pre" style="width: 0%;z-index:3; position: fixed;top: 65px;left: 0;height: 3px;background-color: #393D49;"></div>
<div class="header" style="background-color:#F0F0F0 /* #f8f8f8 */">
  <div class="main">
    <a class="logo" href="/" title="just for Fun">just for Fun</a>
    <div class="nav">
      <a class="nav-this login-design-color" href="${pageContext.request.contextPath}">
         <!-- <i class="iconfont icon-ui"></i> --><i class="layui-icon">&#xe63a;</i> 话题
      </a>
      <a class="nav-this login-design-color" href="jie/index.html">
         <!-- <i class="iconfont icon-wenda"></i> --><i class="layui-icon">&#xe6ed;</i>  视频
      </a>
      <a class="nav-this login-design-color" href="http://www.layui.com/" target="_blank">
         <!-- <i class="iconfont icon-ui"></i> --><i class="layui-icon">&#xe6fc;</i> 音乐
      </a>
      <a class="nav-this login-design-color" href="${pageContext.request.contextPath}/sys/log">
         <!-- <i class="iconfont icon-ui"></i> --><i class="layui-icon">&#xe60e;</i> 系统日志
      </a>
    </div>
    
    <div class="nav-user">
    <div class="nav" id="tp-weather-widget"></div>
      <!-- 未登入状态 -->
      <shiro:guest>
	      <a class="unlogin" href="user/login.html"><i class="iconfont icon-touxiang"></i></a>
	      <span><a href="${pageContext.request.contextPath}/login">登录</a><a href="user/reg.html">注册</a></span>
	      <!-- <p class="out-login">
	        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
	        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
	      </p> -->   
      </shiro:guest>
      <!-- 登入后的状态 -->
      <shiro:user>
	      <a class="avatar" href="user/index.html">
	        <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
	        <cite><shiro:principal/></cite>
	      </a>
	      <div class="nav">
	        <a href="/user/set/"><i class="iconfont icon-shezhi"></i>设置</a>
	        <a href="${pageContext.request.contextPath}/logout"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退出</a>
	      </div>  
      </shiro:user>
    </div>
  </div>
</div>


<div class="main layui-clear">
  <div class="timeline-box">
	  <ul class="layui-timeline">
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017.08.22  星期二</h3>
		      <p>小细节修改</p>
		      <ul>
		      	<li>修改头部导航栏图标：<strong>话题</strong>、<strong>视频</strong>、<strong>音乐</strong>、<strong>系统日志</strong></li>
		      	<li>添加系统日志页面，也就是现在看到的</li>
		      	<li>添加标签页的ico图标</li>
		      	<li>登录页添加 QQ 微博图标</li>
		      	<li>添加 <strong>fun！</strong> logo图标</li>
		      </ul>
		      <p><br>点滴生活，用心铭记 <i class="layui-icon"></i></p>
		    </div>
		  </li>
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <h3 class="layui-timeline-title">2017.08.16  星期三</h3>
		      <ul>
		      	<li>forFun选择将<strong>shiro</strong>作为自己的安全框架</li>
		      	<li>设计登录页面</li>
		      	<li>完成登录、退出后台逻辑</li>
		      </ul>
		      <p>
		         <br>经过苦逼的努力，成功完成 <i class="layui-icon"></i>
		      </p>
		    </div>
		  </li>
		  <li class="layui-timeline-item">
		    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
		    <div class="layui-timeline-content layui-text">
		      <div class="layui-timeline-title">过去</div>
		    </div>
		  </li>
		</ul>
	</div>
</div>

<div class="footer">
  <p><a href="http://fly.layui.com/">just for Fun</a> 2017 &copy; <a href="">史明辉</a></p>
  <p>Designed by<strong><a class="login-design-color" target="_blank" href="${pageContext.request.contextPath}">forFun</a></strong>
  </p>
</div>
<script src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/res/js/jQuery/jquery-3.2.1.min.js"></script>
<script>
(function() {
    var $w = $(window);
    var $prog2 = $('#pre');
    var wh = $w.height();
    var h = $('body').height();
    var sHeight = $('body').height() - $w.height();
    $w.on('scroll', function() {
      window.requestAnimationFrame(function(){
      	var sHeight = $('body').height() - $w.height();
        var perc = Math.max(0, Math.min(1, $w.scrollTop() / sHeight));
        updateProgress(perc);
      });
    });

    function updateProgress(perc) {
      $prog2.css({width: perc * 100 + '%'});
    }

  }());
(function(){
	(function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))
		tpwidget("init", {
		    "flavor": "slim",
		    "location": "WX4FBXXFKE4F",
		    "geolocation": "enabled",
		    "language": "zh-chs",
		    "unit": "c",
		    "theme": "chameleon",
		    "container": "tp-weather-widget",
		    "bubble": "enabled",
		    "alarmType": "badge",
		    "uid": "UF16541FA9",
		    "hash": "f0ad5b6dc6c6ce98f86b939784c089cc"
		});
	tpwidget("show");
}()) 
  
  
</script>

</body>
</html>