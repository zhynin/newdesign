<%@page import="com.action.bean.ActionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>音乐推荐系统--后台首页--莫胜明</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon -->
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <!-- Custom styles for this template -->
    <link href="../css/addManager.css" rel="stylesheet">
    <link href="../css/fv_t.css" rel="stylesheet">
	<style>
        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        .form-horizontal {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }
        .text-center {
        	margin-text: center;
        	margin: 0 auto;
        }
    </style>
</head>
<body>
	<!-- 导航条 -->
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="../index.jsp">音乐推荐系统</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="./addManager.jsp"><span class="glyphicon glyphicon-user"></span> 添加管理员</a></li>
                  <li><a href="managerList.jsp"><span class="glyphicon glyphicon-log-in"></span> 管理员信息</a></li>
                  <li><a href="exit.jsp"><span class="glyphicon glyphicon-log-in"></span> 退出登录</a></li>
                </ul>
            </div>
        </div><!-- .container -->
    </nav>
    
    <div class="container">
    
    <div class="jumbotron">
  		<h1 style="text-align: center">后台管理首页</h1>
  		<br>
  		<br>
  		<p style="text-align: center">
  		 <a class="btn btn-primary btn-lg" href="managerList.jsp" role="button">进入管理员列表</a>
  		 <a class="btn btn-info btn-lg" href="addManager.jsp" role="button">添加管理员信息</a>
  		 <a class="btn btn-warning btn-lg" href="managerList.jsp" role="button">修改管理员信息</a>
  		 <a class="btn btn-danger btn-lg" href="managerList.jsp" role="button">删除管理员信息</a>
  		 </p>
	</div>	
	</div>
	
	<div class="center">
  <div class="mountains"></div>
  <div class="train">
    <div class="engine-front">
      <div class="chimney">
        <div class="smoke"></div>
        <div class="smoke smoke-2"></div>
        <div class="smoke smoke-3"></div>
        <div class="smoke smoke-4"></div>
      </div>
    </div>
    
    <div class="engine-body"></div>
    
    <div class="compartment">
      <div class="compartment-window"></div>
    </div>
    
    <div class="compartment compartment-two">
      <div class="compartment-window"></div>
    </div>
    
    <div class="compartment compartment-three">
      <div class="compartment-window"></div>
    </div>
    
    <div class="wheel-holder">
      <div class="wheel"></div>
      <div class="wheel wheel-2">
        <div class="wheel-joint"></div>
        <div class="wheel-joint wheel-joint-2"></div>
      </div>
      <div class="wheel wheel-3"></div>
      <div class="wheel wheel-4"></div>
      <div class="wheel wheel-5"></div>
      <div class="wheel wheel-6"></div>
      <div class="wheel wheel-7"></div>
      <div class="wheel wheel-8"></div>
      <div class="wheel wheel-9"></div>
    </div>
  </div>
  <div class="bridge"></div>
</div>
	
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
 
    
    <div data-role="footer" style="text-align: center" data-position="fixed" class="navbar-fixed-bottom">
        <p>Copyright © 2018 - 2019 moshengming</p>
    </div>
	
</body>
</html>