<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
<div>
	<form id="form2" name ="form2" action = "/jesus/user/log" method ="post">
	用户：<input type="text" name="userName" id="userName"><br>
	密码：<input type="text" name="password" id="password"><br>
	确认密码：<input type="text" name="password1" id="password1"><br>
	<input type="submit" value="注册" >
	<input type = "reset" value="重置">

	</form>


</div>

<br>
<a href = "/jesus/">返回登录</a>
</body>
</html>