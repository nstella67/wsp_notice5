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

	<c:if test="${!(empty requestScope.list) }">
		<br>	<!-- 검색시작 -->
		<table>
			<tr>
				<td colspan="6" style="text-align: center; height:50px;">
					<form method="get" action="search.do">
						<select name="col">
							<option value="title">내용
							<option value="rname">작성자
							<option value="title_rname">내용+작성자
						</select>
						<input type="text" name="word">
						<input type="submit" value="검색">
					</form>
				</td>
			</tr>
		</table>
	</c:if>
	
	
	<div class="bottom">
		<input type="button" value="등록" onclick="location.href='./create.do'">
	</div>
</body>
</html>