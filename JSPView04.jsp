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
<h3>상품 주문 현황 </h3><br>
<%
int price=0;
int amount=0;
double dis=0.0;
String pum=request.getParameter("pum");
String code=request.getParameter("code");
int unit=Integer.parseInt(request.getParameter("unit"));
int qty=Integer.parseInt(request.getParameter("qty"));
price=unit*qty;
if(qty>=100){
dis=price*0.1;
amount=(int)(price-dis);
}
price=unit*qty;
out.print("주문상품 : " + pum + "<br>");
out.print("상품코드 : " + code + " <br>");
out.print("단가 : " + unit+"<br>");
out.print("수량 : " + qty +"<br>");
out.print("금액 : " + price+ "<br>");
out.print("할인액 : " + dis +"<br>");
out.print("주문금액 : " + amount +"<br>");
%>

</body>
</html>