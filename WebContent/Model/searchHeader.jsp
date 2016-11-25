<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

String paramkeySearch = request.getParameter("paramkeySearch");
String paramkeyTemplate = request.getParameter("paramkeyTemplate");

String query="";
query+=" select * from report_template_header where template_name = '"+paramkeySearch+"' ";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3","jndiDB");
out.print(jndidd.getData());
 
%>