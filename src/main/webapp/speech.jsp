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
    <script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
    
    <style>
        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        .top-bt {
        	margin-top: 14px;
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
                            <li><a href="#">这是机密|不要点这里</a></li>
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
        <div class="container">
            <h1 style="text-align: center">Hello, world!</h1>
            <p>大轮播放</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        </div>
    </div>
    
    
    
    
    <!-- 发布分享 -->
    <form  action="sendSpeech" id="frm" method="post">
    	
    	<div class="form-group form-inline">
   			<label for="speech_user">展示昵称</label>
    		<input type="text" class="form-control" id="speech_user" placeholder="例：跃的小明明" name="speech_user" autocomplete="off" maxlength="16">
  		</div>
 		 <div class="form-group form-inline" >
    		<label for="speech_date">分享时间</label>
    	<input type="date" class="form-control" id="speech_date" placeholder="例：201903281620" name="speech_date" autocomplete="off" maxlength="36">
  		</div>
  		
  		
  		<div class="form-group">
  		<table>
  			<tr><td id="err_speech_user"></td></tr><tr><td id="err_speech_date"></td></tr>
  		</table> 
  	</div>
    	<!--  <textarea name="cemtextsdl" class="form-control" rows="3"></textarea> -->
    	<!-- Editor -->		
		<div style="text-align:left;">
			
        	<div id="Editor">  	
        	</div>
    	</div> 
    	<!-- Editor -->	
    	
    	 <a href="javascript:void(0)" onclick="startPost()" type="button" class="btn btn-primary top-bt" id="update-btn">分享内容</a>
    </form>
	<br>
	<br>    
    
    <!-- 分享 -->
    <div class="media">
            <div class="media-body">
              <h4 class="media-heading">昵称</h4>
              <p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
              <p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
              <p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
            </div>
    </div>
    <hr>
    


    </div>




    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    <!-- editor -->
    <script src="./js/wangEditor.min.js"></script>
    <script type="text/javascript">
    var editor
    $(function (){
        var E = window.wangEditor
        editor = new E('#Editor')
        editor.customConfig.uploadImgShowBase64 = true
        editor.create()
    });
    </script>   
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
	function startPost() {
		
	    
		
   		var ipts = ["speech_user", "speech_date"];
		var lens = [1,4];
		var msg = ["请输入昵称！", "选择时间！！"];
		var flag = true;
		for(var i = 0; i < ipts.length; i++){
			flag = valiInput(ipts[i], msg[i], lens[i]) && flag;
		}
		if(!flag)return; 
		
/* 		var text = editor.txt.html();
		alert(text); */
		/*alert(speech_user + "speech_user");
		alert(document.getElementById("frm") + "frm");
		var textEle = document.getElementById('text') // 找到内容标签
		alert(textEle + "textEle");
		var inputEle = document.getElementById('textValue') // 找到 textValue 元素
		alert(inputEle + "inputEle");
		var textValue = textEle.innerText // 获取标签的值
		alert( textValue + "textValue");
		inputEle.value = textValue // 将值 赋给 inputEle 元素
		alert(inputEle.value + "inputEle.value"); */
/* 
		 */
		/* document.getElementById("frm").submit();  */
		$.ajax({
	        type:"post",
	        url:"sendSpeech",
	        data:{
	        	"speech_user":$("#speech_user").val(),
	            "speech_date":$("#speech_date").val(),
	            "text":editor.txt.html(),
	        },
	        success: function(result){
	        	window.location.href = "moments.jsp"
	        },
	    });
	}
	
    </script>


  </body>
  <footer>
      <div data-role="footer" style="text-align: center" data-position="fixed" class="navbar-fixed-bottom">
          <p>Copyright © 2018 - 2019 moshengming</p>
      </div>
  </footer>
</html>
