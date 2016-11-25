
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   
<%

String paramId = request.getParameter("paramId");
String paramstfund = request.getParameter("paramstfund");
String paramenfund = request.getParameter("paramenfund");
String paramenUser = request.getParameter("paramenUser");
String detailid = request.getParameter("detailid");


String query="";
query+="update report_template_fund set start_fund_id='"+paramstfund+"',end_fund_id='"+paramenfund+"', updated_by='"+paramenUser+"', updated_dttm=NOW() where template_fund_id='"+paramId+"'";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());


%>
