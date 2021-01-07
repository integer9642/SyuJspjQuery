<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹프로그래밍 기말 과제 2017100909 류정수</title>
</head>
<body>
당신이 좋아하는 아이돌 그룹은 
<%
String[] chk = request.getParameterValues("chk");
if(chk != null){
	for(int i=0;i<chk.length;i++){
		if(i>0)
			out.print(","+chk[i]);
		else
		out.print(chk[i]);
	}
}
%>입니다.
</body>
</html>