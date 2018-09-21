<%@page import="kr.co.tt.repository.domain.Board"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.tt.common.db.MyAppSqlConfig"%>
<%@page import="kr.co.tt.repository.mapper.BoardMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BoardMapper mapper = 
MyAppSqlConfig.getSqlSessionInstance().getMapper(BoardMapper.class);
// 데이터베이스 게시물 목록 가져오기~

List<Board> list2 = mapper.selectBoard();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시물 목록 표현하기 -->
	<h2>자유게시판</h2>
	<hr>
	<table>
	<tr>
		<th>번호</th><th>제목</th><th>글쓴이</th><th>작성일</th>
	</tr>
	<%
	for (Board b : list2) {
	%>
	<tr>
		<td><%= b.getNo() %></td>
		<td><%= b.getTitle() %></td>
		<td><%= b.getWriter() %></td>
		<td><%= b.getRegDate() %></td>
	</tr>
	<%
	}
	%>
	</table>
	
</body>
</html>












