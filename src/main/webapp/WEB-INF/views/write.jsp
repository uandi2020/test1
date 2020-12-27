<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="write.do" method="post">
<table>
		<tr>
			<td>제목 : <input type="text" name="title"></td>
			<td>작성자 : <input type="text" name="writer"></td>
			<td>내용 : <textarea rows="5" cols="20" name="contents"></textarea>
		</tr>
		<button type="submit">확인</button>
</table>
</form>



</body>
</html>