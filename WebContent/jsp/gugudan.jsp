<%@ page language="java" contentType="text/html; 
charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int dan = 3;

if (request.getParameter("dan") != null) {
	dan = 
Integer.parseInt(request.getParameter("dan"));
}

int limit = 9;

if (request.getParameter("limit") != null) {
	limit = 
Integer.parseInt(request.getParameter("limit"));
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>구구단
	<%=dan%></title>
</head>
<body>
	<hi>구구단 <%=dan%>단</hi>
	<%
	for (int i = 1; i <= limit; i++) {
	%>
	<div><%=dan%>
		*
		<%=i%>
		=
		<%=dan * i%></div>
	<%
	}
	%>
</body>
</html>