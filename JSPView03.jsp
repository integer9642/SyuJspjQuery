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
<h2>성적 결과</h2>
<%
String name = request.getParameter("name");
String pwd = request.getParameter("password");
int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("eng"));
int com = Integer.parseInt(request.getParameter("com"));
int tot = kor+eng+com;
float avg = tot/3;
out.print("이름:"+name+"<br>");
out.print("학번:"+pwd+"<br>");
out.print("국어:"+kor+"<br>");
out.print("영어:"+eng+"<br>");
out.print("전산:"+com+"<br>");
out.print("총점:"+tot+"<br>");
out.print("평균:"+avg+"<br>");
%>
</body>
</html>