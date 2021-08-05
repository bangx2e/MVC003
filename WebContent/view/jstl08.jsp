<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	MemberVO vo = new MemberVO();
	vo.setNum(1);
	vo.setId("아이디");
	vo.setPass("비밀번호");
	vo.setName("이름");
	vo.setEmail("왜 안나와@naver.com");
	List<MemberVO> list = new ArrayList<MemberVO>();
	list.add(vo);
	list.add(vo);
	list.add(vo);
	list.add(vo);
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비번</td>
			<td>메일</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.num}</td>
				<td>${vo.id}</td>
				<td>${vo.pass}</td>
				<td>${vo.email}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>