<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt=null;
ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<title> 신상명세서 출력 현황 </title>
<body>
<center><H2>신상명세서 출력 현황</H2></center>
<table width="800" border="1" align=center>
<tr>
<th>사 번</th>
<th>학 과</th>
<th>국 어</th>
<th>영 어</th>
<th>전 산</th>
</tr>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "ryu", "ryu");
String sql = "select * from sinsang";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
while(rs.next()){
out.print("<tr>");
out.print("<td>"+rs.getString("sabun")+"</td>");
out.print("<td>"+rs.getString("hakkwa")+"</td>");
out.print("<td>"+rs.getInt("kor")+"</td>");
out.print("<td>"+rs.getInt("eng")+"</td>");
out.print("<td>"+rs.getInt("com")+"</td>");
out.print("</tr>");
}

rs.close();
pstmt.close();
conn.close(); }catch(Exception e){
e.printStackTrace(); }finally{
try{
if(rs != null) rs.close();
if(pstmt != null) pstmt.close();
if(conn != null) conn.close(); }catch(Exception e){
e.printStackTrace(); }}
%>
</table>
</body>
</html>