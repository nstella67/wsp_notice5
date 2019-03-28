<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>notice/read.jsp</title>
  <style type="text/css">
  *{
    font-family: gulim;
    font-size: 20px;
  }
  </style>
  <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
  <div class='title'>${dto.noticeno }번 공지사항</div>

  <div class='content'>
  	<table>
  	<tr>
  		<th>내용</th>
  		<td>${dto.title }</td>
  	</tr>
  	<tr>
  		<th>작성자</th>
  		<td>${dto.rname }</td>
  	</tr>
  	<tr>
  		<th>작성일</th>
  		<td>${dto.rdate }</td>
  	</tr>
  	<tr>
  	</tr>
  	</table>
  </div>

  <div class='bottom'>
    <input type='button' value='목록' onclick="location.href='./list.do'">
    <input type='button' value='수정' onclick="location.href='./update.do?noticeno=${dto.noticeno}'">
    <input type='button' value='삭제' onclick="location.href='./delete.do?noticeno=${dto.noticeno}'">
  </div>
</body>
</html>
