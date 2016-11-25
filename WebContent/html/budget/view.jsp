<%@taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@page contentType="text/html;charset=utf-8" %>
<%@page import="javax.portlet.PortletRequest" %>
<%@page import="java.util.Map" %>
<%@page import="com.liferay.portal.util.PortalUtil"%>

<%@ page import="com.liferay.portal.model.User" %>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>

<liferay-theme:defineObjects />
<%--  <%= themeDisplay.getUser().getFirstName() %>  --%>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	
  	
	<!-- <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"> -->



	 

<script type="text/javascript">
$(document).ready(function() {
   		

});
	
		
		
		function clickCancel(elid) {
		if ($(elid).is(":visible")) {
			$(elid).slideToggle("slow");
		} else {
			
		}
		}
		

</script>

</head>
	<style>  

	
	  
		div .full{
			background-color: white;
			border:solid 1px #f1f1f1;
			box-shadow: 2px 2px 1px #f5f5f5;
		}
		#collapse1{
			background-color: #FFFFCC;
		}
		.panel-title{
			background-color: #5cb85c;
			border:solid 1px green;
			-webkit-border-radius:10px;
			-moz-border-radius:10px;
		}
	  	.containerDataBud{
			border:solid 1px #BEBEBE;
			/* padding:2px; */
			background-color:#f5f5f5;
			box-shadow: 3px 3px 2px #2dbde6;
			border-top-width:0px;
			width: 95%;
		}
		
		.containerBudget{
			border:solid 1px #2dbde6;
			background-color: #2dbde6;
			background-image: linear-gradient(#2dbde6 0px, #2dbde6 47%, #229fc1 100%);
			box-shadow: 3px 3px 2px #2dbde6;
			width: 95%;
		}
		
		.containerActionBud{
			border:solid 1px #2dbde6;
			background-color:#f5f5f5;
			box-shadow: 3px 3px 2px #2dbde6;
			width: 95%;
		}
		

		
		.head{
			background-color: #2dbde6;
			
		}
		
		.containerGroup{
			width: 90%;
			padding-left:30px;

		}
		
		#tablehead tr th{
			background-color:#f8f6f6
		}
		#tableItem tbody{
			background-color:#f8f6f6
		}
		#table tr th{
			cursor: pointer;
		}
		 img.set-pointer{
			cursor: pointer;
		}
		.set-pointertext{
			cursor: pointer;
		}
		.navbar-default{
			background-color:#f1f1f1;
			width: 100%;
			border-style:solid;
			border-top-color:#2dbde6;
			border-top-width:2px;
			border-left-width:0px; 
			border-right-width:0px; 
			border-bottom-width:0px; 

			
		}
		li a.active {
		    /* color: white; */
		    background-color: #2dbde6;
		    cursor: pointer;

		}
	  	.affix {
	  		top: 36px;
	   		width: 88%;
	 	}
		.affix + .container-fluid {
	   		padding-top: 1000px;
	 	}
	 	
	 	
	 		.table-hover tbody tr:hover,
            .table-hover tbody tr:hover td,
            .table-hover tbody tr:hover th{
                background:#ffe18f !important;
       
            }
            
            
            
        hr.style-one { 
	        border: 0; 
	        height: 1px; 
	        width: 80%;
	        background: #2dbde6; 
	        background-image: linear-gradient(to right, #ccc, #2dbde6, #ccc);
	     }
	</style>
	


<portlet:defineObjects />

<body>

<input type="hidden" id="Username" value="<%= themeDisplay.getUser().getFirstName() %>">

<div id="container" class="full">


	<nav class="navbar navbar-default">
  		<div class="container-fluid">
    		<ul class="nav navbar-nav">
      			<li><a class="active" href="#Accoount Type" style="font-size:10pt; color:white">Accoount Type</a></li>
    		</ul>
  		</div>
	</nav>
	
		<!-- <center><h3> Accoount Type</h3></center> -->
		
		
		<span style="padding-left:69px"></span>
		ค้นหา : <input type="text" name="name" id="nameSearchBud" placeholder="Enter Data">
		<img class="set-pointer" id="btnSearchBud"src = /NewKmuttUi-portlet/images/search.png width = 26px; height = 26px;>
		<img class="set-pointer" src = /NewKmuttUi-portlet/images/add1.png width = 26px; height = 26px; onClick='clickAddBudget("#addbudget")'>
<br>
<center>
<div class="containerActionBud" style="display:none" id="addbudget" >
<h4 align="left" style="padding-left:120px" >เพิ่มข้อมูล</h4>
<hr class="style-one">
<br>	
			<table width="95%">
			<tr>
			    <td align="right">Add  Accoount Type :</td>
			    <td><input type="text" name="name" id ="nameAddBud" placeholder="Enter Data"></td>
			  </tr>
			</table>
				<br>
				<button class="btn btn-primary" id ="btnAddBud" >บันทึก</button>&nbsp;&nbsp;&nbsp;<button class="btn btn-danger" onClick = 'clickCancel("#addbudget")'>ยกเลิก</button>
				<br><br>
</div>

</center>
		
		
		
<center>
<div class="containerActionBud" style="display:none" id="editbudget">
<h4 align="left" style="padding-left:120px" >แก้ไขข้อมูล</h4>
<hr class="style-one">
<br>
		<table width="95%">
			<tr>
			    <td align="right">Edit  Accoount Type :</td>
			    <td><input type="text" id="nameEditBud" name="name" placeholder="Enter Data"></td>
			  </tr>
		</table>
				<br>
				<p id="hiddenid" style="display:none"></p>
				<button class="btn btn-primary" id ="btnEditBud" >บันทึก</button>&nbsp;&nbsp;&nbsp;<button class="btn btn-danger" onClick = 'clickCancel("#editbudget")'>ยกเลิก</button>
				<br><br>
</div>
<br>
</center>

		
	<center>	
		<div class="containerBudget">	
		<table id="tableDetail" width="100%">
			<tr>
			  	<th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/data1.png width = 25px; height = 25px;></th>
			    <th width="80%" class="set-pointer" style="font-size:100pt"><center><h5>ข้อมูล  Accoount Type</h5></center></th>
				<th width="10%"></th>
	 		</tr>
		</table>
	</div>



<div class="containerDataBud table-striped" style="display:show" > <!-- id="myDetail" -->	
<br>
	<table id="tableBudget" class="table-hover" border="0" width = 100%>
		<thead>
			<tr>
		        <th width = "10%"><strong>ID</strong></th>
		        <th width = "35%"><strong>Name</strong></th>
		        <th width = "10%"><center><strong>Edit</strong></center></th>
		        <th width = "10%"><center><strong>Delete</strong></center></th>
        
      		</tr>
		</thead>
		<tbody id="budget">
		 		
		</tbody>
	</table><br>
</div>
</center><br><br>
		
		
		
</div>
</body>
<br>
 
	
	

