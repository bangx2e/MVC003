<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<String> list = new ArrayList<String>();
	list.add("Java");
	list.add("C++");
	list.add("Phython");
	list.add("JS");
	request.setAttribute("list", list);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="sw" items="${list}">
		${sw}<br>
	</c:forEach>
</body>
</html>