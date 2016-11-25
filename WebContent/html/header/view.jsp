<%@page contentType="text/html;charset=utf-8" %>
<%@include file="user.jsp" %>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/NewKmuttUi-portlet/js/dataTables.js"></script>
 	<script type="text/javascript" src="/NewKmuttUi-portlet/js/HeaderControll.js"></script>
 	<script type="text/javascript" src="/NewKmuttUi-portlet/js/DetailControll.js"></script> 
 	<script type="text/javascript" src="/NewKmuttUi-portlet/js/main.js"></script>
</head>

	 <style>
	
		#tableHead tr:hover td{
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
			width: 1100px;
			background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
			filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
		}
		#tablehead{
			border:solid 1px black;
			border-radius:10px;
		}
		#tablehead tbody{
			background-color:#f8f6f6
		}
		#tablehead thead{
			background-image: -o-linear-gradient(top, #e1e1e1, #f9f9f9);
			background-image: -moz-linear-gradient(top, #e1e1e1 ,#f9f9f9);
			background-image: -webkit-gradient(linear, left top, left bottom, from(#e1e1e1), to(#f9f9f9));
			line-height: 30px; 
		}
		.navbar-default{
			background-color:#f1f1f1;
		}
		li a.active {
		    color: white;
		    background-color: #D3D3D3;
		}
		img.set-pointer{
			cursor: pointer;
		}
	 	.container4{
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
		#tableHead tbody{
			background-color:#f8f6f6
		}
		.affix {
     		top: 5%;
      		width: 88%;
  		}
  		.affix + .container {
     		padding-top: 60px;
  		}
		
	</style> 

<body>
<input type="text" id="givenName" value="<%= themeDisplay.getUser().getFirstName() %>">  

<div id="container" class="full">
	<nav class="navbar navbar-default" data-spy="affix" data-offset-top="230">
  		<div class="container-fluid">
    		<!-- <ul class="nav navbar-nav"> -->
    		<ul class="nav navbar-nav ">
      			<li>
      				<a class="active" href="">Header</a>
      			</li>
    		</ul>
  		</div>
	</nav>
	
	<div class="container">	
		
	<h3 align="center">Header</h3>
	<p class="invisible" id="iddropdown"></p>
	<span style="padding-left:40px"></span>
	Template Type :
		<%-- <input type = "text" id="iddropdown" value="<%%>"> --%>
		
		<select id="dropdownd" >
			<option value="0" selected>โปรดเลือกข้อมูล</option>
		</select> 
		
		<span style="padding-left:420px"></span>
		ค้นหา : <input id="keySearch" type="text" name="search" placeholder="Enter Data">
		<img id="btnSearch" class="set-pointer" src = /NewKmuttUi-portlet/images/search.png width = 24px; height = 24px;>
		<span style="padding-left:12px"></span>
		<img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px; onClick='ClickAddHead("#addhead")'>

		<div align="center">
			<div class="container2" style="display:none" id="addhead">	
				<h4 align="center">Add Header</h4>
				<br>
				<p align="left">
					<span style="padding-left:27px"></span>Add Header : <input type="text" name="namehead" id="namehead" placeholder="Enter Data"> &nbsp;
				</p>
				
				<p align="left">
					<span style="padding-left:10px"> Template Type : </span>
						<select id="dropdownadd" >
						<!-- ถ้า value=0ให้เชคว่วากรอกข้อมูล ทำหน้า Head.js -->
						</select> 
				</p>
				<button id="btnSave" class="btn btn-primary">ตกลง</button>&nbsp;
				<button class="btn btn-danger" onClick='ClickcancelHead("#addhead")'>ยกเลิก</button>
				<br><br>
			</div>
		</div>
		
		<div align="center">
			<div class="container2" style="display:none" id="edithead">	
				<h4 align="center">Edit Header</h4>
				<br>
				<p align="left">
					
					<span style="padding-left:27px"></span>Edit Header : <input id="editnamehead" type="text" name="fname" placeholder="Enter Data"> &nbsp;
					<p align="left">
					<span style="padding-left:10px">Template Type :</span>
					<select id="dropdownedit" >
						<!-- ถ้า value=0ให้เชคว่วากรอกข้อมูล ทำหน้า Head.js -->
					</select> 
					</p>
					<p hidden="" id="sendeditid"></p>
					<button id="btnEdit" class="btn btn-primary">ตกลง</button>&nbsp;
					<button class="btn btn-danger" onClick='ClickcancelHead("#edithead")'>ยกเลิก</button>
				</p>
				<br>
			</div>
		</div>
		<br/>
		
  <div align="center">					
	<div class="container4">	
		<table id="tableOverHead" width="100%">
			<tr>
			  	<th width="10%"></th><!-- 	<th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/data.png width = 30px; height = 30px;></th> -->
			    <th width="80%" class="set-pointer" onClick='ClickActionDetail("#myDetail")'><h4 align="center">ข้อมูล Header</h4></th>
				<th width="10%"></th>
	 		</tr>
		</table>
	</div>

	 <div class="container4 table-striped" style="display:show" >
		<table id="tableHead" border="0" width = 100%>
			<thead>
				<tr>
					<th width="5%">
						ID
					</th>
					<th width="65%">
						Name
					</th>
					<th width="10%">
						Detail
					</th>
					<th width="10%">
						Edit
					</th>
					<th width="10%">
						Delete
					</th>
			 	</tr>
			 </thead>
			 <tbody id='booklist'>
			</tbody>
	  </table><br>
	 </div> 
	 <br>
	</div>
	</div>
  </div>
</body>	

<!-- Modal DELETE-->
  	<div class="modal fade" id="myModalHeader" role="dialog" style="display:none">
    	<div class="modal-dialog modal-sm">
      		<div class="modal-content">
        		<div class="modal-header">
          			<button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title" align="center">ต้องการลบหรือไม่</h4>
        		</div>
        		
        		
        		<div class="modal-body">
         			<p align="center">ยืนยันการลบข้อมูล ...โดยคลิกที่ปุ่ม "ตกลง"<br><br>หากต้องการยกเลิก...โดยคลิกที่ปุ่ม "ยกเลิก"</p>
        		</div>
        		<div class="modal-footer" align="center">
			          <p hidden="" id="sendidd"></p>
			          	<div align="center">
			          <button type="button" class="btn btn-primary" data-dismiss="modal" onClick='ClickDelete()'>ตกลง</button>
			          <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
        		</div>
        		</div>
      		</div>
    	</div>
  	</div>
  	

