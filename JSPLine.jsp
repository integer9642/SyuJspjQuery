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
int cnt=0;
while(cnt<5){
	cnt++;
%>
<h3><hr width=400 align=left> <%=cnt %>회 출력 </hr></h3>
<%} %>

</body>
</html>