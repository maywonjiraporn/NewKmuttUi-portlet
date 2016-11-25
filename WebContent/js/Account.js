/*function clickDeleteAcc(elid){
			
			var id = elid
				alert(id);
								
				$.ajax({
				url:"/NewKmuttUi-portlet/Model/delete_Account.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id},
				//sync:false,
				success:function(data){
					
					if(data=="success"){		
						alert("ลบข้อมูลเรียบร้อย !");
						selectDataBookFn();
						
					}
				}
			});
};

function clickAddAccount(elid,id){
	
	if ($("#addaccount").is(":visible")) {
		$("#addaccount").slideToggle("slow");
		}
	 if ($("#editaccount").is(":visible")) {
		$("#editaccount").slideToggle("slow");
		}
	
	 if ($(elid).is(":visible")) {
		return false;
	} else {
		$(elid).toggle(500);
		}
	
};
	
	

function clickEditAccount(elid,id){
	
		if ($("#mySumEditAccount").is(":visible")) {
			$("#mySumEditAccount").slideToggle("slow");
			}
		if ($("#mySumAddAccount").is(":visible")) {
			$("#mySumAddAccount").slideToggle("slow");
			}	
		 if ($(elid).is(":visible")) {
			return false;
		} else {
			$(elid).toggle(500);
			}
		
	 
		 $("#id").text(id);
		var id = $("#id").text();

			$.ajax({
				url:"/NewKmuttUi-portlet/Model/Edit_Account.jsp",
				type:"get",
				dataType:"json",
				data:{"paramId":id},
				success:function(data){				
					$.each(data,function(index,indexEntry){
						$("#AddStart").val(indexEntry[1]);			
						$("#AddEnd").val(indexEntry[2]);
					});
				}	
			});	
	};
	
	
var selectDataBookFn=function(){
		


		
	}



$(document).ready(function() {
	

	 selectDataBookFn();		
});
*/