<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>media/updateForm.jsp</title>
<style type="text/css">
*{
  font-family: gulim;
  font-size: 20px;
}
</style>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class='title'>공지사항 수정</div>
<form method="post" action="./update.do">
    <input type='hidden' name='noticeno' value='${dto.noticeno }'>
    <table align='center' border='1px' cellspacing='0px' cellpadding='5px'>
    <tr>
      <th>내용</th>
      <td><textarea rows="3" cols="30" name="title" maxlength="300">${dto.title }</textarea></td>    
    </tr>
    <tr>
      <th>작성자</th>
      <td><input type='text' name='rname' size='20' value='${dto.rname }'></td>    
    </tr>
  </table>    

  <div class='bottom'>
    <input type='submit' value='수정'>
    <input type='button' value='목록' onclick="location.href='./list.do'">
    <!-- <input type='button' value='HOME'     onclick="location.href='../mediagroup/list.do'"> -->
  </div>
</form>
</body>
</html>
