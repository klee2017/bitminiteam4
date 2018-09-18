<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Q&A LIST</title>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<style>
	body{
		background: lightsteelblue;
		
	}
	#board-list {
		max-width: 1000px;
		margin: auto;
		padding-top: 50px;
	}
	#table_id_filter {
		display: none;
	}
	.dataTables_wrapper .dataTables_length {
		float: right;
	}
	.dataTables_info {
		display:none;
	}
	h1{
		text-align: center;
	}
	#no{
		width:10%;
	}
	#writer{
		width:20%;
	}
	#title{
		width:50%;
	}
	#search{
		width: 300px;
	}
	#qnasearchform{
		width:700px;
		float: right;
	}
</style>
</head>
<body>
	<br>
	<h1>Q&A</h1>
	<hr>
	<div id="board-list">
		<table id="table_id" class="display">
	    <thead>
	        <tr>
	            <th id="no">글번호</th>
	            <th id="writer">작성자</th>
	            <th id="title">제목</th>
	            <th id="reg_date">작성일자</th>
	        </tr>
	    </thead>
	    <tbody>
	        <tr>
	            <td>1</td>
	            <td>파이리</td>
	            <td>물대포발사</td>
	            <td>18-01-16</td>
	        </tr>
	        <tr>
	            <td>2</td>
	            <td>꼬부기</td>
	            <td>불대포발사</td>
	            <td>5:11pm</td>
	        </tr>
	    </tbody>
    </div>
</table>

	<div>
	    <a href="Q&AWrite.jsp">글쓰기</a>
	    <form action="" method="get" id="qnasearchform">
	    <input type="text" id="search" placeholder="검색어를 입력하세요">
	    <button>검색</button>
	    </form>
	</div>
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
</body>
</html>