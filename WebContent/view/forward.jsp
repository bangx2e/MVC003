<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>    
<% MemberVO vo = (MemberVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%=vo.getName() %>
나이 : <%=vo.getAge() %>
이메일 : <%=vo.getEmail() %>
</body>
</html>