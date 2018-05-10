<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>login</title> 
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 

<div class="login">
    <div class="message">华理及时雨</div>
    <div id="darkbannerwrap"></div>
    
    <form action="login" method="post">
		<input name="action" value="login" type="hidden">
		<input name="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<label class="mdui-radio">
		<input type="radio" name="user" value="customer" checked/>
		<i class="mdui-radio-icon"></i>
		普通用户&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</label>
		<label class="mdui-radio">
        <input type="radio" name="user" value="admin"/>
        <i class="mdui-radio-icon"></i>
		管理员
		</label>
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="submit">
		<hr class="hr20">
		<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
	</form>

	
</div>

<div class="copyright">© 华理及时雨计划</div>

</body>
</html>