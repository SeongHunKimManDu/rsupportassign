<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
</head>
<body>
	<center>
		<h1>공지사항 상세보기</h1>
		<hr>
		<form action="updateBoard" method="post">
			<input name="seq" type="hidden" value="${board.seq }">
			<table border="1">
				<tr>
					<td width="150">제목</td>
					<td align="left"><input name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left">${board.writer }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td align="left"><textarea name="content" cols="40" rows="10">${board.content }</textarea></td>
				</tr>
				<tr>
					<td>등록일</td>
					<td align="left"><fmt:formatDate value="${board.createDate }"
							pattern="yyyy-MM-dd"></fmt:formatDate></td>
				</tr>
				<tr>
					<td>최종 수정일</td>
					<td align="left"><fmt:formatDate value="${board.updateDate }"
							pattern="yyyy-MM-dd"></fmt:formatDate></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="공지 수정" /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard">새 공지 등록</a>&nbsp;&nbsp;&nbsp; <a
			href="deleteBoard?seq=${board.seq }">공지 삭제</a>&nbsp;&nbsp;&nbsp; <a
			href="getBoardList">공지 목록</a>
	</center>
</body>
</html>