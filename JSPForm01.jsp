<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b><h3>getParameterValues 연습</h3></b>
<form name="frm" method = post action="JSPView01.jsp">
당신의 취미를 선택하세요 <br>
<input type="checkbox" name="hobby" value="등산">등산
<input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="게임">게임
<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="음악감상">음악감상
<input type="checkbox" name="hobby" value="영화감상">영화감상
<p><p>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="전송">&nbsp;&nbsp;<input type="reset" value="취소
">

</form>
</body>
</html>