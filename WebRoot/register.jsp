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
    	<h2>��ӭע��</h2>
    		<table align="center">
    			
    			<tr><td>�û���</td><td><input type="text" name="username"></td></tr>
    			<tr><td>����</td><td><input type="password" name="password"></td></tr>
    			<tr><td>��Կ</td><td><input type="text" name="pubKey"></td></tr>
    			<tr><td>����</td><td><input type="text" name="enMess"></td></tr>
    			<tr><td>ժҪ�㷨</td><td><input type="text" name="sha" disabled="disabled" value="MD5"></td></tr>
    			<tr><td>�����㷨</td><td><input type="text" name="rsa" disabled="disabled" value="RSA"></td></tr>
    			<tr><td><input type="submit" value="ע��"></td><td><input type="reset" value="����"></td></tr>
    			
    		</table>
    	</form>
  </body>
</html>
