<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String data = (String) request.getAttribute("data");
	String data1 = request.getParameter("data");
	System.out.println(data1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Controller에서 받은 값을 출력 (send redirect의 set attribute):
	<%=data%>
	<br> request를 겟방식으로 에서 받은 값을 출력 :
	<%=data1%>

</body>
</html>