<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)session.getAttribute("id"); %>
<!DOCTYPE html>
<title>otp_test</title>
<jsp:include page="./head.jsp" flush="true" />
<script>
function goMypage(){
	//alert('들어와?');
	location.href="./mypage.do";
	
}
function Logout(){
	//alert('들어와?');
	location.href="./logout.do";
	
}

</script>
<body>
<h1>메인 입니다.</h1>
id : <%=id %><br>
<input type="button" value="내정보가기" size="100" onclick="goMypage();">
<input type="button" value="로그아웃" onclick="Logout();">

</body>
</html>