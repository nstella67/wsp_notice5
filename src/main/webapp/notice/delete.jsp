<%@ page contentType="text/html; charset=UTF-8" %> 
<!DOCTYPE html> 
<html> 
<head> 
  <meta charset="UTF-8"> 
  <title>media/deleteForm.jsp</title> 
  <style type="text/css"> 
  *{ 
    font-family: gulim; 
    font-size: 24px; 
  } 
  </style> 
  <link href="../css/style.css" rel="stylesheet" type="text/css">
</head> 
<body>
  <div class="title">공지사항 삭제</div>
  
  <form method="post" action="./delete.do">
	<input type="hidden" name="noticeno" value="${dto.noticeno }">
	
	<div class="content">
		<p>삭제하시겠습니까?</p>
	</div>
	
	<div class="bottom">
		<input type="submit" value="삭제진행">
		<input type="button" value="목록" onclick="location.href='./list.do'">
	</div>
  </form>

</body> 
</html> 
