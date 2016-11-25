

//////////////////////////////////////////////START FUND PAGE/////////////////////////////////////////////////
function ClickSaveFund(){
	var id = $("#iddetail").text()
	var idedit = $("#idfund").val()
	
	if($("#action").val()=="add"){
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/insertFund.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramstfund":$("#stfund").val(),
				"paramenfund":$("#enfund").val(),
				"paramenUser":$("#givenName").val(),
				"detailid":$("#iddetail").text()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					
					$("#stfund").val("")
					$("#enfund").val("")
					
					REdatadetailFn();

				}
			}
		})	
	};
	if($("#action").val()=="edit"){
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/updateFund.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramId":idedit,
				"paramstfund":$("#stfund").val(),
				"paramenfund":$("#enfund").val(),
				"paramenUser":$("#givenName").val(),
				"detailid":$("#iddetail").text()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					
					$("#stfund").val("")
					$("#enfund").val("")
					$("#action").val("add");
					REdatadetailFn();
					

				}
			}
		})	
	};
	
		var REdatadetailFn=function(){
			if( $.fn.DataTable.isDataTable('#tabledatafund')) {
				$('#tabledatafund').DataTable().destroy();
			}
			$.ajax({
				url: "/NewKmuttUi-portlet/Model/selectFund.jsp",
				type: "get",
				dataType: "json",
				data:{"paramID":id},
				success: function(data) {
					var HTMLBook="";
			
				$.each(data,function(index,indexEntry){
					HTMLBook+="<tr>" ;
					HTMLBook+="<td>";
					HTMLBook+="<center>"+indexEntry[0]+"</center>";
					HTMLBook+="</td>";	
					HTMLBook+="<td>";
					HTMLBook+="<center>"+indexEntry[2]+"</center>";
					HTMLBook+="</td>";
					HTMLBook+="<td>";
					HTMLBook+="<center>"+indexEntry[3]+"</center>";
					HTMLBook+="</td>";
					HTMLBook+="<td>";
					HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditFund("+indexEntry[0]+")'/></center>";
					HTMLBook+="</td>";
					HTMLBook+="<td>";
					HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'DeleteFund("+indexEntry[0]+")'></center>";
					HTMLBook+="</td>";
					HTMLBook+="</tr>";
				});
				$("#myFund").html(HTMLBook);
				$('#tabledatafund').DataTable({});
				
				}
			});
		};
};
function DeleteFund(actType){
	
	var idd=actType
	
	$("#idfund").html(idd)
	$("#ModalFund").modal();
	
}
function ClickDeleteFund(){
	var id = $("#iddetail").text()
	var elid = $("#idfund").text()
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/deleteFund.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":elid},
		success:function(data){
			if(data=="success"){
				
				alert("ลบข้อมูลเรีบยร้อยแล้ว");
				
				REdatadetailFn();
	
			}
		}
	})	

	var REdatadetailFn=function(){
		if( $.fn.DataTable.isDataTable('#tabledatafund')) {
			$('#tabledatafund').DataTable().destroy();
		}
		$.ajax({
			url: "/NewKmuttUi-portlet/Model/selectFund.jsp",
			type: "get",
			dataType: "json",
			data:{"paramID":id},
			success: function(data) {
				var HTMLBook="";
		
			$.each(data,function(index,indexEntry){
				HTMLBook+="<tr>" ;
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[0]+"</center>";
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[2]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[3]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditFund("+indexEntry[0]+")'/></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'DeleteFund("+indexEntry[0]+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="</tr>";
			});
			$("#myFund").html(HTMLBook);
			$('#tabledatafund').DataTable({});
			
			}
		});
	};
};

function callFund(id,idmas,name,show){
	
	$.ajax({
        url: "/NewKmuttUi-portlet/html/header/fund.jsp",
        type: "get",
        dataType: "html",
        success: function(data) {
        	$("div#container").html(data);
        	$('#tabledatafund').DataTable();
        	$("#idmasterhead").val(idmas);
        	$("#nameshowhead").text(name);
        	$("#idshow").text(show);
        	$("#iddetail").text(id);
        	$("#action").val("add");
        	datadetailFn();
        }
    });
	
	var datadetailFn=function(){
		if( $.fn.DataTable.isDataTable('#tabledatafund')) {
			$('#tabledatafund').DataTable().destroy();
		}
		$.ajax({
			url: "/NewKmuttUi-portlet/Model/selectFund.jsp",
			type: "get",
			dataType: "json",
			data:{"paramID":id},
			success: function(data) {
				var HTMLBook="";
		
			$.each(data,function(index,indexEntry){
				HTMLBook+="<tr>" ;
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[0]+"</center>";
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[2]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[3]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick='ClickActionEditFund("+indexEntry[0]+")'/></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'DeleteFund("+indexEntry[0]+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="</tr>";
			});
			$("#myFund").html(HTMLBook);
			$('#tabledatafund').DataTable({});
		
			}
		});
	};
}

function ClickActionEditFund(id){
	$.ajax({
		url: "/NewKmuttUi-portlet/Model/selectEditFund.jsp",
		type: "get",
		dataType: "json",
		data:{"paramID":id},
		success: function(data) {
			$.each(data,function(index,indexEntry){
				$("#idfund").val(indexEntry[0]);
				$("#stfund").val(indexEntry[2]);
				$("#enfund").val(indexEntry[3]);
				$("#action").val("edit");
			});
		}
	})
};


function ClickCancelFund(){
	$("#stfund").val("");
	$("#enfund").val("");
	$("#action").val("add");
};


//////////////////////////////////////////////END FUND PAGE/////////////////////////////////////////////////////

//////////////////////////////////////////////START BUDGET PAGE/////////////////////////////////////////////////

function callBudget(iddetail,idmasterheader,idnameheader,idshowheader){
	$.ajax({
        url: "/NewKmuttUi-portlet/html/header/budget.jsp",
        type: "get",
        dataType: "html",
        success: function(data) {

        	$("div#container").html(data);
        	$('#tabledatabudget').DataTable();
        	$("#detailid").val(iddetail);
        	$("#masterheaderid").val(idmasterheader);
        	$("#nameheaderid").text(idnameheader);
        	$("#showheaderid").text(idshowheader);
        	
        	selectdatabudget();
        }
    });
	
	var selectdatabudget=function(){
    	if( $.fn.DataTable.isDataTable('#tabledatabudget')) {
			$('#tabledatabudget').DataTable().destroy();
		}
    	$.ajax({
    		url: "/NewKmuttUi-portlet/Model/SelectDataBudget.jsp",
    		type: "get",
    		dataType: "json",
    		data:{"paramID":iddetail},
    		success: function(data) {
    			var HTMLBook="";
    			$.each(data,function(index,indexEntry){
    				HTMLBook+="<tr>" ;
    				HTMLBook+="<td>";
    				HTMLBook+="<center>"+indexEntry[0]+"</center>";
    				HTMLBook+="</td>";	
    				HTMLBook+="<td>";
    				HTMLBook+="<center>"+indexEntry[2]+"</center>";
    				HTMLBook+="</td>";
    				HTMLBook+="<td>";
    				HTMLBook+="<center>"+indexEntry[3]+"</center>";
    				HTMLBook+="</td>";
    				HTMLBook+="<td>";
    				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick = 'showeditbudget("+indexEntry[0]+")'/></center>";
    				HTMLBook+="</td>";
    				HTMLBook+="<td>";
    				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'DeleteBudget("+indexEntry[0]+")'></center>";
    				HTMLBook+="</td>";
    				HTMLBook+="</tr>";
    			});
    			$("#myBudget").html(HTMLBook);
    			$('#tabledatabudget').DataTable({});
    			$("#action").val("add");
    		}
    	});
    };
}
function ClickSaveBudget(){
	var id = $("#detailid").text()
	var idedit = $("#idbud").val()
	
	if($("#action").val()=="add"){
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/InsertDataBudget.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramStartbud":$("#startbud").val(),
				"paramEndbud":$("#endbud").val(),
				"paramgivenName":$("#givenName").val(),
				"detailid":$("#detailid").val()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					
					$("#startbud").val("")
					$("#endbud").val("")
			
					getselectdatabudget();

				}
			}
		});
	};
	if($("#action").val()=="edit"){
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/updateBudget.jsp",
			type:"get",
			dataType:"json",
			data:{
				"paramId":idedit,
				"paramStartbud":$("#startbud").val(),
				"paramEndbud":$("#endbud").val(),
				"paramgivenName":$("#givenName").val(),
				"detailid":$("#detailid").text()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					
					$("#startbud").val("")
					$("#endbud").val("")
					$("#action").val("add");
					
					getselectdatabudget();

				}
			}
		})	
	}
};
	
var getselectdatabudget=function(){
	if( $.fn.DataTable.isDataTable('#tabledatabudget')) {
		$('#tabledatabudget').DataTable().destroy();
	}
	var iddetail = $("#detailid").val();
	
	$.ajax({
		url: "/NewKmuttUi-portlet/Model/SelectDataBudget.jsp",
		type: "get",
		dataType: "json",
		data:{"paramID":iddetail},
		success: function(data) {
			var HTMLBook="";
			$.each(data,function(index,indexEntry){
				HTMLBook+="<tr>" ;
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[0]+"</center>";
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[2]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center>"+indexEntry[3]+"</center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  onClick = 'showeditbudget("+indexEntry[0]+")'/></center>";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 30px; higth = 30px; onClick = 'DeleteBudget("+indexEntry[0]+")'></center>";
				HTMLBook+="</td>";
				HTMLBook+="</tr>";
			});
			$("#myBudget").html(HTMLBook);
			$('#tabledatabudget').DataTable({});
			$("#action").val("add");
		}
	});
};


function showeditbudget(id){

	$.ajax({
		url:"/NewKmuttUi-portlet/Model/SelectEditBudget.jsp",
		type:"get",
		dataType:"json",
		data:{"paramID":id},
		success:function(data) {
			
			$.each(data,function(index,indexEntry){
			
			$("#idbud").val(indexEntry[0]);
			$("#startbud").val(indexEntry[2]);
			$("#endbud").val(indexEntry[3]);
			$("#action").val("edit");
			});
		}
	});
};

function cancelbudget(){
	$("#startbud").val("");
	$("#endbud").val("");
	$("#action").val("add");
};

function DeleteBudget(actType){
	
	var idd=actType
	
	$("#idbudget").html(idd)
	$("#ModalBudget").modal();
	
}
function ClickDeleteBudget(){
	
	var elid = $("#idbudget").text()
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/DeleteBudget.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":elid},
		success:function(data){
			if(data=="success"){
				
				alert("ลบข้อมูลเรีบยร้อยแล้ว");
				
				getselectdatabudget();
	
			}
		}
	})	
};
//////////////////////////////////////////////END BUDGET PAGE/////////////////////////////////////////////////


	
	function callHomePage(){
		$.ajax({
	        url: "/NewKmuttUi-portlet/html/header/view.jsp",
	        type: "get",
	        dataType: "html",
	        success: function(data) {
	        	
	        	$("div#container").html(data);
	        	$('#tableDetail').DataTable();
	        	
	        }
		
	    });
	    return false;
	}
	
	
	
	
	function ClickAddHead(elid){
		
		if ($("#edithead").is(":visible")) {
			$("#edithead").toggle(500);
		}

		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	
	
	function ClickcancelHead(elid){
		
		if ($(elid).is(":visible")) {
			$(elid).toggle(500);
		} else {
			return false;
		}
	}
	
	function ClickActionDetail(elid){
		/* if ($("#myFund").is(":visible")) {
			$("#myFund").toggle(500);
		}
		if ($("#accitemgroup").is(":visible")) {
			$("#accitemgroup").toggle(500);
		} */
		if ($(elid).is(":visible")) {
			$(elid).toggle(500);
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickClose(elid){
		if ($("#mySumAddDetail").is(":hidden")) {
			$("#mySumAddDetail").toggle(500);
		} 
		if ($("#myAddDetail").is(":hidden")) {
			$("#myAddDetail").toggle(500);
		} 
		if ($(elid).is(":visible")) {
			$(elid).toggle(500);
		} 
		else {
			return false;
		}	
	}
	


	
	
	
	function ClickActionAddDetail(elid){
		/* if ($("#myFund").is(":visible")) {
			$("#myFund").toggle(500);
		} */
		if ($("#account").is(":visible")) {
			$("#account").toggle(500);
		}
		if ($(elid).is(":visible")) {
			$(elid).toggle(500);
		} else {
			$(elid).toggle(500);
		}
	}
	
	function ClickActionAccIG(elid){
		if ($("#myAddDetail").is(":visible")) {
			$("#myAddDetail").toggle(500);
		}
		if ($("#myEditDetail").is(":visible")) {
			$("#myEditDetail").toggle(500);
		}
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
	}
	
	function CloseAccIG(elid){
		if ($("#mySumEditDetail").is(":visible")) {
			$("#mySumEditDetail").toggle(500);
		} 
		if ($("#mySumAddDetail").is(":hidden")) {
			$("#mySumAddDetail").toggle(500);
		} 
		if ($("#myAddDetail").is(":hidden")) {
			$("#myAddDetail").toggle(500);
		} 
		if ($("#account").is(":visible")) {
			$("#account").toggle(500);
		} 
		else{
			return false;
		}
	}