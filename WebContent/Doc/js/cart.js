
/*
function updateCartQty(updown,cartName,cartQtyInputName){
	var count=document.getElementById(cartQtyInputName).value;
	var cartForm = document.getElementById(cartName);
	cartForm.cartQty.value=count;
	
}
*/

function updateCartSubmit(cartFormName,cartQtyInputName){
	var count = document.getElementById(cartQtyInputName).value;
	var cartForm =document.getElementById(cartFormName);
	cartForm.cartQty.value=count;
	
	
	cartForm.action = "cart_update_action.jsp";
	cartForm.method='POST';
	cartForm.submit();
	
}

function deleteCartSubmit(cartFormName){
var cartForm =document.getElementById(cartFormName);

cartForm.action="cartNo_delete_action.jsp"
cartForm.method='POST';
cartForm.submit();	
}

