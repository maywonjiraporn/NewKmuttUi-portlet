<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%
String paramId = request.getParameter("paramId");
String query="";
query+=" select * from item_group_account where item_group_account_id='"+paramId+"'";
jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3,4","jndiDB");
out.print(jndidd.getData());
 
%>