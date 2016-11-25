<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%
String paramId = request.getParameter("paramId");
String paramNameStart = request.getParameter("paramNameStart");
String paramNameEnd = request.getParameter("paramNameEnd");
String paramUser = request.getParameter("paramUser");

String query="";
query+="update item_group_account set start_account_code = '"+paramNameStart+"', end_account_code ='"+paramNameEnd+"', updated_by = '"+paramUser+"',updated_dttm =NOW() where item_group_account_id='"+paramId+"';";
//,created_by = '"+paramUser+"',created_dttm =NOW() 

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>

