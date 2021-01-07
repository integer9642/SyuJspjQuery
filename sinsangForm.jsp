<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>신상정보 입력 Form</h2>
<form action="insertIntoSinsang.jsp" method="post">
<table >
<tr>
<td>사번 </td> <td><input type="text" name="sabun" size="20"></td>
</tr>
<tr>
<td>학과 </td><td><input type="text" name="hakkwa" size="20"></td>
</tr>
<tr>
<td>국어 </td><td><input type="text" name="kor" size="12"></td>
</tr>
<tr>
<td>영어 </td><td><input type="text" name="eng" size="12"></td>
</tr>
<tr>
<td>전산 </td><td><input type="text" name="com" size="12"></td>
</tr>
<tr>
<td><input type="Submit" value="전송(Send)" ></td>
<td><input type="Reset" value="취소(Cancel)" ></td>
</tr>
</table>
</form>
</body>
</html>