<%@page contentType="text/html;charset=utf-8" %>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
</head>

<style> 
	.conhead{
		border:solid 1px black;
		border-radius:10px;
		background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
		width: 600px;

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
		border-radius:10px;
		background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
		width: 1100px;
	}
	div .full{
		background-color: #fafafa;
		border:solid 1px #e0e0e0;
	}
	.navbar-default{
		background-color:#f1f1f1;
	}
	li a.active {
		color: white;
		background-color: #D3D3D3;
		cursor: pointer;
	}
	#tabledatabudget tbody{
		background-color:#f8f6f6
	}
	#table tr th{
		cursor: pointer;
	}
	img.set-pointer{
		cursor: pointer;
	}
	#tabledatabudget tbody tr:hover td{
		background-color:#ffe18f
	}	
	div.frame4_2 {
		padding:2px;
		background-color:white;
		width: 400px;
		margin-left:33px;
		border-radius:10px;
		-moz-box-shadow: 90px 90px 90px #ccc;
		-webkit-box-shadow: 90px 90px 90px #ccc;
		box-shadow: 10px 10px 7px #ccc;
	}
</style>


<html>

<body>
<div id="container" class="full">

<input type="hidden" id="detailid">
<input type="hidden" id="masterheaderid">

<!-- <input type="hidden" id="nameheaderid">
<input type="hidden" id="showheaderid"> -->

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="" onClick="callHomePage()">Header</a></li>
      <li><a href="#" onClick='callDetaillPage($("#masterheaderid").val(),$("#nameheaderid").text(),$("#showheaderid").text())'>Detail</a></li>
      <li><a class="active" >Budget</a></li>
    </ul>
  </div>
</nav>

<div class="container">
<center><h3>Budget</h3></center>
<div class="frame4_2">
	<div class="frame4_1" >	
		<center><h6>
			<span style="padding-left:0px"></span>
				ID Header : <strong id="showheaderid"></strong> <br> Name Header : <strong id="nameheaderid"></strong>
		</h6>	
	</div>
</div>	
<br>
<center>
	<div class="container2" style="display:show" id="mySumAddFund">	
		<table id="table" width="100%">
			<tr>
			  	<th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px;></th>
			    <th width="80%" class="set-pointer" onClick='ClickActionAddDetail("#myAddDetail")'><center><h4>Add Budget</h4></center></th>
			    <th width="10%"><a onClick='callDetaillPage($("#masterheaderid").val(),$("#nameheaderid").text(),$("#showheaderid").text())' class="set-pointer"><< Back</a></th>
	 		</tr>
		</table>
	</div>
</center>
<center>
	<div class="container2" style="display:show" id="myAddBudget" align = "left">
		<table >
			<thead>
				<input type="hidden" id="idbud">
				<input type="hidden" id="action">
				<tr><br>
					<td>
						&nbsp;Start Budget &nbsp;&nbsp;: <input id="startbud" type="text" name="fname" placeholder="Enter Data">
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;End Budget &nbsp;&nbsp;&nbsp;: <input id="endbud" type="text" name="fname" placeholder="Enter Data">
					</td>
				</tr>
				
				<tr>
					<td>
					<center>
						<button class="btn btn-primary" onClick='ClickSaveBudget()'>ตกลง</button>
						<button class="btn btn-danger" onClick='cancelbudget()'>ยกเลิก</button>
					</center>
					<br>
					</td>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		</div>
		
</center>
<center>		
		<div class="container2">
			<center><h4>Data Budget</h4></center>
		</div>
		<div class="container2 table-striped" style="display:show" id="myBudgetTable">	
		<table id="tabledatabudget" border="0" width = 100%>
		<thead>
			<tr>
				<td>
					ID
				</td>	
				<td>
					<center>Strat Budget</center>
				</td>
				<td>
					<center>End Budget</center>
				</td>
				<td>
					<center>Edit</center>
				</td>
				<td>
					<center>Delete</center>
				</td>
			</tr>
		</thead>
		<tbody id="myBudget">
			
		</tbody>
		</table>
		<br>
	</div><br>
</div>
</center>
</div>
</body>
</html>

<!-- Modal DELETE-->
  	<div class="modal fade" id="ModalBudget" role="dialog" style="display:none">
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
			          <p hidden id="idbudget"></p>
			          	<div align="center">
			          <button type="button" class="btn btn-primary" data-dismiss="modal" onClick='ClickDeleteBudget()'>ตกลง</button>
			          <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
        		</div>
        		</div>
      		</div>
    	</div>
  	</div>