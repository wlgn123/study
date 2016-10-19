<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>request 결과 -1</h2>
<hr>
<table>
	<tr>
		<td>이름</td>
		<td><%= request.getParameter("name") %></td>
	<tr>
		<td>직업</td>
		<td><%= request.getParameter("job") %></td>
	<tr>
		<td>관심분야</td>
		<td><% String goods[] = request.getParameterValues("good");
			for(String good : goods)
				out.println(good + "<br>");
			%></td>
</table>
<hr>
<h2>request 테스트결과 -2</h2>
<table border=0>
	<tr>
		<td>
			클라이언트 ip_주소 <%= request.getRemoteAddr() %>
			겟 호스트 <%= request.getRemoteHost() %>
			요청 메소드 <%= request.getMethod() %>
			쿠키
			<%
				Cookie cookie[] = request.getCookies();
			%>
			<%= cookie[1].getName() %>에 설정된값
			<%= cookie[1].getValue().toString() %><br>
			<%= request.getProtocol() %>
		</td>
</table>
</center>
</body>
</html>