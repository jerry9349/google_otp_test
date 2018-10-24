<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="net.member.db.MemberBean"%>
<%@page import="java.util.List"%>
<% String id = (String)session.getAttribute("id"); %>
<% MemberBean memberlist = (MemberBean)request.getAttribute("member"); %>
<% request.setCharacterEncoding("UTF-8"); %>
  
<!DOCTYPE html>
<title>otp_test</title>
<jsp:include page="./head.jsp" flush="true" />
<script>
function back(){
	window.history.back();
}
function goAction(){
	//otp 설정 창으로 이동
	location.href="./GoogleOTPSettingAction.do";
}
</script>
<body>
<h1>마이페이지 입니다.</h1>
<form action="./MemberUpdateAction.do" method="post" name="form" id="form">
id : <%=memberlist.getId() %><br>
otp 설정 : 
<% if(memberlist.getState()==1){
	%><input type="radio" value="true" name="state" checked="checked">설정
	<input type="radio" value="false" name="state">해제
	<input type="button" value="otp설정하기" onclick="goAction();"><%
}else{ %>
<input type="radio" value="true" name="state">설정
<input type="radio" value="false" name="state" checked="checked">해제<%} %>
<br>
<input type="submit" value="수정하기" >
<input type="button" value="뒤로가기" onclick="back();">
</form>
</body>
</html>