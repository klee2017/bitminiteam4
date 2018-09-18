<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>REVIEW LIST</title>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<style>
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
</style>
</head>
<body>
	
	<div id="board-list">
		<table id="table_id" class="display">
	    <thead>
	        <tr>
	            <th>Column 1</th>
	            <th>Column 2</th>
	            <th>Column 3</th>
	            <th>Column 4</th>
	        </tr>
	    </thead>
	    <tbody>
	        <tr>
	            <td>Row 1 Data 1</td>
	            <td>Row 1 Data 2</td>
	            <td>Row 1 Data 3</td>
	            <td>Row 1 Data 4</td>
	        </tr>
	        <tr>
	            <td>Row 2 Data 1</td>
	            <td>Row 2 Data 2</td>
	            <td>Row 2 Data 3</td>
	            <td>Row 2 Data 4</td>
	        </tr>
	    </tbody>
    </div>
    
</table>
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
</body>
</html>