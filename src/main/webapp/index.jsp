<%@page import="com.action.bean.ActionBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>音乐推荐系统--莫胜明</title>

    <!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon -->
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style>
        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        .btn-audio{
        	padding: 1px;
        	width: 280px;
        	height: 18px;
        	background-size:cover;
        	margin:center;
        }
    </style>
  </head>


  <body>

    <!-- 导航条 -->
    <nav class="navbar navbar-default">
        <div class="container">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="./index.jsp">音乐推荐系统</a>
                </div>
              
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li class="active"><a href="./discover.jsp">发现音乐 <span class="sr-only">(current)</span></a></li>
                      <li><a href="./moments.jsp">朋友分享</a></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">不要点开 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">项目简介</a></li>
                          <li><a href="#">项目来源</a></li>
                          <li><a href="#">个人简历</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="file:///home/remtor/study/layuiSimpleBlog-v1.0.0/html/index.html">澳门皇冠</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="my_fv/fv_bg.html">这是机密|不要点这里</a></li>
                          <li><a href="./admin/managerList.jsp">这是后台|不要点这里</a></li>
                        </ul>
                      </li>
                    </ul>

                    <form class="navbar-form navbar-left">
                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                      </div>
                      <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right"> 
                        <li><a href="./register.jsp"><span class="glyphicon glyphicon-user"></span> 注册</a></li> 
                        <li><a href="./signin.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li> 
                    </ul> 
                  </div><!-- /.navbar-collapse -->
                  
                </div><!-- /.container-fluid -->
                </div><!-- .container -->
              </nav>


    <div class="container">
    <!-- 中间的巨幕 -->
    <div class="jumbotron">
        <div class="container" >
            <h1 style="text-align: center">音乐就是人类的灵魂</h1>
            <p> </p>
            
        </div>
    </div>
    
    <!-- 列表 -->
    <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><h3>音乐收听榜</h3></div>
            <div class="panel-body">
              <p>这是一个野鸡排行</p>
            </div>
          
            <!-- Table -->
            <table class="table table-hover">
                    
                        <thead>
                          <tr >
                            <th>排序</th>
                            <th>歌名</th>
                            <th>播放</th>
                            <th>时长</th>
                            <th>歌手</th>
                          </tr>
                        </thead>
                        <tbody>
                         <%
							ActionBean actionBean = new ActionBean();
							out.println(actionBean.queryMusicsList());
						%>
                          
                        </tbody>
            </table>
    </div>
    <p><a class="btn btn-primary btn-lg" href="https://music.163.com/" role="button" >Learn more</a></p>

    <!-- 分页 -->
    
    <nav aria-label="Page navigation" >
            <ul class="pagination">
              <li>
                <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
    </nav>

    




    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    </div>
    
  </body>
  <footer>
      <div data-role="footer" style="text-align: center" data-position="fixed"  class="navbar-fixed-bottom">
          <p>Copyright © 2018 - 2019 moshengming</p>
      </div>

  </footer>
</html>
