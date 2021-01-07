<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> JSP와 반복문 테스트</h2>
<%
for(int i=1; i<=5 ; i++){
	out.print("<br> JSP화이팅, 삼육대 화이팅!"+i);
}
%>
</body>
</html>