<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>音乐推荐系统--增加管理员--莫胜明</title>

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
                  <li><a href="#"><span class="glyphicon glyphicon-user"></span> 添加管理员</a></li>
                  <li><a href="./managerList.jsp"><span class="glyphicon glyphicon-log-in"></span> 管理员信息</a></li>
                </ul>
            </div>
        </div><!-- .container -->
    </nav>
	
	
	
	
	<div class="container">
	<form action="insertManager" class="form-register" id="frm" method="post">
	<h1 class="form-register-heading">添加管理员</h1>
	
	<div class="form-group">
    	<label for="exampleInputName2">登录账号</label>
    	<input type="text" class="form-control" id="manager_id" placeholder="请输入账号" name="manager_id" autocomplete="off" maxlength="10">
  	</div>
  	<div class="form-group">
    	<label for="exampleInputName2">真实姓名</label>
    	<input type="text" class="form-control" id="manager_name" placeholder="请输入姓名" name="manager_name" autocomplete="off" maxlength="20">
  	</div>
  	<div class="form-group">
    	<label for="exampleInputPassword1">登录密码</label>
    	<input type="password" class="form-control" id="manager_pwd" placeholder="请输入密码" name="manager_pwd" autocomplete="off" maxlength="50">
  	</div>
  	<div class="form-group">
    	<label for="exampleInputPassword1">确认密码</label>
    	<input type="password" class="form-control" id="re_manager_pwd" placeholder="请重复密码" name="re_manager_pwd" autocomplete="off" maxlength="50">
  	</div>
  	<div class="form-group">
  		<table>
  			<tr><td id="err_manager_id"></td></tr><tr><td id="err_manager_name"></td></tr>
  			<tr><td id="err_manager_pwd"></td></tr><tr><td id="err_re_manager_pwd"></td></tr><tr><td id="err_pwd"></td></tr>
  		</table> 
  	</div>
	<a onclick="startPost();" href="javascript:void(0)" class="btn btn-info">保存</a>

	</form>
	</div>
	
	
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    	function valiInput(id,msg,n) {
    		var val = document.getElementById(id).value;
			if(val=="" || val.length<n){
				document.getElementById("err_"+id).innerHTML="<span class='err'>"+msg+"</span>";
				return false;
			}else{
				document.getElementById("err_"+id).innerHTML="<span class='suc'>验证通过！！！</span>";
				return true;
			}
		}
    	function valiPwd(){
			if(document.getElementById("manager_pwd").value!=document.getElementById("re_manager_pwd").value){
				document.getElementById("err_pwd").innerHTML="<span class='err'>两次密码不一样！</span>";
				return false;
			}else if (document.getElementById("manager_pwd").value < 6 || document.getElementById("re_manager_pwd").value < 6){
				document.getElementById("err_pwd").innerHTML="";
				return false;
			}else {
				document.getElementById("err_pwd").innerHTML="<span class='err'>全部验证通过，可以提交了！！！</span>";
				return true;
			}
			
		}
    	function startPost() {
    		var ipts = ["manager_id", "manager_name", "manager_pwd", "re_manager_pwd"];
    		var lens = [3,2,6,6];
    		var msg = ["请输入至少三位账号！", "真实姓名不能为空！！", "密码不能少于六位！", "密码不能少于六位！"];
    		var flag = true;
			for(var i = 0; i < ipts.length; i++){
				flag = valiInput(ipts[i], msg[i], lens[i]) && flag;
			}
			flag = valiPwd() && flag;
			if(!flag)return;
			document.getElementById("frm").submit();
		}
    </script>
    
    <div data-role="footer" style="text-align: center" data-position="fixed" class="navbar-fixed-bottom">
        <p>Copyright © 2018 - 2019 moshengming</p>
    </div>

</body>
</html>