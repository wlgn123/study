<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");

	session.setAttribute("user", request.getParameter("username"));
%>
<center>
	<h2>상품선택</h2>
	<hr>
	<%= session.getAttribute("user") %>님이 로그인한 상태입니다.
	<hr>
	<form name="form1" method="post" action="add.jsp">
		<select name="product">
			<option selected>사과</option>
			<option selected>배</option>
			<option selected>귤</option>
			<option selected>파인에플</option>
		</select>
		<input type="submit" value="추가" />
	</form>
	<a href="checkOut.jsp">계산</a>
</center>
</body>
</html>