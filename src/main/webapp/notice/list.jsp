<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>notice/list.jsp</title>
<style type="text/css">
* {
	font-family: gulim;
	font-size: 24px;
}
</style>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="title">공지사항 목록</div>
	<table>
		<tr>
			<th>번호</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>

		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.noticeno }</td>
				<td><a href="./read.do?noticeno=${dto.noticeno }">${dto.title }</a></td>
				<td>${dto.rname }</td>
				<td>${dto.rdate }</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="bottom">
		<input type="button" value="등록" onclick="location.href='./create.do'">
	</div>
</body>
</html>