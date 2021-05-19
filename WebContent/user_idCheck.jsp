<%@page import="com.itwill.watch.service.UserInfoService"%>
<%@page import="com.itwill.watch.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserInfoService userInfoService = new UserInfoService();
UserInfo userId = userInfoService.findUser(request.getParameter("userId"));
String checkId = "";
if (userId == null) {
	checkId = "";
} else {
	checkId = userId.getUserId();
}
%>
<script type="text/javascript">
		function IdCheck(){
				var email = document.getElementById("userId").value;	
				var checkUserId = '<%=checkId%>';
		if (!userId) {
			alert("아이디를 입력후 중복체크 하세요.");
			return false;
		}
		if (checkUserId != email) {
			alert("사용가능한 아이디 입니다.");
		} else {
			alert("존재하는 아이디 입니다.");
			document.getElementById("userId").value = "";
		}
	}

	document.userReg.focus();

	function sendCheckValue() {

		opener.document.userReg.userId.value = document.getElementById("userId").value;
		if (opener != null) {
			opener.chkForm = null;
			self.close();
			//window.close();
		}
	}
</script>
<body>
	<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="userId" id="userId"
					value="<%=request.getParameter("userId")%>"> <input
					type="button" value="중복확인" onclick="IdCheck()">
			</form>
			<div id="msg"></div>

			<br> <input id="cancelBtn" type="button" value="취소"
				onclick="window.close()"> <input id="useBtn" type="button"
				value="사용하기" onclick="sendCheckValue()">
		</div>
	</div>
</body>
</html>