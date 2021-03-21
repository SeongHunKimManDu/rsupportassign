<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<center>
		<h1>공지사항 목록</h1>

		<table border="1" width="700">
			<tr>
				<th width="200">제목</th>
				<th width="230">내용</th>
				<th width="70">작성자</th>
				<th width="100">작성일</th>
				<th width="100">최종 수정일</th>
			</tr>
			<c:forEach var="board" items = "${boardList }">
				<tr>
					<td><a href="getBoard?seq=${board.seq}">${board.title}</a></td>
					<td>${board.content }</td>
					<td>${board.writer }</td>
					<td><fmt:formatDate value="${board.createDate }" pattern = "yyyy-MM-dd"></fmt:formatDate></td>
					<td><fmt:formatDate value="${board.updateDate }" pattern = "yyyy-MM-dd"></fmt:formatDate></td>
			</c:forEach>
			
			
		</table>
		<br>
		<a href = "insertBoard">새글 등록</a>
</body>
</html>