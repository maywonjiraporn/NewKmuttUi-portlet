$(document).ready(function() {
$("#btnFFFFFFF").click(function(){
		alert("fundsave");
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
					
					$("#paramstfund").val("")
					$("#paramenfund").val("")
					
					REdatadetailFn();

				}
			}
		})	
	});
});