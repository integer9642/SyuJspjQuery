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
String pum="초코파이";
int danga=3000;
int qty=50;
int price;
price=danga*qty;
out.println("상품 품명 : "+pum+", <br> 단가 : "+danga+"원, 수량 : "+qty+"개, <br> 금액 : "+price+"원 입니다.");
%>
</body>
</html>