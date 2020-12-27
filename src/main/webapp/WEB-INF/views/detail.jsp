<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="/update" method="post">
<table>
		<tr>
			<input type="hidden" name="idx" value="${list.idx}">
			<td>제목 : <input type="text" name="title" value="${list.title}"></td>
			<td>작성자 : <input type="text" name="writer"  value="${list.writer}"></td>
			<td>내용 : <textarea rows="5" cols="20" name="contents" value="${list.contents}"></textarea>
		</tr>
		<button type="submit">수정하기</button>
		<a href="/delete/${list.idx} ">삭제하기</a>
</table>
</form>
</body>
</html>