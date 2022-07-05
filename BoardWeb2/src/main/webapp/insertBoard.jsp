<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h1, h3 { text-align: center; }
	table{ margin : 0 auto; }
	div { text-align: center; }
</style>
</head>
<body>
<h1>글 등록</h1>
<div>
</div>
<hr>
<form action="insertBoard.do" method="post">
	<table border="1">
		<tr>
			<td bgcolor="orange" width="70">제목</td>
			<td align="left"><input type="text" name="title"></td>
		</tr>
		<tr>
			<td bgcolor="orange">작성자</td>
			<td align="left"><input type="text" name="writer"></td>
		</tr>
		<tr>
			<td bgcolor="orange">내용</td>
			<td><textarea cols="40" rows="10" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글 추가">
			</td>
		</tr>
	</table>
</form>
<hr>
<div>
	<a href="getBoardList.do">글 목록 가기</a>
</div>
</body>
</html>