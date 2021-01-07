<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
String tel=request.getParameter("tel");
%>
<center> 
<table border=1>
<tr><th colspan=3 align=center bgcolor=blue><b><font color="white" size=4> 회원 로그인 정보
</font></b></th></tr>
<tr><td>아 이 디<td align=center size=20> <td><%=id%> </td></tr>
<tr><td>비밀번호<td align=center size=20> <td><%=pwd%> </td></tr>
<tr><td>이 름<td align=center size=20> <td><%=name%> </td></tr>
<tr><td>연 락 처<td align=center size=20> <td><%=tel%> </td></tr>
</center></table>
</body>
</html>