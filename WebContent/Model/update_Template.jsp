<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%
String paramId = request.getParameter("paramId");
String paramName = request.getParameter("paramName");
String paramUser = request.getParameter("paramUser");

String query="";
query+="update template_type set template_type_name = '"+paramName+"', updated_by = '"+paramUser+"',updated_dttm =NOW() where template_type_id='"+paramId+"';";
//,created_by = '"+paramUser+"',created_dttm =NOW() 
jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>
