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
    		
    			<tr><td>�û���</td><td><input type="text" name="username"></td></tr>
    			<tr><td>����</td><td><input type="password" name="password"></td></tr>
    			<tr><td><input type="submit" value="��¼"></td><td><input type="reset" value="����"></td></tr>
    			<tr><th><a href="register.jsp">���û���ע��</a></th></tr>
    		</table>
    	</form>
  </body>
</html>
