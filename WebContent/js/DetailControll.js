$(document).ready(function() {
	/*function ClickAddDetail(){

		alert("save");
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/insertDetail.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramidmaster":$("#idmasterhead").val(),
				"paramlvid":$("#lvid").val(),
				"paramnetg":$("#netg").val(),
				"paramgivenName":$("#givenName").val(),
				"paramlvlineid":$("#lvlineid").val(),
				"parampid":$("#pid").val(),
				"paramdropdownaIG":$("#dropdownaIG").val(),
				"paramdropdownaBT":$("#dropdownBT").val()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#lvid").val("")
					$("#netg").val("")
					$("#lvlineid").val("")
					$("#pid").val("")
					
					REdatadetailFn();

				}
			}
		});
		
	};	*/
	
	/*$("#btnSavedetail").click(function(){
		alert("save");
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/insertDetail.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramidmaster":$("#idmasterhead").val(),
				"paramlvid":$("#lvid").val(),
				"paramnetg":$("#netg").val(),
				"paramgivenName":$("#givenName").val(),
				"paramlvlineid":$("#lvlineid").val(),
				"parampid":$("#pid").val(),
				"paramdropdownaIG":$("#dropdownaIG").val(),
				"paramdropdownaBT":$("#dropdownBT").val()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#lvid").val("")
					$("#netg").val("")
					$("#lvlineid").val("")
					$("#pid").val("")
					
					REdatadetailFn();

				}
			}
		});
		
	});	*/
		
		
	
	/*$("#btnSaveEdit").click(function(){
		var id = $("#eid").val();
			
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/GetEditDetaildata.jsp",
			type:"get",
			dataType:"json",
			data:{"paramId":id,
				"paramlvid":$("#elvid").val(),
				"paramnetg":$("#enetg").val(),
				"paramgivenName":$("#givenName").val(),
				"paramlvlineid":$("#elvlineid").val(),
				"parampid":$("#epid").val(),
				"paramdropdownaIG":$("#edropdownaIG").val(),
				"paramdropdownaBT":$("#edropdownBT").val()
			},
			success:function(data){
				if(data=="success"){
					
					alert("แก้ไขข้อมูลเรีบยร้อยแล้ว");
					$("#lvid").val("")
					$("#netg").val("")
					$("#lvlineid").val("")
					$("#pid").val("")
					
				
					REdatadetailFn();
				}
			}
		});
	});*/
	
});

function ClickAddDetail(){

	alert("save");
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/insertDetail.jsp",
		type:"get",
		dataType:"json",
		data:{
			"paramidmaster":$("#idmasterhead").val(),
			"paramlvid":$("#lvid").val(),
			"paramnetg":$("#netg").val(),
			"paramgivenName":$("#givenName").val(),
			"paramlvlineid":$("#lvlineid").val(),
			"parampid":$("#pid").val(),
			"paramdropdownaIG":$("#dropdownaIG").val(),
			"paramdropdownaBT":$("#dropdownBT").val()
		},
		success:function(data){
			if(data=="success"){
				
				alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
				$("#lvid").val("")
				$("#netg").val("")
				$("#lvlineid").val("")
				$("#pid").val("")
				$("#dropdownBT").empty();
				$("#dropdownaIG").empty();
				REdatadetailFn();

			}
		}
	});
	
};	

function ClickEditDetail(){
	var id = $("#eid").val();
		
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/GetEditDetaildata.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id,
			"paramlvid":$("#elvid").val(),
			"paramnetg":$("#enetg").val(),
			"paramgivenName":$("#givenName").val(),
			"paramlvlineid":$("#elvlineid").val(),
			"parampid":$("#epid").val(),
			"paramdropdownaIG":$("#edropdownaIG").val(),
			"paramdropdownaBT":$("#edropdownBT").val()
		},
		success:function(data){
			if(data=="success"){
				
				alert("แก้ไขข้อมูลเรีบยร้อยแล้ว");
				$("#lvid").val("")
				$("#netg").val("")
				$("#lvlineid").val("")
				$("#pid").val("")
				
			
				REdatadetailFn();
			}
		}
	});
};

var REdatadetailFn=function(){
	
	var elid = $("#idmasterhead").val();
	var idmaster=$("#idmasterhead").val();
	var idnamehead=$("#namehead").text();
	var ididhead=$("#idhead").text();
	
	if ( $.fn.DataTable.isDataTable('#tableDetail')) {
		$('#tableDetail').DataTable().destroy();
	}
	
	$.ajax({
		url: "/NewKmuttUi-portlet/Model/selectdetail.jsp",
		type: "get",
		dataType: "json",
		data:{"paramId":elid},
		success: function(data) {
			var HTMLBook="";
	
		$.each(data,function(index,indexEntry){
			HTMLBook+="<tr>" ;
			HTMLBook+="<td>";
			HTMLBook+="<center>"+indexEntry[3]+"</center>";
			HTMLBook+="</td>";	
			HTMLBook+="<td>";
			HTMLBook+="<center>"+indexEntry[4]+"</center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center><a class=set-pointer onClick='view("+indexEntry[5]+")'>"+indexEntry[0]+"</a></center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center>"+indexEntry[6]+"</center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center>"+indexEntry[7]+"</center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center>"+indexEntry[8]+"</center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/F52.png width = 23px; height = 23px; onClick='callFund("+indexEntry[1]+","+idmaster+",\""+idnamehead+"\","+ididhead+")'></center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/B52.png width = 23px; height = 23px; onClick='callBudget("+indexEntry[1]+","+idmaster+",\""+idnamehead+"\","+ididhead+")'></center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditDetail(mySumEditDetail,"+indexEntry[1]+")'/></center>";
			HTMLBook+="</td>";
			HTMLBook+="<td>";
			HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'ClickDeleteModel("+indexEntry[1]+")'></center>";
			HTMLBook+="</td>";
			HTMLBook+="</tr>";
		});
		$("#detail").html(HTMLBook);
		$('#tableDetail').DataTable({});
		DropdownIGFn();
		DropdownBTFn();
		}
	});
};

function callDetaillPage(elid,name,show){
	
	$.ajax({
        url: "/NewKmuttUi-portlet/html/header/detail.jsp",
        type: "get",
        dataType: "html",
        success: function(data) {	
        	$("div#container").html(data);
        	$('#tableDetail').DataTable();
        	$("#idmasterhead").val(elid);
        	$("#namehead").text(name);
        	$("#idhead").text(show);

        	
        	datadetailFn();
        }
    });	
	
	var datadetailFn=function(){
		
		var idmaster=$("#idmasterhead").val();
		var idnamehead=$("#namehead").text();
		var ididhead=$("#idhead").text();
		
		if ( $.fn.DataTable.isDataTable('#tableDetail')) {
			$('#tableDetail').DataTable().destroy();
		}
		$.ajax({
			url: "/NewKmuttUi-portlet/Model/selectdetail.jsp",
			type: "get",
			dataType: "json",
			data:{"paramId":elid},
			success: function(data) {
				var HTMLBook="";
		
			$.each(data,function(index,indexEntry){
				HTMLBook+="<tr>" ;
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[3]+"</center>";
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[4]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><a class=set-pointer onClick='view("+indexEntry[5]+")'>"+indexEntry[0]+"</a></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[6]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[7]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[8]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/F52.png width = 23px; height = 23px; onClick='callFund("+indexEntry[1]+","+idmaster+",\""+idnamehead+"\","+ididhead+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/B52.png width = 23px; height = 23px; onClick='callBudget("+indexEntry[1]+","+idmaster+",\""+idnamehead+"\","+ididhead+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditDetail(mySumEditDetail,"+indexEntry[1]+")'/></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'ClickDeleteModel("+indexEntry[1]+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="</tr>";
			});
			$("#detail").html(HTMLBook);
			$('#tableDetail').DataTable({});
			DropdownIGFn();
			DropdownBTFn();
			}
		});
	};
	
};

function ClickDeleteModel(actType){
	
	var idd=actType
	
	$("#iddetailmaster").html(idd)
	$("#myModalDelete").modal();
	
}
function ClickDeleteDetail(){
	
	var iddetail = $("#iddetailmaster").text();
	alert(iddetail);
	$.ajax({
        url: "/NewKmuttUi-portlet/Model/deletedetail.jsp",
        type: "get",
        dataType: "json",
        data:{"paramId":iddetail},
        success: function(data) {
        	if(data=="success"){
        		alert("ลบข้อมูลเรีบยร้อยแล้ว");

        		REdatadetailFn();
        	}	
        }
    });
};

function ClickActionEditDetail(elid,id){
	
	if ($("#mySumAddDetail").is(":visible")) {
		$("#mySumAddDetail").toggle(500);
	}		
	if ($("#account").is(":visible")) {
		$("#account").toggle(500);
	}
	
	$(elid).slideDown( "fast", function() {
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/EditDetail.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id},
		success:function(data) {
			
			$.each(data,function(index,indexEntry){
				
			$("#eid").val(indexEntry[1]);
			$("#elvid").val(indexEntry[3]);
			$("#elvlineid").val(indexEntry[4]);
			$("#edropdownaIG").val(indexEntry[0]);
			$("#enetg").val(indexEntry[7]);		
			$("#epid").val(indexEntry[6]);
			$("#edropdownBT").val(indexEntry[8]);
			
			DropdownBTEditFn();
			DropdownIGEditFn();
			});
		}
	});
	
	});
}
var DropdownBTEditFn=function(){
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/SelectDropdownBudgettype.jsp",
		type:"get",
		dataType:"json",
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				})
				$("#edropdownBT").append(HTMLBook);
			}
	});
};


var DropdownIGEditFn=function(){
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/SelectDropdownItemgroup.jsp",
		type:"get",
		dataType:"json",
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				})
				$("#edropdownaIG").append(HTMLBook);
			}
	});
};


var DropdownIGFn=function(){
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/SelectDropdownItemgroup.jsp",
		type:"get",
		dataType:"json",
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				})
				$("#dropdownaIG").append(HTMLBook);
			}
	});
};

var DropdownBTFn=function(){
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/SelectDropdownBudgettype.jsp",
		type:"get",
		dataType:"json",
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				})
				$("#dropdownBT").append(HTMLBook);
			}
	});
};


function view(idz){
	if ( $.fn.DataTable.isDataTable('#tableacc')) {
		$('#tableacc').DataTable().destroy();
	}
	$("#viewitemgroup").empty();
	/*alert(idz)*/
	
	
	$("#account").slideDown( "fast", function() {
		
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/SelectItemView.jsp",
			type:"get",
			dataType:"json",
			data:{"paramID":idz},
				success:function(data){
					var HTMLBook="";
					$.each(data,function(index,indexEntry){
						HTMLBook+="<tr>";
						/*HTMLBook+="<td>";
						HTMLBook+=""+indexEntry[0]+"";
						HTMLBook+="</td>";*/
						HTMLBook+="<td>";
						HTMLBook+=""+indexEntry[1]+"";
						HTMLBook+="</td>";
						HTMLBook+="<td>";
						HTMLBook+=""+indexEntry[2]+"";
						HTMLBook+="</td>";
						HTMLBook+="<td>";
						HTMLBook+=""+indexEntry[3]+"";
						HTMLBook+="</td>";
						HTMLBook+="</tr>";
					 	
					})
					$("#viewitemgroup").append(HTMLBook);
					$('#tableacc').DataTable({});
				}
		});
	});
	
};

