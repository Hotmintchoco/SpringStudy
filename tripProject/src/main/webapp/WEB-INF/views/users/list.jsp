<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List 화면</h1>
	<table class="table">
		<thead>
			<tr>
				<th>회원번호</th>
				<th>회원아이디</th>
				<th>회원이름</th>
				<th>비밀번호</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="board">
				<tr>
					<td><c:out value="${board.userNum }"/></td>
					<td><c:out value="${board.userId }"/></td>
					<td><c:out value="${board.userName }"/></td>
					<td><c:out value="${board.userPass }"/></td>
					<td><c:out value="${board.gender }"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>