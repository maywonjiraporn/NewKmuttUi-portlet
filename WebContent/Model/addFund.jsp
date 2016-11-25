<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramFundSt = request.getParameter("paramFundSt");
String paramFundEn = request.getParameter("paramFundEn");
String paramUser = request.getParameter("paramUser");

String query="";
query+="INSERT INTO report_template_fund (start_fund_id,end_fund_id,created_by,created_dttm,updated_by,updated_dttm) VALUES ('"+paramFundSt+"','"+paramFundEn+"','"+paramUser+"',NOW(),'"+paramUser+"',NOW());";

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>