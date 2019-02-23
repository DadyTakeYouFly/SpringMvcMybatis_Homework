<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎登陆PSS进销存软件系统</title>
    <link rel="stylesheet" href="layui/css/layui.css">
	<script src="layui/layui.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/supersized.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="WEB-INF/layui-v2.4.5/layui/css/layui.css">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script src="http://apps.bdimg.com/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <script src="js/supersized.3.2.7.min.js"></script>
    <script src="js/supersized-init.js"></script>
</head>
  <script>
		function login(){
			$.ajax({
				type: 'POST',
				data: $("#login_form").serialize(),
				url:'checklogin',
				success: function(data){
					if(data==1){
						alert("登陆成功,即将跳转");
						window.location.href="index.jsp";
					}else{
						layer.msg("输入错误！！！");
					}
				}
			});
		return false;
		}
		
		window.onload = function()
		{
			$(".connect p").eq(0).animate({"left":"0%"}, 600);
			$(".connect p").eq(1).animate({"left":"0%"}, 400);
		}
		function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
		function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
	</script>
  <body oncontextmenu="return false">
        <div class="page-container">
        	<h1>P&nbsp;S&nbsp;S&nbsp;进&nbsp;销&nbsp;存&nbsp;软&nbsp;件&nbsp;系&nbsp;统</h1>
            <h1 style="margin-top:10px">会&nbsp;员&nbsp;登&nbsp;陆</h1>
            <form  id="login_form" >
				<div>
					<input type="text" name="username" class="username" placeholder="账号" />
				</div>
                <div>
					<input type="password" name="password" class="password" placeholder="密码"   />
                </div>
                <button id="login_btn" type="button" style="font-size:20px" onclick="login()">登&nbsp;&nbsp;&nbsp;&nbsp;陆</button>
            </form>
            <div class="connect">
                <p style="color: yellow;font-size:18px;">Belief is the truth of what is expected and the evidence of what is not seen. -Hebrews 11:1</p>
				<p style="color: yellow;font-size:18px;margin-top:20px;">信是所望之事的实底,是未见之事的确据。</p>
            </div>
        </div>
		
    </body>

</html>


</html>
