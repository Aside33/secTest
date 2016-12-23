<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
    </head>
  
  <body>
    	<form action="getPubKey" method="post">
    	<h2>欢迎登录</h2>
    		<table align="center">
    			<tr><td>输入用户名获取公钥</td></tr>
    			<tr><td><input type="text" name="username"></td><td><input type="submit" value="获取"></td></tr>
    		</table>
    	</form>
    	<form action="sendMess" method="post">
    		<table align="center">
    			<tr><td>输入<strong>用户名</strong>发送密文</td></tr>
    			<tr><td><input type="text" name="username"></td></tr>
    			<tr><td><textarea rows="5" cols="20" name="enMess"></textarea></td><td><input type="submit" value="发送"></td></tr>
    		</table>
    	</form>
    	<form action="acceMess">
    		<table align="center">
    			<tr><td>输入<strong>用户名</strong>接收密文</td></tr>
    			<tr><td><input type="text" name="username"></td><td><input type="submit" value="接收"></td></tr>
    			
    		</table>
    	</form>
    	
  </body>
</html>
