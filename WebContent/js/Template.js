
		/* ######## Start select Template ########## */
var selectDataBookFn=function(){
	
	if ( $.fn.DataTable.isDataTable('#tableTemplete')) {
	      $('#tableTemplete').DataTable().destroy();
	     }

		$.ajax({
				url:"/NewKmuttUi-portlet/Model/select_Template.jsp",
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
						HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditTemplate( \"#edittemplate\" , "+indexEntry[0]+")'></center>"
					HTMLBook+="</td>";
						
					HTMLBook+="<td>";
						HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
					HTMLBook+="</td>";
					
					HTMLBook+="</tr>";
								
				});
								
					$("#templete").html(HTMLBook);
					
			   		 $('#tableTemplete').DataTable();
					}
				
				});
		/* ######## End select Template ########## */

}


/* ######## Start btn EditTem ########## */
$("#btnEditTem").click(function(){
	
	var User = $("#Username").val();
	
	var id = $("#hiddenid").text();		
	
	 $.ajax({
		url:"/NewKmuttUi-portlet/Model/update_Template.jsp",
		type:"get",
		dataType:"json",
		data:{"paramId":id,
			"paramName":$("#nameEditTem").val(),
			"paramUser":$("#Username").val()},
			
		
			success:function(data){				
				if(data=="success"){
					alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
					$("#nameEditTem").val("");
				selectDataBookFn();		
				
				$("#edittemplate").slideUp("slow");
			}
		}	
	});	
});
/* ######## End Btn EditTem ########## */	




/* ######## Start btn SearchTem ########## */
$("#btnSearchTem").click(function(){ 
	
	if ( $.fn.DataTable.isDataTable('#tableTemplete')) {
	      $('#tableTemplete').DataTable().destroy();
	  }
	
		 $.ajax({
			        url: "/NewKmuttUi-portlet/Model/search_Template.jsp",
			        type: "get",
			        dataType:"json",
			        data: {paramName: $("#nameSearchTem").val()},
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
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditTemplate( \"#edittemplate\" , "+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
								
			HTMLBook+="<td>";
				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
			HTMLBook+="</td>";
							
			HTMLBook+="</tr>";
										
		});
										
			$("#templete").html(HTMLBook);
							
			 $('#tableTemplete').DataTable(); 
		 }
	});
			        
});
/* ######## End btn SearchTem ########## */



/* ######## Start function DeleteTemplate ########## */
function clickDelete(elid){
	
	var id = elid
	//	alert(id)				
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/delete_Template.jsp",
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
/* ######## End function DeleteTemplate ########## */


/* ######## Start function AddTemplate ########## */
function clickAddTemplate(elid,id){
	
	
		if ($("#edittemplate").is(":visible")) {
		$("#edittemplate").slideToggle("slow");
			}
			
		if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle("slow");
		} 
};

$("#btnSaveTem").click(function(){
	
	var User = $("#Username").val();
	
			 alert("SaveClick"); 
	$.ajax({
		url:"/NewKmuttUi-portlet/Model/insert_Template.jsp",
		type:"get",
		dataType:"json",
		data:{"paramName":$("#nameAddTem").val(),
			 "paramUser":$("#Username").val()},
		success:function(data){
			if(data=="success"){
		    alert("บันทึกข้อมูลเรีบยร้อยแล้ว");
				$("#nameAddTem").val("");
				selectDataBookFn();
				
				
				$("#addtemplate").slideUp("slow");
						}
					}
			});
		});
	
/* ######## End function AddTemplate ########## */
	
	
	
/* ######## Start function EditTemplate ########## */	
function clickEditTemplate(elid,id){		
	$(elid).slideDown("slow");
	
		if ($("#addtemplate").is(":visible")) {
			$("#addtemplate").slideToggle("slow");
		}
		
		/*if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle("slow");
		} */
		
		$("#hiddenid").text(id);
		var id = $("#hiddenid").text();
		
		$.ajax({
			url:"/NewKmuttUi-portlet/Model/Edit_Template.jsp",
			type:"get",
			dataType:"json",
			data:{"paramId":id},
			success:function(data){				
				$.each(data,function(index,indexEntry){
					$("#nameEditTem").val(indexEntry[1]);						
				});
			}	
		});			
}
/* ######## End function EditTemplate ########## */
$("#nameSearchTem").keyup(function(){ 
	
	if ( $.fn.DataTable.isDataTable('#tableTemplete')) {
	      $('#tableTemplete').DataTable().destroy();
	  }

     var nameSearch = $(this).val();  
     if(nameSearch != '') 

     {  
          $.ajax({  
               url:"/NewKmuttUi-portlet/Model/search_Template.jsp",  
               method:"post",  
               data:{paramName:nameSearch},  
               dataType:"json",  
               success:function(data)  {
            	   
   			var HTMLBook="";
   			
   			$.each(data,function(index,indexEntry){		
   				
   			HTMLBook+="<tr class=info>";
   							
   			HTMLBook+="<td >";
   				HTMLBook+="<center>"+(index+1)+"</center>"
   			HTMLBook+="</td>";
   							
   			HTMLBook+="<td>";
   				HTMLBook+=""+indexEntry[1]+"";
   			HTMLBook+="</td>";
   							
   			HTMLBook+="<td>";
   				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/edited.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickEditTemplate( \"#edittemplate\" , "+indexEntry[0]+")'></center>"
   			HTMLBook+="</td>";
   								
   			HTMLBook+="<td>";
   				HTMLBook+="<center><img src = /NewKmuttUi-portlet/images/delete1.png width = 30px; height = 30px; class=\"set-pointer\" onClick ='clickDelete("+indexEntry[0]+")'></center>"
   			HTMLBook+="</td>";
   							
   			HTMLBook+="</tr>";
   										
   		});
   										
   			$("#templete").html(HTMLBook);
   							
   			 $('#tableTemplete').DataTable(); 
   			 
   		 }
          });  
     }  
     else  
     {  
        //  $("#templete").html("");
          selectDataBookFn();	
          
     }
});   

$(document).ready(function() {
				
				

	selectDataBookFn();	
				 
});


	
	



  