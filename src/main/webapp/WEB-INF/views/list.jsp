<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<body>
<table border=1>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
	</tr>
	<c:forEach items="${list}" var="item" varStatus="status" begin="0" end="10" step="1">
	<tr>
		<td>${status.index+1}</td>
		<td><a href="/detail/${item.idx}">${item.title}</a></td>
		<td>${item.writer}</td>
	</tr>
	</c:forEach>
	<tr>
		<div>
			<a href="write.do">글쓰기</a>
		</div>
	</tr>
</table>
</body>
</html>