<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'index.jsp' starting page</title>
	
  </head>
  
  <body>
    	<form action="login" method="post">
    		<table align="center">
    		
    			<tr><td>用户名</td><td><input type="text" name="username"></td></tr>
    			<tr><td>密码</td><td><input type="password" name="password"></td></tr>
    			<tr><td><input type="submit" value="登录"></td><td><input type="reset" value="重置"></td></tr>
    			<tr><th><a href="register.jsp">新用户请注册</a></th></tr>
    		</table>
    	</form>
  </body>
</html>
