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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2017100919 박지현 문제3</title>
</head>
<body>
<center><h2>전기 요금 명세서 출력</h2></center>
<table width="800" border="1" align=center>
<tr>
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
    String sql = "select*from elec_code";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
 
    
    
    while(rs.next()){ 
    	 String elec_code = rs.getString("elec_code");
         int qty = rs.getInt("qty");
         int cnt = 0;
         int num = 0;
         int sum = 0;
         num = cnt * qty;
    	switch(rs.getString("elec_code")){
         case "1" : cnt = 800;
                  elec_code = "가정용"; break;
         case "2" : cnt = 900;
                  elec_code = "영업용"; break;
         case "3" : cnt = 1000;         
                  elec_code = "산업용"; break;
         case "4" : cnt = 600;
                 elec_code = "공공기관용"; break;
         }
       out.print("<tr>");
       out.print("<td>"+rs.getInt("custcode")+"</td>");
       out.print("<td>"+rs.getString("irum")+"</td>");
       out.print("<td>"+elec_code+"</td>");
       out.print("<td>"+rs.getInt("qty")+"</td>");
       out.print("<td>"+cnt+"</td>");
       out.print("<td>"+"</td>");
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
</body>
</html>