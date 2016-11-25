<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramstfund = request.getParameter("paramstfund");
String paramenfund = request.getParameter("paramenfund");
String paramenUser = request.getParameter("paramenUser");
String detailid = request.getParameter("detailid");



String query="";
query+="INSERT INTO report_template_fund (template_detail_id,start_fund_id,end_fund_id,created_by,created_dttm,updated_by,updated_dttm) VALUES ('"+detailid+"','"+paramstfund+"','"+paramenfund+"','"+paramenUser+"',NOW(),'"+paramenUser+"',NOW())";

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>