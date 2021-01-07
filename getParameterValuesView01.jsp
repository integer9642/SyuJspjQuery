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
<b><h3>getParameterValues() Test 출력</h3></b><br>
<%
String values[]=request.getParameterValues("chk");
if(values != null){
	for(int i=0; i<values.length; i++){
		%>
		<%=values[i] %><br>
		<%
	}
	
}
%>
</body>
</html>