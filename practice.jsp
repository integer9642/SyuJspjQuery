<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int num =5;
int fac=1;
for(int i=1; i<=num; i++){
	out.print(i+"<br>");
	fac*=i;
	}
%>
원하는 숫자
<%
out.print(+num+"! = "+fac);
%>
</body>
</html>