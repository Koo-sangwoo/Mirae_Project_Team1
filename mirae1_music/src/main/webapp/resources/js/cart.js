/*장바구니*/
function insertCart(){
	
	var p_id = $("#p_id").val();
	var p_quantity = $("#p_quantity").val();
	var m_id = $("#m_id").val();
	var p_picture = $("#p_picture").val();
	var p_name = $("#p_name").val();
	var p_price = $("#p_price").val();
	
	if(m_id == null || m_id == ""){
		swal("", "로그인 후 이용하실 수 있습니다.", "warning");
		window.location.href="login_form";
	} else if(p_quantity == 0 || p_quantity == ""){
		swal("", "수량을 선택해주세요.", "warning");
		return false;
	} else {
		$.ajax({
			type : "POST",
			url : "insertCart",
			data : {
				"m_id" : m_id,
				"p_id" : p_id,
				"p_quantity" : p_quantity,
				"p_picture" : p_picture,
				"p_name" : p_name,
				"p_price" : p_price
			},
			success : function(){
				swal("", "장바구니에 저장되었습니다.", "success");
			}
		});
	}
}

function clearCart(){
	var m_id = $("#m_id").val();
	if(m_id == null || m_id == ""){
		swal("", "로그인 후 이용하실 수 있습니다.", "warning");
		window.location.href="login_form";
	} else {
		$.ajax({
			type : "POST",
			url : "clearCart",
			data : {
				"m_id" : m_id
			},
			success : function(){
				window.location.reload();
			}
		});
	}
}

function deleteCart(p_id, m_id) {
	if (m_id == null || m_id == "") {
		swal("", "로그인 후 이용하실 수 있습니다.", "error")
		window.location.href="login_form";
	} else {
		$.ajax({
			type : "POST",
			url : "deleteCart",
			data : {
				"m_id" : m_id,
				"p_id" : p_id
			},
			success : function(data) {
				window.location.reload();
			}
		});
	}
}