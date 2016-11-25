<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="javax.portlet.*" %>


<%@ page import="com.liferay.portal.model.User" %>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ page import="javax.portlet.PortletRequest"%>
<%@ page import="java.util.Map"%>


<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>

<liferay-theme:defineObjects />
<%--  <%= themeDisplay.getUser().getFirstName() %>  --%>


<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	

<script type="text/javascript">
$(document).ready(function() {
	
});	

		function clickCancel(elid) {
		if ($(elid).is(":visible")) {
			$(elid).slideToggle("slow");
		} else {
			
		}
		}
		
		
		function ClickDelete(actType){
		alert("คุณต้องการลบข้อมูลนี้ใช่หรือไม่?");	
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
	  	.containerData{
			border:solid 1px #BEBEBE;
			/* padding:2px; */
			background-color:#f5f5f5;
			box-shadow: 3px 3px 2px #2dbde6;
			border-top-width:0px;
			width: 95%;
		}
		
		.containerITem{
			border:solid 1px #2dbde6;
			background-color:#2dbde6;
			background-image: linear-gradient(#2dbde6 0px, #2dbde6 47%, #229fc1 100%);
			box-shadow: 3px 3px 1px #2dbde6;
			width: 95%;
		}
		
		.containerAction{
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
	     
		.button {
		    padding: 7px 14px;
		    text-align: center;
		    border-radius: 8px;
		    font-size: 16px;
		    cursor: pointer;
	    
		}
		.buttonAdd {
			    background-color: #DCDCDC; 
			    color: black; 
			    border: 2px solid #DCDCDC;
			}
			
		.buttonAdd:hover {
			    background-color: white;
			    color:black;
			}
	</style>
	

 
<portlet:defineObjects />

<body>

<input type="hidden" id="Username" value="<%= themeDisplay.getUser().getFirstName() %>">


<div id="container" class="full">

				<!-- <div class="head"><br><br></div> -->




<!-- <h3 style="padding-left:40px">Item Group</h3>
<br> -->
<!-- <div class="containerGroup" > -->

	<nav class="navbar navbar-default" >
  		<div class="container-fluid" >
    		<ul class="nav navbar-nav">
      			<li><a class="active" href="#Item Group" style="font-size:10pt; color:white">Item Group</a></li>
    		</ul>
  		</div>
	</nav>
	
	
		<!-- <center><h3>Item Group</h3></center> -->
		
		
		<span style="padding-left:30px"></span>
		
		<!-- ค้นหา : <input type="text" name="name" id="nameSearchItem" placeholder="Enter Data">&nbsp;
		<img class="set-pointer" id="btnSearchItem" src = /NewKmuttUi-portlet/images/search.png width = 26px; height = 26px;>&nbsp;&nbsp; -->
		
		<button type="button" class="button buttonAdd" onClick='clickAddItem("#additem")'>
				<img src = /NewKmuttUi-portlet/images/addnew.png width = 25px; height = 25px;>&nbsp;
				 Add New
		</button> &nbsp;&nbsp;
		
		<!-- <img class="set-pointer" src = /NewKmuttUi-portlet/images/add1.png width = 26px; height = 26px; onClick='clickAddItem("#additem")'> -->


<br>

											<!-- START ADD Item Group  style="padding-left:120px"-->															
<center>
<br>
<div align="center" class="containerAction" style="display:none" id="additem" >
<h4 align="left" style="padding-left:120px" >เพิ่มข้อมูล</h4>
<center>
<hr class="style-one">	
			<table width="95%">
			<tr>
			    <td align="right">Add Item Group :</td>
			    <td><input type="text" name="name" id="nameAddItem" placeholder="Enter Data"></td>
			  </tr>
			  <tr>
			    <td align="right">Description :</td>
			    <td><input type="text" name="Description" id="AddDescription" placeholder="Enter Data"></td>
			  </tr>
				</table>
				<br>
				<button class="btn btn-primary" id="btnAddItem" >บันทึก</button>&nbsp;&nbsp;&nbsp;<button class="btn btn-danger" onClick = 'clickCancel("#additem")'>ยกเลิก</button>
				<br><br>
</center>
</div>

											<!-- END ADD Item Group -->
														
													
												
													
														
		
											<!-- END EDIT Item Group   style="padding-left:120px"-->

<div class="containerAction" style="display:none" id="edititem">
<h4 align="left" style="padding-left:120px" >แก้ไขข้อมูล</h4>
<center>
<hr class="style-one">
			<table width="95%">
			<tr>
			    <td align="right">Edit Item Group :</td>
			    <td><input type="text" name="name" id="nameEditItem" placeholder="Enter Data"></td>
			  </tr>
			  <tr>
			    <td align="right">Description :</td>
			    <td><input type="text" name="name" id="EditDescription" placeholder="Enter Data"></td>
			  </tr>
			</table>
				<br>
				<p id="DataItemid" style="display:none"></p>
					<button class="btn btn-primary" id="btnEditItem" >บันทึก</button>&nbsp;&nbsp;&nbsp;
					<button class="btn btn-danger" onClick = 'clickCancel("#edititem")'>ยกเลิก</button>
				<br><br>
</center>
</div>
<br>

											<!-- END EDIT Item Group -->
		
	
	
	

	
 <div class="containerITem" style="display:show" >
		<table  width="100%">
			<tr>
			  	<th width="10%"><img src = /NewKmuttUi-portlet/images/data1.png width = 25px; height = 25px;></th>
			    <th width="80%" class="set-pointer" style="font-size:100pt"><center><h5>ข้อมูล Item Group</h5></center></th>
				<th width="10%"></th>
	 		</tr>
		</table>
</div>

    
    
    
  										  <!-- ตาราง   Item Group  -->
<div class="containerData table-striped" style="display:show" > <!-- id="myDetail" -->	
<br>
<table id="tableItem" class="table-hover" border="0" width = 100%>
				<thead>
				
			<tr>
		        <th width = "5%"><strong>#</strong></th>
		        <th width = "25%"><strong>Name</strong></th>
		        <th width = "40%"><strong>Description</strong></th>
		        <th width = "10%"><center><strong>Account</strong></center></th>
		        <th width = "10%"><center><strong>Edit</strong></center></th>
		        <th width = "10%"><center><strong>Delete</strong></center></th>
        
      		</tr>
		</thead>
		<tbody id="itemgroup">
		 
		</tbody>

</table><br>
</div>
<br><br>
</center>		
		
<!-- </div> -->




</div>
</body>
<br>

