<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%

String paramId = request.getParameter("paramId");
String query="";
 query+="delete from template_type where template_type_id='"+paramId+"';"; 




jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());


%>
