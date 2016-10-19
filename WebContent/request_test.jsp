<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language=javascript>
	document.cookie = "test=ok."
</script>
</head>
<body>
<centet>
	<h2>request 테스트</h2>
	<hr>
	<form name=form method=post action=request_result.jsp>
	<table border=1 cellspacing="1" cellpadding="5">
	<tr>
		<td>이름</td>
		<td><input type=text size=10 name=name></td>
	<tr>
		<td>직업</td>
		<td>
		<select name=job>
			<option selected>무직</option>
			<option>회사원</option>
			<option>학생</option>
		</select>
		</td>
	<tr>
		<td>관심분야</td>
		<td>
			<input type=checkbox name=good value="1">1</input>
			<input type=checkbox name=good value="2">2</input>
			<input type=checkbox name=good value="3">3</input>
			<input type=checkbox name=good value="4">4</input>
		</td>
	<tr>
		<td colspan=2 align=center>
			<input type=submit value="확인" >
			<input type=reset value="취소" >
		</td>
	</table>
	</form>
</centet>
</body>
</html>