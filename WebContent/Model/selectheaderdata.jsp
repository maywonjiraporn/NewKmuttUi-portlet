<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String tempplateId = request.getParameter("tempplateId");
String query="";

query+=" select * from report_template_header where template_type_id="+tempplateId+"";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3","jndiDB");
out.print(jndidd.getData());
%>