<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style >
table.type10 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
}
table.type10 thead th {
    width: 300px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background: skyblue;
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
    background: cornsilk;
}
table.type10 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}
button{
	margin-left: 1235px;
	background: cornsilk;
	}

</style>
</head>
<body>

<h1>Q&A</h1>
<hr>
<table class="type10">
    <thead>
    <tr>
    	<th scope="cols">글번호</th>
        <th scope="cols">작성자</th>
        <th scope="cols">제목</th>
        <th scope="cols">작성일</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    	<th>3</th>
        <th>개구리</th>
        <th>내용이 들어갑니다.</th>
        <th>5:02pm</th>
    </tr>
    <tr>
    	<th>2</th>
        <th>도마뱀</th>
        <th>내용이 들어갑니다.</th>
        <th>5월4일</th>
    </tr>
    <tr>
    	<th>1</th>
        <th>강아지</th>
        <th>내용이 들어갑니다.</th>
        <th>3월2일</th>
    </tr>
    <div>
    	<button>글쓰기</button>
    </div>
	</tbody>
</table>
</body>
</html>