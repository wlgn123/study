<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! 
		int num1,num2 = 0;
		int result =0;
		String op = "";
		
		public int cal(){
			if(op.equals("+"))
				result = num1+num2;
			else if(op.equals("-"))
				result = num1-num2;
			else if(op.equals("*"))
				result = num1*num2;
			else if(op.equals("/"))
				result = num1/num2;
			
			return result;
		}
	%>
	<%
		if(request.getMethod().equals("POST")){
			
			num1=Integer.parseInt(request.getParameter("num1"));
			num2=Integer.parseInt(request.getParameter("num2"));
			op = request.getParameter("op");
		}
	%>
	<form name=form1 method=post>
	<input type="text" name="num1" width=200 size="5">
	<select name="op">
		<option selected>+</option>
		<option>-</option>
		<option>*</option>
		<option>-</option>
	</select>
	<input type="text" name="num2" width=299 size="5">
	<input type="submit" value="계산" name="b1">
	<input type="reset" value="다시입력" name="b2">
	</form>
	<hr>계산결과 <%= cal() %>
</body>
</html>