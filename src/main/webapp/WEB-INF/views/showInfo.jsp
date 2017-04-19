<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
</head>
<body>
<table>
<tr>
	<td>序号</td>
	<td>姓名</td>
	<td>密码</td>
	<td>身份</td>
	<td>真实姓名</td>
	<td>年龄</td>
	<td>位置</td>
	<td>备注</td>
	<td>修改</td>
	<td>删除</td>
</tr>
<c:forEach items="${plist}" var="info" >
			<%-- <tr>
				<td>${info.personId }</td>
				<td>${info.username }</td>
				<td>${info.password }</td>
				<td>${info.roleName }</td>
				<td>${info.trueName }</td>
				<td>${info.age }</td>
				<td>${info.location }</td>
				<td>${info.text }</td>
				<td><a href = "queryByuserId/${user.userId}">修改</a>
				<td><a href = "delete/${user.userId}">删除</a>
				
			</tr> --%>
		</c:forEach>

</table>

</body>
</html>