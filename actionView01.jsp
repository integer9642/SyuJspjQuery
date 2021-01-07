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
<center><h3>환영합니다.</h3><p>
당신의 이름 : <%= request.getParameter("username")%><br>
당신의 소속 : <%= request.getParameter("sosok")%>
</center>
</body>
</html>