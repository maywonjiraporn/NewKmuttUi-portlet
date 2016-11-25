/* ######## Start select Budget ########## */
var selectDataBookFn=function(){
	if ( $.fn.DataTable.isDataTable('#tableBudget')) {
	      $('#tableBudget').DataTable().destroy();
	  }
	
		$.ajax({
		url:"/NewKmuttUi-portlet/Model/select_Budget.jsp",
		type:"get",
		dataType:"json",
		success:function(data){
		/*alert(data);*/
		
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
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditBudget( \"#editbudget\" , "+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
				
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\"  onClick ='clickDeleteBud("+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
			
			HTMLBook+="</tr>";
						
		});
						
			$("#budget").html(HTMLBook);
			
	   		$('#tableBudget').DataTable();
	   	    
			}
		
		});
		
		/* ######## End select Budget ########## */
		
}

/* ######## Start btn EditBudget ########## */
$("#btnEditBud").click(function(){
	
	var User = $("#Username").val();
	
	var id = $("#hiddenid").text();	
	
	 $.ajax({
		url:"/NewKmuttUi-portlet/Model/update_Budget.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id,
			"paramName":$("#nameEditBud").val(),
			"paramUser":$("#Username").val()},
			
		
			success:function(data){				
				if(data=="success"){
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#nameEditBud").val("");
				selectDataBookFn();		
				
				$("#editbudget").slideUp("slow");
			}
		}	
	});	
});
/* ######## End btn EditBudget ########## */




/* ######## Start btn SearchBudget ########## */
$("#btnSearchBud").click(function(){ 
	if ( $.fn.DataTable.isDataTable('#tableBudget')) {
	      $('#tableBudget').DataTable().destroy();
	   }
	
	 $.ajax({
		   url: "/NewKmuttUi-portlet/Model/search_Budget.jsp",
		   type: "get",
		   dataType:"json",
		   data: {paramName: $("#nameSearchBud").val()},
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
			HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditBudget( \"#editbudget\" , "+indexEntry[0]+")'></center>"
		HTMLBook+="</td>";
							
		HTMLBook+="<td>";
			HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
		HTMLBook+="</td>";
						
		HTMLBook+="</tr>";
									
	});
									
		$("#budget").html(HTMLBook);
						
		 $('#tableBudget').DataTable(); 
	 }
});
		        
});
/* ######## End btn SearchBudget ########## */



/* ######## Start function DeleteBudget ########## */
function clickDeleteBud(elid){
			var id = elid
		//	alert(id);	
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/delete_Budget.jsp",
			type:"get",
			dataType:"json",
			data:{"paramId":id},
			success:function(data){
				
				if(data=="success"){
		
					alert("ลบข้อมูลเรียบร้อย !");
					selectDataBookFn();
			}
		}
	});
};
/* ######## Start function DeleteBudget ########## */



/* ######## Start function AddBudget ########## */
function clickAddBudget(elid,id){
		 if ($("#editbudget").is(":visible")) {
			$("#editbudget").slideToggle("slow");
		}
		
		 if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}
};	 
	 $("#btnAddBud").click(function(){
		 
		 var User = $("#Username").val();
		 
				alert("SaveClick");
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/insert_Budget.jsp",
			type:"get",
			dataType:"json",
			data:{"paramName":$("#nameAddBud").val(),
				 "paramUser":$("#Username").val()},
			success:function(data){
				if(data=="success"){
			    alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#nameAddBud").val("");
					selectDataBookFn();
					
					$("#addbudget").slideUp("slow");
							}
						}
				});
			});
		
		/* ######## End function AddBudget ########## */


		
		/* ######## Start function EditBudget ########## */
function clickEditBudget(elid,id){
	
	$(elid).slideDown("slow");
	
		if ($("#addbudget").is(":visible")) {
			$("#addbudget").slideToggle("slow");
		}
		
	/*	 if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
		}*/
		 
		 $("#hiddenid").text(id);
			var id = $("#hiddenid").text();

		$.ajax({
					url:"/NewKmuttUi-portlet/Model/Edit_Budget.jsp",
					type:"get",
					dataType:"json",
					data:{"paramId":id},
					success:function(data){				
						$.each(data,function(index,indexEntry){
							$("#nameEditBud").val(indexEntry[1]);						
						});
					}	
				});	
	}
/* ######## End function EditBudget ########## */
$("#nameSearchBud").keyup(function(){ 
	
	if ( $.fn.DataTable.isDataTable('#tableBudget')) {
	      $('#tableBudget').DataTable().destroy();
	  }

     var nameSearch = $(this).val();  
     if(nameSearch != '') 

     {  
          $.ajax({  
               url:"/NewKmuttUi-portlet/Model/search_Budget.jsp",  
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
            				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditBudget( \"#editbudget\" , "+indexEntry[0]+")'></center>"
            			HTMLBook+="</td>";
            				
            			HTMLBook+="<td>";
            				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\"  onClick ='clickDeleteBud("+indexEntry[0]+")'></center>"
            			HTMLBook+="</td>";
            			
            			HTMLBook+="</tr>";
            						
            		});
            						
            			$("#budget").html(HTMLBook);
            			
            	   		$('#tableBudget').DataTable();
            	   	    
            		}
          });  
     }  
		     else  
		     {  
		        //  $("#budget").html("");
		          selectDataBookFn();	
		          
		     }
});   



$(document).ready(function() {
	
	
	 selectDataBookFn();		
});

  