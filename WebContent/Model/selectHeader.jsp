<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

String paramName = request.getParameter("resultset");
String query="";
query+=" select * from template_type";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2","jndiDB");
out.print(jndidd.getData());
 
%>

<%-- <% 
String remoteUserId = request.getRemoteUser();
String paramName = request.getParameter("paramName");

String query="";
query+="INSERT INTO item_group (name) VALUES ('"+paramName+"','"+ remoteUserId +"');";
out.println(query);
jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%> --%>