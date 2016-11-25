<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%
String paramId = request.getParameter("paramId");
String paramName = request.getParameter("paramName");
String paramDes = request.getParameter("paramDes");
String paramUser = request.getParameter("paramUser");

String query="";
query+="update item_group set item_group_name = '"+paramName+"', item_group_description ='"+paramDes+"', updated_by = '"+paramUser+"',updated_dttm =NOW() where item_group_id='"+paramId+"';";
//,created_by = '"+paramUser+"',created_dttm =NOW() 

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>

