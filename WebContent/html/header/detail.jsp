
<%-- <%@ include file="user.jsp" %> --%>
<%@page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<html>
<head> 

	<script type="text/javascript" src="/NewKmuttUi-portlet/js/DetailControll.js"></script> 
	<script type="text/javascript" src="/NewKmuttUi-portlet/js/FundControll.js"></script>  
	
	
</head>
	
<style>  
		#tableDetail tbody tr:hover td{
			background-color:#ffe18f
		}	
		div .full{
			background-color: #fafafa;
			border:solid 1px #e0e0e0;
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
	  	.container{
			border:solid 1px black;
			/* -webkit-border-radius:10px; */
			/* -moz-border-radius:10px; */
			border-radius:10px;
			
			background-image: -o-linear-gradient(top, #f0f0f0, #fafafa);
			background-image: -moz-linear-gradient(top, #f0f0f0, #fafafa);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#f0f0f0), to(#fafafa));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f0f0f0’, endColorstr=’#fafafa′);
		}
		.container2{
			border:solid 1px black;
			/* -webkit-border-radius:10px; */
			/* -moz-border-radius:10px; */
			border-radius:10px;
			background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
			width: 1100px;
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
			width: 400px;
			margin-left:38px;
			
		}
		#tableDetail tbody{
			background-color:#f8f6f6
		}
		#table tr th{
			cursor: pointer;
		}
		img.set-pointer{
			cursor: pointer;
		}
		a.set-pointer{
			cursor: pointer;
		}
		.set-pointertext{
			cursor: pointer;
		}
		.navbar-default{
			background-color:#f1f1f1;
		}
		li a.active {
		    color: white;
		    background-color: #D3D3D3;
		    cursor: pointer;
		}
		/* Note: Try to remove the following lines to see the effect of CSS positioning */
	  	.affix {
     		top: 5%;
      		width: 88%;
  		}
  		.affix + .full {
     		padding-top: 60px;
  		}
		
		div.frame4_2 {
			padding:2px;
			background-color:#ffffff;
			width: 400px;
			margin-left:33px;
			border-radius:10px;
			-moz-box-shadow: 90px 90px 90px #ccc;
			-webkit-box-shadow: 90px 90px 90px #ccc;
			box-shadow: 10px 10px 7px #ccc;
		}
	</style>
	


<nav class="navbar navbar-default" data-spy="affix" data-offset-top="230">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="" onClick="callHomePage()">Header</a></li>
      <li><a class="active" >Detail</a></li>
    </ul>
  </div>
</nav>

<body>
<div id="container" class="full">
<div class="container">
<h3 align="center">Detail</h3>
<!-- <span style="padding-left:0px"></span> -->
<div class="frame4_2">
	<div class="frame4_1" >	
		<h5 align="center">

			ID Header : <strong id="idhead"></strong> <br> Name Header : <strong id="namehead"></strong>
		</h5>	
	</div>
</div>	

<br>
										<!-- START ADD DETAIL -->
<div align="center">
	<div class="container2" style="display:show" id="mySumAddDetail">	
		<table id="table" width="100%">
			<tr>
			  	<th width="10%" onClick='ClickActionAddDetail("#myAddDetail")'><img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px; ></th>
			    <th width="80%" class="set-pointer" onClick='ClickActionAddDetail("#myAddDetail")'><center><h4>เพิ่มข้อมูล Detail</h4></center></th>
			    <th width="10%"><a href="" onClick="callHomePage()" class="set-pointer"><< Back</a></th>
	 		</tr>
		</table>


	<div class="container2" style="display:show" id="myAddDetail">	
		<table id="table" border="0" width = 100%>
			<thead>
			  <tr>
			  	<!-- <th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px;></th> -->
			    <th colspan = "5"><h4 align="center">กรอกข้อมูล Detail</h4></th>
			    <!-- <th width="10%"><a><< Back</a></th> -->
			  </tr>
		 	</thead>
		 	<tbody>	
			  <tr>
			  	<input type="hidden" id="idmasterhead">
			    <td align="right">Level ID :</td>
			    <td><input id="lvid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td align="right">Net Total Group :</td>
			    <td><input id="netg" type="text" name="fname" placeholder="Enter Data"></td>
			    <td></td>
			  </tr>
			  <tr>
			    
			    <td align="right">Level Line ID :</td>
			    <td><input id="lvlineid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td align="right">Budget Type :</td>
			    <td>
			    	<select id="dropdownBT" >
			    	 
			    	</select>
			    </td>
			    <td></td>
			  </tr>
			  <tr>
			  	<td align="right">Item Group :</td>
			    <td>
			    	<select id="dropdownaIG" >
			    	 
			    	</select>
			    </td>
			    <td></td>
			  </tr>
			  <tr>
			    <td align="right">Parent ID :</td>
			    <td><input id="pid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td></td>
			  </tr>
			</tbody>
		</table>
			<div align="center">
			<p id="namehead"></p>
				<button class="btn btn-primary" id="btnSavedetail" onClick='ClickAddDetail()'>ตกลง</button>
				<button class="btn btn-danger" onClick='ClickActionAddDetail("#myAddDetail")'>ยกเลิก</button>
			</div>
		<br>
	</div>
	</div>
</div>
									<!-- END ADD DETAIL -->
									
									<!-- START EDIT DETAIL -->
<div align="center">
<div class="container2"  style="display:none" id="mySumEditDetail">	
		<table id="table" width="100%">
			<tr>
			  	<th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/edit.png width = 30px; height = 30px;></th>
			    <th width="80%" class="set-pointer" onClick='ClickActionAddDetail("#myEditDetail")'><center><h4>แก้ไขข้อมูล Detail</h4></center></th>
			    <th width="10%"><a onClick="callHomePage()" class="set-pointer"><< Back</a></th>
	 		</tr>
		</table>
	

	<div class="container2" style="display:show" id="myEditDetail">	
		<table id="table" border="0" width = 100%>
			<thead>
			  <tr>
			  	<!-- <th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px;></th> -->
			    <th colspan = "5"><h4 align="center">แก้ไขข้อมูล Detail</h4></th>
			    <!-- <th width="10%"><a><< Back</a></th> -->
			  </tr>
		 	</thead>
		 	<tbody>	
			  <tr>
			  <input type="hidden" id="eid">
			    <td align="right">Level ID :</td>
			    <td><input id="elvid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td align="right">Net Total Group :</td>
			    <td><input id="enetg" type="text" name="fname" placeholder="Enter Data"></td>
			    <td></td>
			  </tr>
			  <tr>
			    
			    <td align="right">Level Line ID :</td>
			    <td><input id="elvlineid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td align="right">Budget Type :</td>
			    <td>
			    	<select id="edropdownBT" >
			    	 
			    	</select>
			    </td>
			    <td></td>
			  </tr>
			  <tr>
			  	<td align="right">Item Group :</td>
			    <td>
			    	<select id="edropdownaIG" >
			    	 
			    	</select>
			    </td>
			    <td></td>
			  </tr>
			  <tr>
			    <td align="right">Parent ID :</td>
			    <td><input id="epid" type="text" name="fname" placeholder="Enter Data"></td>
			    <td></td>
			  </tr>
			</tbody>
		</table>
			<div align="center">
				<button class="btn btn-primary" onClick='ClickEditDetail()' >ตกลง</button>
				<button class="btn btn-danger" onClick='ClickClose("#mySumEditDetail")'>ยกเลิก</button>
			</div>
		<br>
	</div>
	</div>
	<br>
</div>
									<!-- END EDIT DETAIL -->
									<!-- START ACCOUNT -->
	<div align="center">							
	<div class="container2" style="display:none" id="account">
			<table id="tableAccount" width="100%">
				<tr>
					<td width ="10%">
				  		<img class="set-pointer" src = /NewKmuttUi-portlet/images/cancel2.png width = 25px; height = 25px; onClick='CloseAccIG("#account")'>
		 			</td>
				  	<td width ="80%">
				  		<h4 align="center">Account</h4>
				  	</td>
				  	<td width ="10%">
				  	</td>
		 		</tr>
		 	</table>
		 
		 <div class="container2 table-striped">
			<table  id="tableacc"  width="100%">
			<thead>
		 		<tr>
				  	
				  	<td>
				  		ITEM GROUP
				  	</td>
				  	<td>
				  		Start Account
				  	</td>
				  	<td>
				  		End Account
				  	</td>
		 		</tr> 	
		 	</thead>
		 		<tbody id="viewitemgroup">
		 		
		 		</tbody>
			</table><br>
		</div>
	</div>	
	<br>
	</div>
									<!-- END ACCOUNT -->
	<div align="center">								
	<div class="container2">	
		<table id="tableOverDetail" width="100%">
			<tr>
			  	<th width="10%"></th><!-- <th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/data.png width = 30px; height = 30px;></th> -->
			    <th width="80%" class="set-pointer" onClick='ClickActionDetail("#myDetail")'><h4 align="center">ข้อมูล Detail</h4></th>
				<th width="10%"></th>
	 		</tr>
		</table>
	</div>
	
	
	<div class="container2 table-striped" style="display:show" >
		<table id="tableDetail" border="0" width = 100%>
		<thead>
			<tr>
				<td align="center">
					Level ID
				</td>
				<td align="center">
					Level Line ID
				</td>
				<td width="15%" align="center">
				 	Item Group
				</td>
				<td align="center">
					Parent ID
				</td>
				<td align="center">
					Net total Group
				</td>
				<td align="center">
				 	Budget Type
				</td>
				<td align="center">
				 	Fund
				</td>
				<td align="center">
				 	Budget
				</td>
				<td align="center">
					Edit
				</td>
				<td align="center">
					Delete
				</td>
			</tr>
		</thead>
		<tbody id="detail">
		
		</tbody>
	</table>
	<br>
	</div><br>
	</div>	
	</div> 
	
			
	</div>
	</body>
</html>
<br>




<!-- Modal DELETE-->
  	<div class="modal fade" id="myModalDelete" role="dialog" style="display:none">
    	<div class="modal-dialog modal-sm">
      		<div class="modal-content">
        		<div class="modal-header">
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title" align="center">ต้องการลบหรือไม่</h4>
        		</div>
        		
        		
        		<div class="modal-body">
         			<p align="center">ยืนยันการลบข้อมูล ...โดยคลิกที่ปุ่ม "ตกลง"<br><br>หากต้องการยกเลิก...โดยคลิกที่ปุ่ม "ยกเลิก"</p>
        		</div>
        		
        		<div  class="modal-footer">
        		<p hidden="" id="iddetailmaster"></p>
        		<div align="center">
			          <button type="button" class="btn btn-primary" data-dismiss="modal" onClick='ClickDeleteDetail()'>ตกลง</button>
			          <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
        		</div>
        		</div>
      		</div>
    	</div>
  	</div>