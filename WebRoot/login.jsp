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
    	<h2>��ӭ��¼</h2>
    		<table align="center">
    			<tr><td>�����û�����ȡ��Կ</td></tr>
    			<tr><td><input type="text" name="username"></td><td><input type="submit" value="��ȡ"></td></tr>
    		</table>
    	</form>
    	<form action="sendMess" method="post">
    		<table align="center">
    			<tr><td>����<strong>�û���</strong>��������</td></tr>
    			<tr><td><input type="text" name="username"></td></tr>
    			<tr><td><textarea rows="5" cols="20" name="enMess"></textarea></td><td><input type="submit" value="����"></td></tr>
    		</table>
    	</form>
    	<form action="acceMess">
    		<table align="center">
    			<tr><td>����<strong>�û���</strong>��������</td></tr>
    			<tr><td><input type="text" name="username"></td><td><input type="submit" value="����"></td></tr>
    			
    		</table>
    	</form>
    	
  </body>
</html>
