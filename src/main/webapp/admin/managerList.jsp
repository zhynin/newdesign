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
    <title>音乐推荐系统--管理员信息--莫胜明</title>

    <!-- Bootstrap -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon -->
    <link rel="icon" href="https://v3.bootcss.com/favicon.ico">

    <!-- Custom styles for this template -->
    <link href="../css/addManager.css" rel="stylesheet">
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
                  <li><a href="main.jsp"><span class="glyphicon glyphicon-user"></span> 首页</a></li>
                  <li><a href="./addManager.jsp"><span class="glyphicon glyphicon-user"></span> 添加管理员</a></li>
                  <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 管理员信息</a></li>
                </ul>
            </div>
        </div><!-- .container -->
    </nav>
    
    <div class="container">
    
    
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><h3>管理员信息列表</h3></div>
            
        
            <!-- Table -->
            <table class="table table-hover">
                    
                        <thead>
                          <tr >
                          	<th class="text-center">选择</th>
                            <th class="text-center">序号</th>
                            <th class="text-center">登录账号</th>
                            <th class="text-center">真实姓名</th>                         
                          </tr>
                          
                        </thead>
                        <tbody>
                     	<%
							ActionBean actionBean = new ActionBean();
							out.println(actionBean.queryManagerALL());
						%>
                        </tbody>
            </table>
    </div>
    
    
    <a href="./addManager.jsp"><button type="button" class="btn btn-info">添加管理员</button></a>
    <a href="javascript:void(0)" onclick="updateManager()" type="button" class="btn btn-warning" id="update-btn">修改此信息</a>
    <a href="javascript:void(0)" onclick="deleteManager()" type="button" class="btn btn-danger" id="delete-btn">删除此信息</a>
    
	
	
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    
    	function selectedRow() {
    		var ms = document.getElementsByName("rad");
			var obj = null;
			for(var i=0; i < ms.length; i++){
				if(ms[i].checked){
					obj = ms[i];
					break;
				}
			}
			if(null == obj){
				alert("亲！请选择一行再操作哦！");
			}
			return obj;
		}
    	function updateManager() {
			var obj = selectedRow();
			if(obj == null)return;
			location="editManager.jsp?manager_id="+obj.value;
		}
    	
    	function deleteManager() {
    		var obj = selectedRow();
			if(obj == null)return;
			if(confirm("确认要删除吗？")){
				location="deleteManager?manager_id="+obj.value;
			}
		}
    </script>
    
    
    <div data-role="footer" style="text-align: center" data-position="fixed"  class="navbar-fixed-bottom">
        <p>Copyright © 2018 - 2019 moshengming</p>
    </div>
	</div>
</body>
</html>