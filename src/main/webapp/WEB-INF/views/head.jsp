<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function firm1()
{//利用对话框返回的值 （true 或者 false）
    if(confirm("你确定要退出?"))
    {//如果是true ，那么就把页面转向thcjp.cnblogs.com
      /*   location.href="/jesus/"; */
    	location.href="/jesus/user/login/logout";
    }
    else
    {//否则说明下了，赫赫
        alert("你按了取消，决定一会在退出（返回值是false)");
    }
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<table style = "background-image:url(/jesus/resource/12.png);" width="100%" height ="50">
		<tr>
		<td width="78" align="left" ><font color ="white"> 登录时间<%= (new java.util.Date()).toLocaleString()%></font></td>
			<td width="78" align="right" ><font color ="white"> [${user.roleName }]${user.userName }
				<a  onclick="firm1()"><font color ="white">退出</font></a>
				</td>
		</tr>
	</table>
</div>

</body>
</html>