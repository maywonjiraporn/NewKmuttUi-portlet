<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramStartbud = request.getParameter("paramStartbud");
String paramEndbud = request.getParameter("paramEndbud");
String paramgivenName = request.getParameter("paramgivenName");
String detailid = request.getParameter("detailid");


String query="";
query+="INSERT INTO report_tempate_budget (template_detail_id,start_budget_id,end_budget_id,created_by,created_dttm,updated_by,updated_dttm) VALUES ('"+detailid+"','"+paramStartbud+"','"+paramEndbud+"','"+paramgivenName+"',NOW(),'"+paramgivenName+"',NOW())";

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>