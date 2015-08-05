<%@ page language="java" import="java.util.*,jspservlet.vo.Product" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
   <%
    session.setAttribute("type", "sport");
    session.setAttribute("confirmProduct", null);
    if(session.getAttribute("confirmProduct")==null){
    	response.sendRedirect("/elight/ProductServelet");
    }
    else{
    Product product = (Product) request.getAttribute("productContent");
    System.out.println(product.getAddress());
    
    
    %>
  <body>
    This is my JSP page. <br>
  </body>
</html>
<% }%>
