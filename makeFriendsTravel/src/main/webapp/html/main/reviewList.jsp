<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<style>
</style>
</head>
<body>
 
 	<div style="padding-left: 0;" class="col-md-4">
 		<table id="table_id" class="display">
		    <thead>
		        <tr>
		            <th>Column 1</th>
		            <th>Column 2</th>
		        </tr>
		    </thead>
	    <tbody>
	        <tr>
	            <td>Row 1 Data 1</td>
	            <td>Row 1 Data 2</td>
	        </tr>
	        <tr>
	            <td>Row 2 Data 1</td>
	            <td>Row 2 Data 2</td>
	        </tr>
	    </tbody>
</table>
 	
 	</div>
 

	
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>
</body>
</html>