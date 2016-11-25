<%@page contentType="text/html;charset=utf-8" %>
<%-- <%@ include file="user.jsp" %> --%>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="/NewKmuttUi-portlet/js/FundControll.js"></script> 
	
</head>

<style> 
	.conhead{
		border:solid 1px black;
		border-radius:10px;
		background-image: -o-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -moz-linear-gradient(top, #f5f5f5, #e1e1e1);
		background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e1e1e1));
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=’#f5f5f5’, endColorstr=’#e1e1e1′);
		width: 800px;
	}	
	.container{
		border:solid 1px black;
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
	#tabledatafund tbody{
		background-color:#f8f6f6
	}
	#table tr th{
		cursor: pointer;
	}
	img.set-pointer{
		cursor: pointer;
	}
	#tabledatafund tbody tr:hover td{
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
<input type="hidden" id="idmasterhead"/>
<input type="hidden" id="iddetail"/>
    
<div id="container" class="full">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="" onClick="callHomePage()">Header</a></li>  <!-- callDetaillPage -->
      <li><a href="#" onClick='callDetaillPage($("#idmasterhead").val(),$("#nameshowhead").text(),$("#idshow").text())'>Detail</a></li>
      <li><a class="active" >Fund</a></li>
    </ul>
  </div>
</nav>

<div class="container">
<center><h3>Fund</h3></center>
<div class="frame4_2">
	<div class="frame4_1" >	
		<center><h6>
			<span style="padding-left:0px"></span>
				ID Header : <strong id="idshow"></strong> <br> Name Header : <strong id="nameshowhead"></strong>
		</h6>	
	</div>
</div>	


<br>
<div align="center">
	<div class="container2" style="display:show" id="mySumAddFund">	
		<table id="table" width="100%">
			<tr>
			  	<th width="10%"><img class="set-pointer" src = /NewKmuttUi-portlet/images/add.png width = 30px; height = 30px;></th>
			    <th width="80%" class="set-pointer" onClick='ClickActionAddDetail("#myAddDetail")'><h4 align="center">Add Fund</h4></th>
			    <th width="10%"><a onClick='callDetaillPage($("#idmasterhead").val(),$("#nameshowhead").text(),$("#idshow").text())' class="set-pointer"><< Back</a></th>
	 		</tr>
		</table>
	</div>
</div>
<div align="center">
	<div class="container2" style="display:show" id="myAddFund" align = "left">
		<table id="tablefund">
			<thead>
				<input type="hidden" id="action">
				<input type="hidden" id="idfund">
				<tr>
				</br>
					<td>
						&nbsp;Start Fund &nbsp;&nbsp;: <input id="stfund" type="text" name="fname" placeholder="Enter Data">
					</td>
				</tr>
				<tr>
					<td>
						&nbsp;End Fund &nbsp;&nbsp;&nbsp;: <input id="enfund" type="text" name="fname" placeholder="Enter Data">
					</td>
				</tr>
					
				<tr>
					<td>
					<div align="center">
						<button class="btn btn-primary"  onClick='ClickSaveFund()'>ตกลง</button>&nbsp;
						<button class="btn btn-danger" onClick='ClickCancelFund()'>ยกเลิก</button>
					</div>
					<br>
					</td>
				</tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
		</div>
		
</div>
<div align="center">		
		<div class="container2">
			<h4 align="center">Data Fund</h4>
		</div>
		<div class="container2 table-striped" style="display:show" id="myDetail">	
		<table id="tabledatafund" border="0" width = 100%>
		<thead>
			<tr>
				<td align="center">
					ID
				</td>	
				<td align="center">
					Start Fund
				</td>
				<td align="center">
					End Fund
				</td>
				<td align="center">
					Edit
				</td>
				<td align="center">
					Delete
				</td>
			</tr>
		</thead>
		<tbody id="myFund">
			
		</tbody>
		</table>
		<br>
	</div><br>
</div>
</div> <!-- tag center -->
</div>
</body>
</html>
<!-- Modal DELETE-->
  	<div class="modal fade" id="ModalFund" role="dialog" style="display:none">
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
			          <p hidden id="idfund"></p>
			          	<div align="center">
			          <button type="button" class="btn btn-primary" data-dismiss="modal" onClick='ClickDeleteFund()'>ตกลง</button>
			          <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
        		</div>
        		</div>
      		</div>
    	</div>
  	</div>
  	
