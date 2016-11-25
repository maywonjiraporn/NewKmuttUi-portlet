<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

String paramID = request.getParameter("paramID"); // 
String query="";
query+=" select item_group_account_id,item_group.item_group_name,start_account_code,end_account_code from item_group_account JOIN item_group ON item_group.item_group_id = item_group_account.item_group_id  where item_group_account.item_group_id ='"+paramID+"'";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3,4","jndiDB");
out.print(jndidd.getData());
 
%>
