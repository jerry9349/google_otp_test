<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>otp_test</title>
<jsp:include page="./head.jsp" flush="true" />
<script>
function goAction(){
	//alert('들어와?');
	location.href="./GoogleOTPAction.do";
	
}
</script>
<body>
<h1>otp test 로그인 창 입니다.</h1>
<form action="./MemberLoginAction.do" name="form" method="post">
<!-- <input type="hidden" name="encodedKey" value="encodeKey" readonly> -->
이름 : <input type="text" name="id"><br>
비밀번호 : <input type="text" name="pw"><br>
<!-- otp number : <input type="text" name="otp_number"><br>-->
<input type="submit" value="전송"> 
</form>
</body>
</html>