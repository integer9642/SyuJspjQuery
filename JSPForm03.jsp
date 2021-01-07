<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>성적 총점 구하기</h2>
<form name="frm" method=post action="JSPView03.jsp">
이름 : <input type = "text"  name="name" size="10" maxlength="10" required><br>
학번 : <input type = "text"  name="password" size="10" maxlength="10" required><br>
국어 : <input type = "number"  name="kor" size="5" min="0" max="100"><br>
영어 : <input type = "number"  name="eng" size="5" min="0" max="100"><br>
전산 : <input type = "number"  name="com" size="5" min="0" max="100"><br>
<input type ="submit" value="신청">&nbsp;&nbsp;<input type="reset" value="취소">
</form>
</body>
</html>