<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

/* String paramselectEdit = request.getParameter("paramselectEdit"); */
String query="";
query+=" select * from budget_type";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2","jndiDB");
out.print(jndidd.getData());
 
%>