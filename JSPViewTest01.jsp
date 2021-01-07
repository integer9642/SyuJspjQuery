<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPViewTest01 2017100909 류정수</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String hakbun = request.getParameter("hakbun");
String sex = request.getParameter("sex");
%>
<b><h3>삼육 동아리 회원 가입</h3></b>
<% 
out.print("아이디 : "+id+"<br>");
out.print("비밀번호 : "+pwd+"<br>");
out.print("이름 : "+name+"<br>");
out.print("학번 : "+hakbun+"<br>");
out.print("성별 : "+sex+"<br>");
%>
<b><h3>희망 동아리 신청</h3></b><br>
<%
String[] chk = request.getParameterValues("chk");
if(chk != null){
	for(int i=0;i<chk.length;i++){
		%>
	<%=chk[i] %>
	<%}
}
%>


</body>
</html>