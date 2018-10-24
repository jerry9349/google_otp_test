<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>Insert title here</title>
<jsp:include page="./head.jsp" flush="true" />
<script>
function Logout(){
	//alert('들어와?');
	location.href="./logout.do";
	
}
</script>
<body>
<h1>otp number 입력창</h1>
구글 앱을 키고 설정된 otp number를 입력하여 주십시오.<br><br>
<form action="./certificationAction.do" method="post" id="form" name="form">
<input type="text" name="otp_number"><br><br>
<input type="submit" value="전송">
<input type="button" value="로그아웃" onClick="Logout();">
</form>

</body>
</html>