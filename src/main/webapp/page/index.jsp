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
	      </p>  -->  
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
  <div class="wrap">
    <div class="content">
      <div class="fly-tab fly-tab-index">
        <span>
          <a href="jie/index.html">全部</a>
          <a href="jie/index.html">未结帖</a>
          <a href="jie/index.html">已采纳</a>
          <a href="jie/index.html">精帖</a>
          <a href="user/index.html">我的帖</a>
        </span>
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="jie/add.html" class="layui-btn jie-add">发布问题</a>
      </div>
      
      
      <ul class="fly-list fly-list-top">
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">基于 layui的轻量级问答社区页面模版 V2版本</a>
            <span class="fly-tip-stick">置顶</span>
            <span class="fly-tip-jing">精帖</span>
          </h2>
          <p>
            <span><a href="user/home.html">贤心</a></span>
            <span>刚刚</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 317
              <i class="iconfont" title="人气">&#xe60b;</i> 6830
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/00.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">基于 layui的轻量级问答社区页面模版 V2版本</a>
            <span class="fly-tip-stick">置顶</span>
          </h2>
          <p>
            <span><a href="user/home.html">纸飞机</a></span>
            <span>30分钟前</span>
            <span>技术闲谈</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 502
              <i class="iconfont" title="人气">&#xe60b;</i> 81689
            </span>
          </p>
        </li>
      </ul>
      
      <ul class="fly-list">
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.html" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.html">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.html">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
      </ul>
      
      <div style="text-align: center">
        <div class="laypage-main">
          <a href="jie/index.html" class="laypage-next">更多求解</a>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="edge">
    <div class="fly-panel leifeng-rank"> 
      <h3 class="fly-panel-title">近一月回答榜 - TOP 12</h3>
      <dl>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.html">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
      </dl>
    </div>
    
    <dl class="fly-panel fly-list-one"> 
      <dt class="fly-panel-title">最近热帖</dt>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.html">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.html">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.html">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.html">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
    </dl>
    
    <dl class="fly-panel fly-list-one"> 
      <dt class="fly-panel-title">近期热议</dt>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.html">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
    </dl>
    
    <div class="fly-panel fly-link"> 
      <h3 class="fly-panel-title">友情链接</h3>
      <dl>
        <dd>
          <a href="http://www.layui.com/" target="_blank">layui</a>
        </dd>
        <dd>
          <a href="http://layim.layui.com/" target="_blank">LayIM</a>
        </dd>
        <dd>
          <a href="http://layer.layui.com/" target="_blank">layer</a>
        </dd>
      </dl>
    </div>


  </div>
</div>

<div class="footer">
  <p><a href="http://fly.layui.com/">just for Fun</a> 2017 &copy; <a href="">史明辉</a></p>
  <p>Designed by<strong><a class="login-design-color" target="_blank" href="${pageContext.request.contextPath}">forFun</a></strong>
    <!-- <a href="http://fly.layui.com/auth/get" target="_blank">产品授权</a>
    <a href="http://fly.layui.com/jie/8157.html" target="_blank">获取Fly社区模版</a>
    <a href="http://fly.layui.com/jie/2461.html" target="_blank">微信公众号</a> -->
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