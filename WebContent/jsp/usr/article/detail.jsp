<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>

<%@ page import="com.sbs.example.jspCommunity.dto.Article"%>
<%
Article article = (Article) request.getAttribute("article");
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시물 상세 페이지</title>
</head>
<body>
	<h1>게시물 상세 페이지</h1>

	<div>
		번호 :
		<%=article.id%>
		<br />
		작성날짜 :
		<%=article.regDate%>
		<br />
		수정날짜 :
		<%=article.updateDate%>
		<br />
		작성자 :
		<%=article.extra__writer%>
		<br />
		제목 :
		<%=article.title%>
		<hr />
		내용 :
		<%=article.body%>
		
	</div>

</body>
</html>