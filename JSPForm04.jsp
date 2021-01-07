<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>주문 상품 금액 구하기</h3>
<form name="sangpum method="post" action="JSPView04.jsp">
제품명: <input type="text" name="pum" size="20"> <br>
상품코드:<input type="text" name="code" size="20"> <br>
단가 : <input type="number" name="unit" size="10"> <br>
수량 : <input type="number" name="qty" size="10"> <br> <br>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="신청">&nbsp;&nbsp;
<input type="reset" value="취소">
</form>

</body>
</html>