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
		<h2>����</h2>
		<tr>
		<form action="/update" method="post">
		<input type="hidden" name="idx" value="${list.idx} ">
		���� : <input type="text" name="title" value="${list.title}">
		���� : <textarea cols=30 rows=5 name=contents>${list.contents}</textarea>
	    <input type="hidden" value="${list.writer} ">

		<button type="submit">Ȯ��</button>
</table>
</form>
</body>
</html>