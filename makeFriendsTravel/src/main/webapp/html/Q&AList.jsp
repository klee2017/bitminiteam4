<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&AList</title>
<style>
table.type10 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
    backguound:
}

table.type10 thead th {
    width: 300px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background: #ed1c40;
    margin: 20px 10px;
    text-align: middle;
}
table.type10 tbody th {
    width: 150px;
    padding: 10px;
}
table.type10 tbody tr:hover{
    width: 150px;
    padding: 10px;
    background: rgba(237,28,64,.1);
}
table.type10 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}
hr{
	height:3px;
	background: black;
}

#write{
	left: 81%;
	background:rgba(237,28,64,.1);
	position: absolute;
	border: solid 2px;
	border-color:black;
	
	}
#write:hover{
	background: white;
}
#search{
	background: rgba(237,28,64,.1);
}
}

</style>
</head>
<body>

<h1>Q&A</h1>
<hr>
<table class="type10">
    <thead>
    <tr>
    	<th scope="cols" id="no">글번호</th>
        <th scope="cols" id="writer">작성자</th>
        <th scope="cols" id="title">제목</th>
        <th scope="cols" id="date">작성일</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    	<th>7</th>
        <th>개구리</th>
        <th>내용이 들어갑니다.</th>
        <th>5:02pm</th>
    </tr>
    <tr>
    	<th>6</th>
        <th>도마뱀</th>
        <th>내용이 들어갑니다.</th>
        <th>5월4일</th>
    </tr>
    <tr>
    	<th>5</th>
        <th>강아지</th>
        <th>내용이 들어갑니다.</th>
        <th>5월2일</th>
    </tr>
        <tr>
    	<th>4</th>
        <th>아저씨</th>
        <th>내용이 들어갑니다.</th>
        <th>4월2일</th>
    </tr>    <tr>
    	<th>3</th>
        <th>따오기</th>
        <th>내용이 들어갑니다.</th>
        <th>3월2일</th>
    </tr>    <tr>
    	<th>2</th>
        <th>노숙자</th>
        <th>내용이 들어갑니다.</th>
        <th>2월2일</th>
    </tr>    <tr>
    	<th>1</th>
        <th>직박구리</th>
        <th>내용이 들어갑니다.</th>
        <th>1월2일</th>
    </tr>
    
    </div>
	</tbody>
</table>
	<div>	
	<select id="sort">
		<option value="no">글번호</option>
		<option value="no">작성자</option>
		<option value="no">제목</option>
	</select>
		<input id="search" placeholder="게시물 검색...">
		<button id="searchbtn">검색</button>
		<button id="write">
			<a href="Q&AWrite.jsp">글쓰기</a>
		</button>
	</div>


</body>

</html>