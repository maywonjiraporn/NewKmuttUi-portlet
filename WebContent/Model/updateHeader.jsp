
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%

String paramId = request.getParameter("paramId");
String paramNameHead = request.getParameter("paramNameHead");
String paramTemType = request.getParameter("paramTemType");
String paramUser = request.getParameter("paramUser");


String query="";
query+="update report_template_header set template_name='"+paramNameHead+"',template_type_id='"+paramTemType+"', updated_by='"+paramUser+"', updated_dttm=NOW() where template_header_id='"+paramId+"'";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());


%>
