<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
function firm()
{//利用对话框返回的值 （true 或者 false）
    if(confirm("你确定要退出?"))
    {//如果是true ，那么就把页面转向thcjp.cnblogs.com
        location.href="/jesus/";
       // location.href="http://thcjp.cnblogs.com";
    }
   
}
</script>
<script type="text/JavaScript"> /*页面动态显示当前的时间OK*/
function getCurrentTime(){
    var now = new Date();
    var time=document.getElementById("showTime").value;
    time=now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate();
    time+=" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
     document.getElementById("showTime").innerHTML=time;
    }
    window.setInterval("getCurrentTime()",1000);
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user</title>
</head>

<body>
<jsp:include page="background.jsp"/>
<jsp:include page="head.jsp"/>

<table style="background-image:url(/jesus/resource/b.jpg);" width="80" height="60" >
<tbody>
<tr>
<td> 菜单</td>
</tr>

<tr>
<td><a href="/jesus/user/login/showInfo" ><font color="black">基本信息</font></a></td>
</tr>
</tbody>
</table>


<br><br><br><br>
<font color ="blue"><a  onclick="firm()">退出登录（没有用controller层的方法）</a></font><br>
<div id="time" ><span id="showTime"></span></div>


</body>
</html>