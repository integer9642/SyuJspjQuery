
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
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
request.setCharacterEncoding("utf-8");
String sabun = request.getParameter("sabun");
String hakkwa= request.getParameter("hakkwa");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String com = request.getParameter("com");
Connection conn = null;
PreparedStatement pstmt = null;
String sql = "insert into sinsang(sabun, hakkwa, kor, eng, com) values (?, ?, ?, ?, ?)";
try{
Class.forName ("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ryu", "ryu");
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, sabun);
pstmt.setString(2, hakkwa);
pstmt.setInt(3, Integer.parseInt(kor));
pstmt.setInt(4, Integer.parseInt(eng));
pstmt.setInt(5, Integer.parseInt(com));
pstmt.executeUpdate();
}catch(Exception e){
e.printStackTrace();
}finally{
try{
if(pstmt != null) pstmt.close();
if(conn != null) conn.close();
}catch(Exception e){
e.printStackTrace(); 
}
}
%>
<h3>입력이 완료되었습니다</h3><br>
<a href="selectSinsang.jsp">확인하기</a>
</body>
</html>
