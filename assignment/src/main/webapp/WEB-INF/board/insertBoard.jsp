<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사함 등록</title>
</head>
<body>
<center>
<h3>공지사항 등록하기</h3>
<hr>
<form action="insertBoard" method="post">
<table border="1">
	<tr>
		<td width="150">공지사항 제목</td><td align="left">
		<input type="text" name="title"/></td>
	</tr>
	<tr>
		<td>작성자</td><td align="left">
		<input type="text" name="writer" size="10"/></td>
	</tr>
	<tr>
		<td>내용</td><td align="left">
		<textarea name="content" cols="40" rows="10"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value=" 새 공지 등록 "/></td>
	</tr>
</table>
</form>
<hr>
</center>
</body>
</html>