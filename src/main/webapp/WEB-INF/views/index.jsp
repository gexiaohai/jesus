<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>

<body >
<div>
<table style="background-image:url(resource/12.png);" width="100%" height="50" >
<tr>
<td width="100" align="left" ><font color = "white">首页</font></td></td>

<td width="78" align="right" ><font color="white">欢迎登录网站 没有账号？</font>
<a href="jump/register.jsp"> <font color="white">注册</font></a></td>
</tr>
</table>
</div>
<jsp:include page="background.jsp"/>

<div align="right">
<form  name = "form1" id = "form1" action="user/login" method ="post" >
			用户：<input type="text" name="userName" id="userName">
			<br> 
			密码：<input type="text" name="password" id="password">
			<br>
			<input type="submit" value="登录">
			<input type="reset"  value= "清空">
	</form>

</div>


<!-- <a href="NewFile.jsp">asdfa</a> -->
<!-- <input type="button" value="zhuce" onclick="window.location.href='resource/NewFile.jsp';"/> -->
</body>
</html>