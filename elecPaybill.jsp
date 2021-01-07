<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
Connection conn = null;
PreparedStatement pstmt=null;
ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹프로그래밍 기말 과제 2017100909 류정수</title>
<style type= text/css>
#aa {background-color : gray; text-align : center}
table {text-align : center}
</style>
</head>
<body>
<center>
<h2>전기 요금 명세서 출력</h2>
<table width="800" border = "1">
<tr id="aa">
<th>고객번호</th>
<th>고객성명</th>
<th>용도 구분</th>
<th>사용량</th>
<th>단가</th>
<th>사용요금</th>
</tr>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "2017100909", "ryu");
String sql = "select * from elec_code";
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
int sum=0;

while(rs.next()){
String use= rs.getString("elec_code");
int price=0;
int cost=0;
switch(rs.getString("elec_code")){
	case "1" :
	use= "가정용";
	price = 800;
	break;
	case "2" :
	use= "영업용";
	price = 900;
	break;
	case "3":
	use= "산업용";
	price = 1000;
	break;
	case "4" :
	use= "공공기관용";
	price = 600;
	break;
}
	cost=rs.getInt("qty")*price;

out.print("<tr>");
out.print("<td>"+rs.getString("custcode")+"</td>");
out.print("<td>"+rs.getString("irum")+"</td>");
out.print("<td>"+use+"</td>");
out.print("<td>"+rs.getInt("qty")+"</td>");
out.print("<td>"+price+"</td>");
out.print("<td>"+cost+"</td>");
out.print("</tr>");
sum += cost;
}
out.print("<tr>");
out.print("<td colspan = 5>전기 사용금액 총계"+"</td>");
out.print("<td>"+sum+"</td>");
out.print("</tr>");

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
</center>
</body>
</html>