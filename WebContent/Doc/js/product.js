function AddToCart(onlyOneCartName) {
	var onlyOneCartForm=document.getElementById(onlyOneCartName)
	onlyOneCartForm.action = "shop_cart_action.jsp";
	onlyOneCartForm.method='POST';
	onlyOneCartForm.submit();
} 

function manyAddToCart() {
	var count = document.getElementById("product_count_item_input_number").value;
	ManyCartForm.productQty.value=count;
	ManyCartForm.action = "product_detail_action.jsp";
	ManyCartForm.method='POST';
	ManyCartForm.submit();
}

function directBuy() {
	var count = document.getElementById("product_count_item_input_number").value;
	directBuyForm.productQty.value=count;
	directBuyForm.action = "buynow_checkout.jsp";
	directBuyForm.method='POST';
	directBuyForm.submit();
}
function productSort(){
	var indexNo = document.getElementById('sort').selectedIndex;
	if(indexNo==1) {
		location.href='shop.jsp?kind=genenal';	
	} else if (indexNo==2){
		location.href='shop.jsp?kind=asc';			
	} else {
		location.href='shop.jsp?kind=desc';					
	}
	
}
