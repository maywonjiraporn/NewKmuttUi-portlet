
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%

String paramId = request.getParameter("paramId");
String paramStartbud = request.getParameter("paramStartbud");
String paramEndbud = request.getParameter("paramEndbud");
String paramgivenName = request.getParameter("paramgivenName");
String detailid = request.getParameter("detailid");


String query="";
query+="update report_tempate_budget set start_budget_id='"+paramStartbud+"',end_budget_id='"+paramEndbud+"', updated_by='"+paramgivenName+"', updated_dttm=NOW() where template_budget_id='"+paramId+"'";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());


%>
