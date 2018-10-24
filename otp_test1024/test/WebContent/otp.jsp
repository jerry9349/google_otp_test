<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = (String)session.getAttribute("id"); %>
<% String key = (String)request.getAttribute("key"); %>
<% String url = (String)request.getAttribute("url"); %>
<% String name = (String)request.getAttribute("name"); %>
<!DOCTYPE html>
<title>otp_test</title>
<jsp:include page="./head.jsp" flush="true" />
<script>
function back(){
	window.history.back();
}
function otpAction(name){
	//otp 설정 창으로 이동
	//alert(name+'들어와?');
	location.href="./GoogleOTPIssueAction.do?name="+name;
}
</script>
<body>

<input type="hidden" name="id">
<h1>otp설정 창입니다.</h1>
현재 <%=id %> 님의 인증상태는 <span style="color:red;"><b>활성화</b></span> 상태 입니다.<br>
인증 키를 발급 받으시려면 구글 otp앱을 키고 아래 인증키 발급 버튼을 눌러 인증키로 otp 설정을 해주세요.<br><br>
<input type="button" value="인증키 발급" onClick="javascript:otpAction('<%=name %>');">
<input type="button" value="뒤로가기" onClick="back();"><br><br>

<% if(key.equals("") || key==null){%>비어있음<%
	}else{%>otp url : <a href="<%=url%>"><%=url%></a><br>
	orp key : <a><%=key %></a>&nbsp;&nbsp;&nbsp;<input type="button" value="복사하기"><br><br>
	<input type="button" value="인증키 재발급" onclick="otpAction('<%=name%>');"><%}%>


</body>
</html>