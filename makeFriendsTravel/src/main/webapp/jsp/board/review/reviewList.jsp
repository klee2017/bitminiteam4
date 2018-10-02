<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:import url="/html/main/topMenu.jsp"></c:import>
<%
	List<String> idList = (List<String>)request.getAttribute("idList");
	int i=0;
%>
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
	#board-search-form {
		width: 700px;
		float: right;
	}
	#board-search {
		width: 300px;
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
		        <c:forEach var="b" items="${list}">
		        	<tr>
		        		<td>${b.no}</td>
		        		<td><a href="detail.do?no=${b.no}&memNo=${b.memNo}">${b.title}</a></td>
		        		<td><%= idList.get(i++) %></td>
		        		<td><fmt:formatDate value="${b.modDate}" pattern="yyyy/MM/dd"/></td>
		        	</tr>
		        </c:forEach>
		    </tbody>
		</table>
    
 	<c:choose>
 		<c:when test="${empty user.id}">
		    <a id="write" href="#">글쓰기</a> 			
 		</c:when>
 		<c:otherwise>
		    <a id="write" href="reviewWriteForm.jsp">글쓰기</a> 			
 		</c:otherwise>
 	</c:choose>
    
    
    
    <div id="div-board-search">
	    <form action="" method="get" id="board-search-form">
		    <input type="text" id="board-search" placeholder="검색어를 입력하세요">
		    <button type="submit">검색</button>
	    </form>
    </div>

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