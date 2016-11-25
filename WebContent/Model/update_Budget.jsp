<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%
String paramId = request.getParameter("paramId");
String paramName = request.getParameter("paramName");
String paramUser = request.getParameter("paramUser");

String query="";
query+="update budget_type set budget_type_name = '"+paramName+"', updated_by = '"+paramUser+"',updated_dttm =NOW() where budget_type_id='"+paramId+"';";
//,created_dttm =NOW(),created_by = '"+paramUser+"'
jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>
