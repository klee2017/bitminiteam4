<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="/html/main/topMenu.jsp"></c:import>


	<!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
	<!-- include summernote css/js -->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
	
	<style>
		.board-button {
			float: right;
		}
		
		#board-write-form {
			max-width: 1000px;
			margin: auto;
			padding-top: 50px;
		}
	</style>
</head>
<body>
	<div id="board-write-form">
	<form method="post" action="">
		<div id="title" name="title">
			<h4>제목 : <input type="text" /></h4>
		</div>
		<textarea id="summernote" name="editordata"></textarea>
	</form>
	<button class="board-button">수정</button>
	</div>
	
	<script>
		$(document).ready(function() {
		  $('#summernote').summernote();
		});
	</script>
</body>
</html>