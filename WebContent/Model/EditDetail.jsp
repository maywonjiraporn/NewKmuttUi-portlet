<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.goingjesse.app.service.*" %>   

<%

String paramId = request.getParameter("paramId");//
String query="";
query+="SELECT item_group.item_group_name, template_detail_id, template_header_id, level_id, level_line_id, report_template_detail.item_group_id, parent_id, net_total_group, budget_type.budget_type_name FROM report_template_detail INNER JOIN item_group ON item_group.item_group_id = report_template_detail.item_group_id INNER JOIN budget_type ON report_template_detail.budget_type_id = budget_type.budget_type_id WHERE template_detail_id='"+paramId+"'  ";

jndiService jndidd= new jndiService();
jndidd.selectByIndex(query, "1,2,3,4,5,6,7,8,9","jndiDB");
out.print(jndidd.getData());
 
%>