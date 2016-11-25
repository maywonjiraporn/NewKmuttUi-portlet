<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@page import="com.goingjesse.app.service.*" %>
<%

String paramId = request.getParameter("paramId");
String paramNameStart = request.getParameter("paramNameStart");
String paramNameEnd = request.getParameter("paramNameEnd");
String paramUser = request.getParameter("paramUser");

String query="";
query+="INSERT INTO item_group_account (item_group_id , start_account_code , end_account_code , created_by , created_dttm , updated_by  , updated_dttm) VALUES ('"+paramId+"','"+paramNameStart+"','"+paramNameEnd+"','"+paramUser+"',NOW(),'"+paramUser+"',NOW());";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>
