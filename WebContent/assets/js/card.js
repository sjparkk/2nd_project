/**
 * 
 */

function cardRegister() {
	if (document.cardReg.cardId.value == "") {
		alert("카드번호를 입력하십시오.");
		document.cardReg.cardId.focus();
		return false;
	}
	if (document.cardReg.cvc.value == "") {
		alert("CVC를 입력하십시오.");
		document.cardReg.cvc.focus();
		return false;
	}
	if (document.cardReg.cardEXP.value == "") {
		alert("만료기한을 입력하십시오.");
		document.cardReg.cardEXP.focus();
		return false;
	}
	if (document.cardReg.cardPassword.value == "") {
		alert("비밀번호를 입력하십시오.");
		document.cardReg.cardPassword.focus();
		return false;
	}

	document.cardReg.action = "card_register_action.jsp";
	document.cardReg.method = "POST";
	document.cardReg.submit();
}

function cardUnregister() {

	document.cardList.action = "card_unregister_action.jsp";
	document.cardList.method = "POST";
	document.cardList.submit();
}