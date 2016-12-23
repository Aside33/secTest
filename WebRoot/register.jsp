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
    	<form action="register" method="post">
    	<h2>欢迎注册</h2>
    		<table align="center">
    			
    			<tr><td>用户名</td><td><input type="text" name="username"></td></tr>
    			<tr><td>密码</td><td><input type="password" name="password"></td></tr>
    			<tr><td>公钥</td><td><input type="text" name="pubKey"></td></tr>
    			<tr><td>密文</td><td><input type="text" name="enMess"></td></tr>
    			<tr><td>摘要算法</td><td><input type="text" name="sha" disabled="disabled" value="MD5"></td></tr>
    			<tr><td>加密算法</td><td><input type="text" name="rsa" disabled="disabled" value="RSA"></td></tr>
    			<tr><td><input type="submit" value="注册"></td><td><input type="reset" value="重置"></td></tr>
    			
    		</table>
    	</form>
  </body>
</html>
