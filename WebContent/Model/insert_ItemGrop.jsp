<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%@page import="com.goingjesse.app.service.*" %>
<%


String paramName = request.getParameter("paramName");
String paramDes = request.getParameter("paramDes");
String paramUser = request.getParameter("paramUser");

String query="";
query+="INSERT INTO  item_group ( item_group_name , item_group_description , created_by , created_dttm , updated_by  , updated_dttm) VALUES ('"+paramName+"', '"+paramDes+"' ,'"+paramUser+"',NOW(),'"+paramUser+"',NOW());";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());

%>
