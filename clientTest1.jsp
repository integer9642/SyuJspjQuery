<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center><h2>회원 로그인 정보</h2>
<form name="frm" method=post action="processTest01.jsp">
<table border=1>
<tr><td>아 이 디<td align=center size=20> <input type=text name="id"></tr> </td>
<tr><td>비밀번호<td align=center size=20> <input type=password name="pwd"></tr> </td>
<tr><td>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름<td align=center size=20> <input type=text
name="name"></tr> </td>
<tr><td>연 락 처<td align=center size=20><input type=text name="tel"></tr> </td>
<tr><td colspan=2 align=center><input type="submit" value="전송"> &nbsp; &nbsp; <input
type="reset" value="취소"></td></tr>
</form>
</center></table>
</body>
</html>