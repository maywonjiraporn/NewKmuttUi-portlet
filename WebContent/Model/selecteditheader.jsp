<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramId = request.getParameter("paramId");

String query="";
query+=" select * from report_template_header where template_header_id='"+paramId+"'";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2","jndiDB");
out.print(jndidd.getData());
 
%>