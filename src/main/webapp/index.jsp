<%@page language="java"%>
<%
String webRoot = "/www/";

request.getRequestDispatcher(webRoot+"login.jsp").forward(request,response);
%>