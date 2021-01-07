<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPFormTest01 2017100909 류정수</title>
</head>
<body>
<form name="frm" method=post action="JSPViewTest01.jsp">
<b><h3>삼육 동아리 회원 가입</h3></b>
<br>
아이디 : <input type="text" name="id" size="10"><br>
비밀번호 : <input type="password" name="pwd" size="10" maxlengh="10" ><br>
<br>
이름 : <input type="text" name="name" size="10" ><br>
학번 : <input type="text" name="hakbun" size="10" ><br>
<br>
성별 : <input type="radio" name="sex" value="남">남
<input type="radio" name="sex" value="여">여 
<br>
<br>
희망 동아리: 복수 선택 가능<br>
<input type="checkbox" name="chk" value="축구">축구
<input type="checkbox" name="chk" value="농구">농구
<input type="checkbox" name="chk" value="배구">배구
<input type="checkbox" name="chk" value="탁구">탁구<br>
<input type="checkbox" name="chk" value="배드민턴">배드민턴
<input type="checkbox" name="chk" value="테니스">테니스
<input type="checkbox" name="chk" value="밸리댄스">밸리댄스
<br>
<br>
<input type="submit" value="신청">&nbsp;<input type="reset" value="취소"> 
</form>
</body>
</html>