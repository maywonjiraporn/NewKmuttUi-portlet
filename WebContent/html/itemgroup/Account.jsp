<%@page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="com.liferay.portal.model.User" %>


<head>	
	  	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	 
	  
<script type="text/javascript">
$(document).ready(function() {
	

});

		function ClickClose(elid){
			
			if ($("#mySumAddAccount").is(":hidden")) {
				$("#mySumAddAccount").toggle(500);
			} 
			if ($("#addaccount").is(":hidden")) {
				$("#addaccount").toggle(500);
			} 
			if ($(elid).is(":visible")) {
				$(elid).toggle(500);
			} 
			else {
				return false;
			}	
		}
		function Close(elid){
			if ($(elid).is(":visible")){
				$(elid).toggle(500);
			}
			if($("#mySumAddAccount").is(":hidden")){
				$("#mySumAddAccount").toggle(500);
			}
			
			else{
				return false;
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
		
		.containerDataAccount{
			border:solid 1px #BEBEBE;
			/* padding:2px; */
			background-color:#f5f5f5;
			box-shadow: 3px 3px 2px #2dbde6;
			border-top-width:0px;
			width: 95%;
		}
		
		.containerAccount{
			border:solid 1px #2dbde6;
			background-color:#2dbde6;
			background-image: linear-gradient(#2dbde6 0px, #2dbde6 47%, #229fc1 100%);
			box-shadow: 2px 2px 1px #2dbde6;
			width: 95%;
			cursor: pointer;
		}
	  	/* .container{
			border:solid 1px black;
			-webkit-border-radius:10px;
			 -moz-border-radius:10px;
			border-radius:10px;
			background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
		} */
		
		.containerActionAccount{
			border:solid 1px #2dbde6;
			background-color:#f5f5f5;
			box-shadow: 3px 3px 2px #2dbde6;
			width: 95%;
		}
		
		.conhead{
			border:solid 1px black;
			/* -webkit-border-radius:10px; */
			/* -moz-border-radius:10px; */
			border-radius:10px;
			background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
			width: 450px;
		}
		
		.head{
			background-color: #2dbde6;
			
		}
		
		.containerGroup{
			width: 90%;
			padding-left:30px;

		}
		
		#tableEdit{
			border:solid 1px #2dbde6;
			background-color:#2dbde6;
			background-image: linear-gradient(#2dbde6 0px, #2dbde6 47%, #229fc1 100%);
			width: 100%;
		}
		
		#tableAccount tbody{
			background-color:#f8f6f6
		}
		#tableAction tbody{
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
          
        
         div.frame {
			padding:2px;
			background-color:#f5f5f5;
			width: 400px;
			margin-left:28px;
			box-shadow: 3px 3px 2px #2dbde6;
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
	
<body>

<div id="container" class="full">



		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <ul class="nav navbar-nav">
			      <li><a href="" onClick="callHomePage1()" style="font-size:10pt; color:#2dbde6">Item Group</a></li>
			      <li><a class="active" style="font-size:10pt; color:white" >Account</a></li>
		    </ul>
		  </div>
		</nav> 



	<div class="frame">
	<span style="padding-left:0px"></span>	
		<center><h6>
			<img src = /NewKmuttUi-portlet/images/data.png width = 25px; height = 25px;>&nbsp;&nbsp;&nbsp;&nbsp;
			ID Item :&nbsp; <strong  id = "ItemId"></strong> &nbsp;&nbsp;&nbsp; || &nbsp;&nbsp;&nbsp; Name Item : &nbsp; <strong  id = "ItemName"></strong>
		</h6></center>
	</div>
	
	<br>
	
	
										<!-- START ADD ACCOUNT -->	

		<span style="padding-left:30px"></span>
		<button type="button" class="button buttonAdd" id="mySumAddAccount" onClick='clickAddAccount("#addaccount")'>
				<img src = /NewKmuttUi-portlet/images/addnew.png width = 25px; height = 25px;>&nbsp;
				 Add New
		</button> &nbsp;&nbsp;	
		<br>
		<br>								
<center>																			
<!-- <div class="containerAccount" style="display:show" id="mySumAddAccount">	
		<table width ="100%">
			<tr>
			  	<th width="10%"><img class="set-pointer"  src = /NewKmuttUi-portlet/images/add1.png width = 25px; height = 25px;></th>
			    <th width="80%" class="set-pointer" onClick='clickAddAccount("#addaccount")' style="font-size:100pt"><center><h5>เพิ่มข้อมูล  Account</h5></center></th>
			    <th width="10%"></th>  <a onClick="callHomePage1()" href="" class="set-pointer"> << Back </a>
	 		</tr> 
		</table>
</div> -->	 



<div align="center" class="containerActionAccount" style="display:show" id="addaccount" >	
	<h4 align="left" style="padding-left:120px" >เพิ่มข้อมูล</h4> <!--  style="padding-left:120px" -->
	<center>
	<hr class="style-one">
		<table width = 100% >
				<tr>
			    <td align="right">Account Start :</td>
			    <td><input type="text" name="name" id="AddStart" placeholder="Enter Data"></td>
			  </tr>
			  <tr>
			    <td align="right">Account End :</td>
			    <td><input type="text" name="name" id="AddEnd" placeholder="Enter Data"></td>
			  </tr>
		</table>
				<br>
				<button class="btn btn-primary" id="btnAddAccount">เพิ่ม</button>&nbsp;&nbsp;
				<button class="btn btn-danger" onClick='ClickClose("#addaccount")'>ยกเลิก</button>
			</center>
		<br>
</div>
</center>
									<!-- END ADD ACCOUNT -->
									
									
									
									
									<!-- START EDIT ACCOUNT -->
									
<!-- <div class="containerAccount"  style="display:none" id="mySumEditAccount">	
		<table width="100%">
			<tr>
			  	<th width="10%"><img  src = /NewKmuttUi-portlet/images/edited.png width = 25px; height = 25px;></th>
			  	
			    <th width="80%" ><center><h4>แก้ไขข้อมูล  Account</h4></center></th>
			    <th width="10%"></th>  <a onClick="callHomePage1()"  href="" class="set-pointer"><< Back</a>
	 		</tr>
		</table>
</div >	-->

<center>										
 
<div class="containerActionAccount" style="display:none"  id="mySumEditAccount" > <!-- id="editaccount" -->
		<!-- <table id="tableEdit" width="100%">	

				<tr>
				  	<th width="10%"><img  src = /NewKmuttUi-portlet/images/edited.png width = 25px; height = 25px;></th>
				    <th width="80%" style="font-size:100pt"><h5>แก้ไขข้อมูล</5></th>
				    <th width="10%"></th>   <a onClick="callHomePage1()"  href="" class="set-pointer"><< Back</a>
				</tr>

		</table> -->
		
	<h4 align="left" style="padding-left:120px">แก้ไขข้อมูล</h4>
	<hr class="style-one">
		<table width = 100%> <!--  id="tableAction" border="0" -->
			  <tr>
			    <td align="right">Account Start :</td>
			    <td><input type="text" name="name" id="EditStart"placeholder="Enter Data"></td>
			  </tr>
			  <tr>
			    <td align="right">Account End :</td>
			    <td><input type="text" name="name" id="EditEnd" placeholder="Enter Data"></td>
			  </tr>
		</table>
		<br>
			
			<p id = "Editid" style="display:none"></p>
				<button class="btn btn-primary" id="btnEditAccount">บันทึก</button>&nbsp;&nbsp;
				<button class="btn btn-danger" onClick='Close("#mySumEditAccount")'>ยกเลิก</button>
			
		<br>
		<br>
</div>

</center>
	<br>
									<!-- END EDIT ACCOUNT -->
									


<center>									
<div class="containerAccount">	
		<table id="table" width="100%">
			<tr>
			  	<th width="10%"><img  src = /NewKmuttUi-portlet/images/data.png width = 25px; height = 25px;></th>
			    <th width="80%" style="font-size:100pt"><center><h5>ข้อมูล Account</h5></center></th>
				<th width="10%"></th>
	 		</tr>
		</table>
</div>




									<!-- ตาราง   Account  -->
<div class="containerDataAccount table-striped" style="display:show" > <!-- id="myDetail" -->
<br>	
<table id="tableAccount"  class="table-hover" border="0" width = 100%>
		<thead>
			<tr>
				<td>
					<center><strong>ID</strong></center>
				</td>	
				<td>
					<center><strong>Account Start</strong></center>
				</td>
				<td>
					<center><strong>Account End</strong></center>
				</td>
				<td>
					<center><strong>Edit</strong></center>
				</td>
				<td>
					<center><strong>Delete</strong></center>
				</td>
			</tr>
		</thead>
		<tbody id="account">
			
		</tbody>
</table>
	<br>
	</div>
</center>	
</div>
	
	
	
</body>

<br>


