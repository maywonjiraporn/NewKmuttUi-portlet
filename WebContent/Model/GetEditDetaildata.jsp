<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>  
 
<%
String paramId = request.getParameter("paramId");
String paramlvid = request.getParameter("paramlvid");
String paramnetg = request.getParameter("paramnetg");
String paramgivenName = request.getParameter("paramgivenName");
String paramlvlineid = request.getParameter("paramlvlineid");
String parampid = request.getParameter("parampid");
String paramdropdownaIG = request.getParameter("paramdropdownaIG");
String paramdropdownaBT = request.getParameter("paramdropdownaBT");

String query="";
query+="update report_template_detail set level_id='"+paramlvid+"',level_line_id='"+paramlvlineid+"', item_group_id='"+paramdropdownaIG+"',parent_id='"+parampid+"',net_total_group='"+paramnetg+"',budget_type_id='"+paramdropdownaBT+"',updated_by='"+paramgivenName+"', updated_dttm=NOW() where template_detail_id='"+paramId+"' ";


jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>