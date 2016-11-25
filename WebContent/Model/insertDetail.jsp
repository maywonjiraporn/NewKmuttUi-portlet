<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%
String paramlvid = request.getParameter("paramlvid");
String paramidmaster = request.getParameter("paramidmaster");
String paramnetg = request.getParameter("paramnetg");
String paramUser  = request.getParameter("paramgivenName");
String paramlvlineid = request.getParameter("paramlvlineid");
String parampid = request.getParameter("parampid");
String paramdropdownaIG = request.getParameter("paramdropdownaIG");
String paramdropdownaBT = request.getParameter("paramdropdownaBT");
/* String  = request.getParameter(""); */

String query="";
query+="INSERT INTO report_template_detail (template_header_id, level_id , level_line_id ,item_group_id,parent_id,net_total_group,budget_type_id,created_by,created_dttm,updated_by,updated_dttm) VALUES ('"+paramidmaster+"','"+paramlvid+"','"+paramlvlineid+"','"+paramdropdownaIG+"','"+parampid+"','"+paramnetg+"','"+paramdropdownaBT+"','"+paramUser+"',NOW(),'"+paramUser+"',NOW());";

jndiService jndidd= new jndiService();

jndidd.query(query,"jndiDB");
out.print(jndidd.getData());
%>