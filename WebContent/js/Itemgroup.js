/* #############################################  ITEM GROUP  ########################################################### */

var selectDataFn=function(){ 
	
	if ( $.fn.DataTable.isDataTable('#tableItem')) {
	      $('#tableItem').DataTable().destroy();
	     }
	 
	/* ######## Start select Item Group ########## */
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/select_ItemGroup.jsp",
			type:"get",
			dataType:"json",
			success:function(data){
		
		
		var HTMLBook="";
		$.each(data,function(index,indexEntry){
							
			HTMLBook+="<tr class=info>" ;
			
			HTMLBook+="<td >";
				HTMLBook+="<center>"+(index+1)+"</center>"
			HTMLBook+="</td>";
				
			HTMLBook+="<td>";
				HTMLBook+=""+indexEntry[1]+"";
			HTMLBook+="</td>";
			
			HTMLBook+="<td>";
				HTMLBook+=""+indexEntry[2]+"";
			HTMLBook+="</td>";
			
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/AddFile.png width = 30px; height = 30px;  href=\"\" class=\"set-pointer\"  onClick ='callAccountPage2("+indexEntry[0]+",\""+indexEntry[1]+"\")'></center>" 
			HTMLBook+="</td>"; 
				
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditItem( \"#edititem\" , "+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
				
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" class=\"del\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
			
			HTMLBook+="</tr>";
						
		});
				
			$("#itemgroup").html(HTMLBook);
			
			$('#tableItem').DataTable();
			}
		
		});
		/* ######## End select Item Group ########## */
		
}

/* ######## start EditItem ########## */
$("#btnEditItem").click(function(){
	
	var User = $("#Username").val();
	//alert(User);
	
	var id = $("#DataItemid").text();		
	
	 $.ajax({
		url:"/NewKmuttUi-portlet/Model/update_ItemGroup.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id,
			"paramName":$("#nameEditItem").val(),
			"paramDes":$("#EditDescription").val(),
			"paramUser":$("#Username").val()},
			
		
			success:function(data){				
				if(data=="success"){
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#nameEditItem").val("");
					$("#EditDescription").val("");
				selectDataFn();		
				
				$("#edititem").slideUp("slow");
			}
		}	
	});	
});

/* ######## End EditItem ########## */



/* ######## start SearchItem ########## */
$("#btnSearchItem").click(function(){ 
	
	if ( $.fn.DataTable.isDataTable('#tableItem')) {
	      $('#tableItem').DataTable().destroy();
	     }

	 $.ajax({
		        url:"/NewKmuttUi-portlet/Model/search_ItemGroup.jsp",
		        type:"get",
		        dataType:"json",
		        data:{paramName:$("#nameSearchItem").val()},
		        success: function(data) { 	
		        	
		        	var HTMLBook="";
		    	$.each(data,function(index,indexEntry){
			
		    			HTMLBook+="<tr class=info>" ;
		    			
		    			HTMLBook+="<td >";
		    				HTMLBook+="<center>"+(index+1)+"</center>"
		    			HTMLBook+="</td>";
		    				
		    			HTMLBook+="<td>";
		    				HTMLBook+=""+indexEntry[1]+"";
		    			HTMLBook+="</td>";
		    			
		    			HTMLBook+="<td>";
		    				HTMLBook+=""+indexEntry[2]+"";
		    			HTMLBook+="</td>";
		    			
		    			HTMLBook+="<td>";
		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/AddFile.png width = 30px; height = 30px;  href=\"\" class=\"set-pointer\"  onClick ='callAccountPage2("+indexEntry[0]+",\""+indexEntry[1]+"\")'></center>" 
		    			HTMLBook+="</td>"; 
		    				
		    			HTMLBook+="<td>";
		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditItem( \"#edititem\" , "+indexEntry[0]+")'></center>"
		    			HTMLBook+="</td>";
		    				
		    			HTMLBook+="<td>";
		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" class=\"del\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
		    			HTMLBook+="</td>";
		    			
		    			HTMLBook+="</tr>";
		    						
		    		});
		    				
		    			$("#itemgroup").html(HTMLBook);
		    			
		    			$('#tableItem').DataTable();
				 }
	 		});				        
		});
				/* ######## End SearchItem ########## */


/* ######## Start function DeleteItem ########## */
function clickDelete(elid){
			
			var id = elid
				alert(id);
								
				$.ajax({
				url:"/NewKmuttUi-portlet/Model/delete_ItemGroup.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id},
				//sync:false,
				success:function(data){
					
					if(data=="success"){		
						alert("ลบข้อมูลเรียบร้อย !");
						selectDataFn();
						
					}
				}
			});
};
/* ######## End function DeleteItem ########## */


/* ######## Start function AddItem ########## */
function clickAddItem(elid,id){

	
	 if ($("#edititem").is(":visible")) {
		$("#edititem").slideToggle("slow");
	}
	
	 if ($(elid).is(":visible")) {
		return false;
	} else {
		$(elid).toggle(500);
		}
};	 

$("#btnAddItem").click(function(){
		 
		 var User = $("#Username").val();
		// alert(User);
		 
		 alert("SaveClick"); 
		 
	 
		$.ajax({
				url:"/NewKmuttUi-portlet/Model/insert_ItemGrop.jsp",
				type:"get",
				dataType:"json",
				data:{"paramName":$("#nameAddItem").val(),
					"paramDes":$("#AddDescription").val(),
					 "paramUser":$("#Username").val()},
				success:function(data){
					if(data=="success"){
				    alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
						$("#nameAddItem").val("");
						$("#AddDescription").val("");
						selectDataFn();
						
						$("#additem").slideUp("slow");
						
					}
				}
			});
});
	
	
/* ######## End function AddItem ########## */


	
/* ######## Start function EditItem ########## */
function clickEditItem(elid,id){
/*	alert(elid);*/
	$(elid).slideDown("slow");
	
	
	if ($("#additem").is(":visible")) {
		$("#additem").slideToggle("slow");
	}
	
	
/*	 if ($(elid).is(":visible")) {
		return false;
	} else {
		$(elid).toggle(500);
	}
	 */
	
	 
	 	$("#DataItemid").text(id);
		var id = $("#DataItemid").text();
		
			$.ajax({
				url:"/NewKmuttUi-portlet/Model/GetEdit_ItemGroup.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id},
				success:function(data){				
					$.each(data,function(index,indexEntry){
						$("#nameEditItem").val(indexEntry[1]);			
						$("#EditDescription").val(indexEntry[2]);
						
					});
				}	
			});	
	};
	/* ######## End function EditItem ########## */
	
	
	$("#nameSearchItem").keyup(function(){ 
		
		if ( $.fn.DataTable.isDataTable('#tableItem')) {
		      $('#tableItem').DataTable().destroy();
		  }

	     var nameSearch = $(this).val();  
	     if(nameSearch != "") 

	     {  
	          $.ajax({  
	               url:"/NewKmuttUi-portlet/Model/search.jsp",  
	               method:"post",  
	               data:{paramName:nameSearch},  
	               dataType:"json",  
	               success:function(data)  {
	            	   
	            	   var HTMLBook="";
	            	   $.each(data,function(index,indexEntry){
	   			
	            		   	HTMLBook+="<tr class=info>" ;
	   		    			
	   		    			HTMLBook+="<td >";
	   		    				HTMLBook+="<center>"+(index+1)+"</center>"
	   		    			HTMLBook+="</td>";
	   		    				
	   		    			HTMLBook+="<td>";
	   		    				HTMLBook+=""+indexEntry[1]+"";
	   		    			HTMLBook+="</td>";
	   		    			
	   		    			HTMLBook+="<td>";
	   		    				HTMLBook+=""+indexEntry[2]+"";
	   		    			HTMLBook+="</td>";
	   		    			
	   		    			HTMLBook+="<td>";
	   		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/AddFile.png width = 30px; height = 30px;  href=\"\" class=\"set-pointer\"  onClick ='callAccountPage2("+indexEntry[0]+",\""+indexEntry[1]+"\")'></center>" 
	   		    			HTMLBook+="</td>"; 
	   		    				
	   		    			HTMLBook+="<td>";
	   		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditItem( \"#edititem\" , "+indexEntry[0]+")'></center>"
	   		    			HTMLBook+="</td>";
	   		    				
	   		    			HTMLBook+="<td>";
	   		    				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" class=\"del\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
	   		    			HTMLBook+="</td>";
	   		    			
	   		    			HTMLBook+="</tr>";
	   		    						
	   		    		});
	   		    				
	   		    			$("#itemgroup").html(HTMLBook);
	   		    			
	   		    			$('#tableItem').DataTable();
	   				 }
	          });  
	     }  
		     else  
		     {  
		        //  $("#templete").html("");
		          selectDataFn();	
		          
		     }
	});
/* ############################################# End ITEM GROUP  ########################################################### */	
	


	
	
	
	
	
	
	
	
	
	
	
/* ############################################# Start ACCOUNT  ########################################################### */


/* ######## start DeleteAccount ########## */
function clickDeleteAcc(id,elid){	
		$.ajax({
		url:"/NewKmuttUi-portlet/Model/delete_Account.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id},
		sync:false,
		success:function(data){
			
			if(data=="success"){		
				alert("ลบข้อมูลเรียบร้อย !");
				
			var id =$("#ItemId").html();
				showddataAccount(id);
				
			}
		}
	});
};
/* ######## End DeleteAccount ########## */


/* ######## start function AddAccount ########## */
function clickAddAccount(elid,id){
	
	/*if ($("#mySumEditAccount").is(":visible")) {
		$("#mySumEditAccount").slideToggle("slow");
		}*/
	 if ($("#addaccount").is(":visible")) {
		$("#addaccount").slideToggle("slow");
		}
	 if ($("#mySumEditAccount").is(":visible")) {
		$("#mySumEditAccount").slideToggle("slow");
	 }
	
	 if ($(elid).is(":visible")) {
		return false;
	} else {
		$(elid).toggle(500);
		}	
};
/* ######## End function AddAccount ########## */
	


/* ######## End function EditAccount ########## */
function clickEditAccount(elid,id){
	
		$(elid).slideDown("slow");
		
		if ($("#addaccount").is(":visible")) {
			$("#addaccount").slideToggle("slow");
			}
		
		/*if ($("#mySumAddAccount").is(":visible")) {
			$("#mySumAddAccount").slideToggle("slow");
		}*/
		
		
		/*	 if ($(elid).is(":visible")) {
			//return false;
		} else {
			$(elid).toggle(500);
			}*/
		
		$("#Editid").text(id);
		var id = $("#Editid").text();

			$.ajax({
				url:"/NewKmuttUi-portlet/Model/GetEdit_Account.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id},
				success:function(data){				
					$.each(data,function(index,indexEntry){
						$("#EditStart").val(indexEntry[2]);			
						$("#EditEnd").val(indexEntry[3]);
					});
				}	
			});				
	};
	/* ######## End function EditAccount ########## */
	
	
	/* ######## Start function showddataAccount ########## */	
function showddataAccount(id){
	
	 if ( $.fn.DataTable.isDataTable('#tableAccount')) {
	      $('#tableAccount').DataTable().destroy();
	     }
	 
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/select_Account.jsp",
		type:"get",
		dataType:"JSON" ,
		 async:false,
		data:{"paramId":id},
		success:function(data){
		
			
		console.log(data);
		
		var HTMLBook="";
		
		$.each(data,function(index,indexEntry){
			
			HTMLBook+="<tr class=info>" ;
			
			HTMLBook+="<td >";
				HTMLBook+="<center>"+(index+1)+"</center>"
			HTMLBook+="</td>";
			
			HTMLBook+="<td>";
				HTMLBook+=""+indexEntry[1]+"";
			HTMLBook+="</td>";
			
			HTMLBook+="<td>";
				HTMLBook+=""+indexEntry[2]+"";
			HTMLBook+="</td>";
			
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px;  class=\"set-pointer\"  onClick='clickEditAccount(\"#mySumEditAccount\", "+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
				
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickDeleteAcc("+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
			
			HTMLBook+="</tr>";
						
		});
						
			$("#account").html(HTMLBook);
			$("#tableAccount").dataTable();
			
			}
		
		});
}
/* ######## End function showddataAccount ########## */


/* ######## Start function AccountPage2 ########## */
function callAccountPage2(id,name){

	$.ajax({
        url: "/NewKmuttUi-portlet/html/itemgroup/Account.jsp",
        type: "get",
        dataType: "html",
        async:false,
        data: {"paramUser" : $("#Username").val() },
        success: function(data) {
        	$("div#container").html(data);
           
        	//start
        	
        	showddataAccount(id);
        	
        	$("#ItemId").html(id);
			$("#ItemName").html(name);

        	
        	//end 
        }
	});
	
/* ######## End function AccountPage2 ########## */



	/* ######## Start Btn EditAccount ########## */
	$("#btnEditAccount").click(function(){

		var User = $("#Username").val();
		
	
		
		var id = $("#Editid").text();
		var idAcc =$("#ItemId").html();
		
		 $.ajax({
			url:"/NewKmuttUi-portlet/Model/update_Account.jsp",
			type:"get",
			dataType:"json",
			data:{"paramId":id,
				"paramNameStart":$("#EditStart").val(),
				"paramNameEnd":$("#EditEnd").val(),
				 "paramUser":$("#Username").val() },
				
			
				success:function(data){				
					if(data=="success"){
						alert("บันทึกข้อมูลเรียบร้อยแล้ว");
						$("#EditStart").val("");
						$("#EditEnd").val("");
						showddataAccount(idAcc);		
						
						$("#mySumEditAccount").slideUp("slow");
						//$("#mySumAddAccount").slideDown("slow");
				}
			}	
		});	
	});
	/* ######## End Btn EditAccount ########## */
	
	 
				 
	/* ######## Start Btn AddAccount ########## */
	 $("#btnAddAccount").click(function(){
		 
		 var User = $("#Username").val();
		
		 var id =$("#ItemId").html();
		 alert("SaveClick"); 
		 

		 
		$.ajax({
				url:"/NewKmuttUi-portlet/Model/insert_Account.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id,
					"paramNameStart":$("#AddStart").val(),
					"paramNameEnd":$("#AddEnd").val(),
					 "paramUser":$("#Username").val()},
					 
					 
				success:function(data){
					if(data=="success"){
				    alert("บันทึกข้อมูลเรียบร้อยแล้ว Account");
						$("#AddStart").val("");
						$("#AddEnd").val("");
						
						showddataAccount(id);
						
						$("#addaccount").slideUp("slow");
							}
						}
				});
			});
	 
};
	 /* ######## End Btn AddAccount ########## */


/* ######## End function AccountPage2 ########## */
	 




	
	/* ######## Start function HomePage1 ########## */
function callHomePage1(){
	
	$.ajax({
        url: "/NewKmuttUi-portlet/html/itemgroup_/view.jsp",
        type: "get",
        dataType: "html",
        success: function(data) {
        	$("div#container").html(data);

        }
    });
   // return false;
}
/* ######## End function HomePage1 ########## */


$(document).ready(function() {

	

	 selectDataFn();
	 

});

  