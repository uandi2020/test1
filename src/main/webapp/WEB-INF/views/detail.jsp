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
			<td>���� : <input type="text" name="title" value="${list.title}"></td>
			<td>�ۼ��� : <input type="text" name="writer"  value="${list.writer}"></td>
			<td>���� : <textarea rows="5" cols="20" name="contents" value="${list.contents}"></textarea>
		</tr>
		<button type="submit">�����ϱ�</button>
		<a href="/delete/${list.idx} ">�����ϱ�</a>
</table>
</form>
</body>
</html>