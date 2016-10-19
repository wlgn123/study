<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>세션 예제</h2>
<hr>
<%
	if(session.isNew()){
		out.println("<script>alert('세션해제되어 다시설정')</script>");
		session.setAttribute("login", "홍길동");
	}
%>
<%= session.getAttribute("login") %> 님환영합니다. !!<br>
<%= session.getId() %><br>
<%= session.getMaxInactiveInterval() %><BR>
</center>
</body>
</html>