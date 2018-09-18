<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>REVIEW LIST</title>
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
	#board-name {
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
	#board-search{
		width: 300px;
		margin: auto;
	}
	#board-search-form {
		float: right;
	}
</style>
</head>
<body>
	<br>
	<h1 id="board-name">REVIEW</h1>
	<hr>
	<div id="board-list">
		<table id="table_id" class="display">
		    <thead>
		        <tr>
		            <th id="no">글 번호</th>
		            <th id="title">글 제목</th>
		            <th id="writer">작성자</th>
		            <th id="reg_date">작성일</th>
		        </tr>
		    </thead>
		    <tbody>
		        <tr>
		            <td>3</td>
		            <td>안녕하세요. 제가 글 제목을 길게 써보겠습니다. 옛날 옛적에 호랑이가 한마리 살았다는데</td>
		            <td>접니다</td>
		            <td>2018/09/18</td>
		        </tr>
		        <tr>
		            <td>2</td>
		            <td>김수한무거북이와두루미그다음은 모르는데 뭐였더라</td>
		            <td>미래에서 온 사람</td>
		            <td>2020/04/28</td>
		        </tr>
		        <tr>
		            <td>1</td>
		            <td>난 너를 믿었던만큼 내 친구도 믿었기에 내 친구를 소개시켜줫꼬 그런 날들이</td>
		            <td>김건모</td>
		            <td>1997/01/01</td>
		        </tr>
		    </tbody>
		</table>
    
    <a id="write" href="reviewWriteForm.jsp">글쓰기</a>
    <form action="" method="get" id="board-search-form"></form>
	    <input type="text" id="board-search" placeholder="검색어를 입력하세요">
	    <button type="submit">검색</button>
    </form>

    </div>

<script>
	/*
	var lang_kor = {
        "decimal" : "",
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 명)",
        "infoEmpty" : "0명",
        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
        "infoPostFix" : "",
        "thousands" : ",",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "loadingRecords" : "로딩중...",
        "processing" : "처리중...",
        "search" : "검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        },
        "aria" : {
            "sortAscending" : " :  오름차순 정렬",
            "sortDescending" : " :  내림차순 정렬"
        }
    };
    */

$(document).ready( function () {
    $('#table_id').DataTable();
/*    $('#table_id').DataTable({
    	data: dataSet,
    	columns: col_kor,
        language : lang_kor
    }); */
} );
</script>
</body>
</html>