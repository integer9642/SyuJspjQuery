<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신상정보 업데이트 입력 폼</title>
</head>
<body>
<center><h2>신상정보 업데이트 입력 폼</h2></center>
<form action="updateSinsang.jsp" method="action">
<table>
<tr>
<td>사번</td><td><input type="text" name="sabun" size="20"></td>
<tr>
<td>학과</td><td><input type="text" name="hakkwa" size="20"></td>
<tr>
<td>국어</td><td><input type="number" name="kor" size="12"></td>
<tr>
<td>영어</td><td><input type="text" name="eng" size="12"></td>
<tr>
<td>전산</td><td><input type="text" name="com" size="12"></td>
<tr>
<td><input type="submit" value="갱신 전송(Send)"></td>
<td><input type="reset" value="갱신 취소(Cancel)"></td>
</tr>
</table>
</form>
</body>
</html>