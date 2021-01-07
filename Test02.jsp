<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> JSP Expression </h2>
<%
int a=150;
int b=30;
int sum=a+b;
out.print(a+"+"+b+"="+sum);
%>
</body>
</html>