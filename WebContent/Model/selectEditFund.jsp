<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

String paramID = request.getParameter("paramID");
String query="";
query+=" select * from report_template_fund where template_fund_id='"+paramID+"'";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3,4","jndiDB");
out.print(jndidd.getData());
 
%>
