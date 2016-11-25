<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramNameHead = request.getParameter("paramNameHead");
String paramTemType = request.getParameter("paramTemType");
String paramUser = request.getParameter("paramUser");



String query="";
query+="INSERT INTO report_template_header (template_name,template_type_id,created_by,created_dttm,updated_by,updated_dttm) VALUES ('"+paramNameHead+"','"+paramTemType+"','"+paramUser+"',NOW(),'"+paramUser+"',NOW());";

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>