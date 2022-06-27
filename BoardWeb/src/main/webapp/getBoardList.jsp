<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	h1, h3 { text-align: center;}
	table{ margin : 0 auto;}
</style>
</head>
<body>
<h1>�� ���</h1>
<h3>�׽�Ʈ�� ȯ���մϴ�... <a href="logout_proc.jsp">Log-out</a></h3>

<div>
<form action="getBoardList.jsp" method="post">
	<table border="1" style="width: 700px;">
		<tr>
			<td align="right">
				<select name="searchCondition">
				<option value="TITLE">����
				<option value="CONTENT">����
				</select>
				<input type="text" name="searchKeyword">
				<input type="submit" value="�˻�">
			</td>
		</tr>
	</table>
</form>

<table border="1" style="width: 700px">
	<tr>
		<th bgcolor="orange" width="100">��ȣ</th>
		<th bgcolor="orange" width="200">����</th>
		<th bgcolor="orange" width="150">�ۼ���</th>
		<th bgcolor="orange" width="150">�����</th>
		<th bgcolor="orange" width="100">��ȸ��</th>
	</tr>
	<% for(BoardVO board : boardList) { %>
	<tr>
		<td><%= board.getSeq() %></td>
		<td><a href="getBoard.jsp?seq=<%= board.getSeq() %>">
		<%= board.getTitle() %></a></td>
		<td><%= board.getWriter() %></td>
		<td><%= board.getRegDate() %></td>
		<td><%= board.getCnt() %></td>
	</tr>
	<% } %>
</table>
<br>
<div style="text-align: center;">
	<a href="insertBoard.jsp">���� ���</a>
</div>
</div>
</body>
</html>