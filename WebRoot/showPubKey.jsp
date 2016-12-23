<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>My JSP 'showPubKey.jsp' starting page</title>
  </head>
  
  <body>
    	<%=request.getAttribute("pubKey") %>
    	<a href="login.jsp">back to login</a>
  </body>
</html>
