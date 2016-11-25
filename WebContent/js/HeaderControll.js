

function ClickDeleteModel22(actType){
		/*alert("delete");*/
		var idd=actType
		
		$("#sendidd").html(idd)
		$("#myModalHeader").modal();
		
	}
$(document).ready(function() {

	selectDataFn();
	selectDropdownFn();
	selectDropdownAddFn();
	
	
	
	$("#btnSave").click(function(){
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/insertHeader.jsp",
			type:"get",
			dataType:"json",
			data:{"paramNameHead":$("#namehead").val(),
				"paramTemType":$("#dropdownadd").val(),
				"paramUser":$("#givenName").val()
			},
			success:function(data){
				if(data=="success"){
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#namehead").val("");
					selectChangeDropdownFn();
					
				}
			}
		});
	});
	
	$("#btnEdit").click(function(){
		var id = $("#sendeditid").text();
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/updateHeader.jsp",
			type:"get",
			dataType:"json",
			data:{"paramId":id,
				"paramNameHead":$("#editnamehead").val(),
				"paramTemType":$("#dropdownedit").val(),
				"paramUser":$("#givenName").val()
			},
			success:function(data){
				if(data=="success"){
					
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					
					$("#editnamehead").val("");
					
					selectChangeDropdownFn();
					
				}
			}
		});
	});
	
	$("#btnSearch").click(function(){
		
		if ( $.fn.DataTable.isDataTable('#tableHead')) {
			$('#tableHead').DataTable().destroy();
		}	
		
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/searchHeader.jsp",
			type:"get",
			dataType:"json",
			data:{"paramkeySearch":$("#keySearch").val()
				 
			},
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<tr>" ;
					HTMLBook+="<td>";
					HTMLBook+=""+(index+1)+"";
					HTMLBook+="</td>";	
					HTMLBook+="<td>";
					HTMLBook+=""+indexEntry[1]+"";
					HTMLBook+="</td>";
					HTMLBook+="<td>";
					HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/adddetail.png width = 26px; height = 26px; onClick='callDetaillPage("+indexEntry[0]+",\""+indexEntry[1]+"\","+(index+1)+")'></center>"
					HTMLBook+="</td>";	
					HTMLBook+="<td>";
					HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 31px; height = 31px;  onClick='ClickEditHead("+indexEntry[0]+",\"#edithead\")'/></center>"
					HTMLBook+="</td>";
					HTMLBook+="<td>";
					HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 31px; higth = 31px; onClick='ClickDeleteModel22("+indexEntry[0]+")'></center>"
					HTMLBook+="</td>";
					HTMLBook+="</tr>";
				})
				$("#booklist").html(HTMLBook);
				
				$('#tableHead').DataTable();
				
				$("#keySearch").val("");
			}
		})
	});
	
});

/*function myFunction() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("iddropdown").innerHTML = x;
}*/

	 var selectDataFn=function(){
			$.ajax({
				url:"/NewKmuttUi-portlet/Model/selectheaderdata.jsp",
				type:"get",
				dataType:"json",
				success:function(data){
						
				
				$('#tableHead').DataTable();
				
				}
			
			});
	 }
	
	 var selectDropdownFn=function(){
		 	$.ajax({
				url:"/NewKmuttUi-portlet/Model/selectHeader.jsp",
				type:"get",
				dataType:"json",
				success:function(data){
					var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				});	
				$("#dropdownd").append(HTMLBook);
				$('select#dropdownd').on('change', function() {
					
					var x = document.getElementById("dropdownd").value;
				    document.getElementById("iddropdown").innerHTML = x;
					
					if ( $.fn.DataTable.isDataTable('#tableHead')) {
						$('#tableHead').DataTable().destroy();
					}	 
					selectChangeDropdownFn();
					
				});
				
				}
			
			});
	 }
	 
	 
	 var selectDropdownAddFn=function(){
		 	$.ajax({
				url:"/NewKmuttUi-portlet/Model/selectHeader.jsp",
				type:"get",
				dataType:"json",
				success:function(data){
					var HTMLBook="";
					
				$.each(data,function(index,indexEntry){
					/*HTMLBook+="<option value="+0+" selected>"+โปรดเลือกข้อมูล+"</option>";*/
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				});
							
				$("#dropdownadd").append(HTMLBook);
				
				}
			
			});
	 }
	 
	 var selectChangeDropdownFn=function(){
		 if ( $.fn.DataTable.isDataTable('#tableHead')) {
				$('#tableHead').DataTable().destroy();
			}
		  $.ajax({
				url:"/NewKmuttUi-portlet/Model/selectheaderdata.jsp",
				type:"get",
				dataType:"json",
				data:{"tempplateId":$("#dropdownd").val()},
				success:function(data){
					
					var HTMLBook="";
					
				$.each(data,function(index,indexEntry){
				
				HTMLBook+="<tr>" ;
				HTMLBook+="<td>";
				HTMLBook+=""+(index+1)+"";
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+=""+indexEntry[1]+"";
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/adddetail.png width = 26px; height = 26px; onClick='callDetaillPage("+indexEntry[0]+",\""+indexEntry[1]+"\","+(index+1)+")'></center>"
				HTMLBook+="</td>";	
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/edited.png width = 31px; height = 31px;  onClick='ClickEditHead("+indexEntry[0]+",\"#edithead\")'/></center>"
				HTMLBook+="</td>";
				HTMLBook+="<td>";
				HTMLBook+="<center><img class=set-pointer src = /NewKmuttUi-portlet/images/delete.png width = 31px; higth = 31px; onClick='ClickDeleteModel22("+indexEntry[0]+")'></center>"
				HTMLBook+="</td>";
				HTMLBook+="</tr>";
							
				});
				$("#booklist").html(HTMLBook);				
				$('#tableHead').DataTable();	
				
				}
						
			})
		 };

function ClickEditHead(elid,id){
	
	$("#sendeditid").html(elid)
	/*$("#editnamehead").val("");*/
	
	if ($("#addhead").is(":visible")) {
		$("#addhead").toggle(500);
	}else{
		
	};
	
	$(id).slideDown( "fast", function() {
	
	$("#dropdownedit").empty();
	 
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/selecteditheader.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":elid},
			success:function(data){
				$.each(data,function(index,indexEntry){
					$("#editnamehead").val(indexEntry[1]);
					
					DropdownEditFn();
				});
				
				/*alert(elid);*/
			}
	});
	});
};	

var DropdownEditFn=function(){
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/selectHeader.jsp",
		type:"get",
		dataType:"json",
			success:function(data){
				var HTMLBook="";
				$.each(data,function(index,indexEntry){
					HTMLBook+="<option value="+indexEntry[0]+">"+indexEntry[1]+"</option>";		
				})
				$("#dropdownedit").append(HTMLBook);
			}
	});
};

function ClickDelete(){
	
	var id = $("#sendidd").text();
	
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/deleteHeader.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id},
			success:function(data){
			
			alert("ลบข้อมูลเรียบร้อย !")
			
			selectChangeDropdownFn();
			
			}
	 })
};
