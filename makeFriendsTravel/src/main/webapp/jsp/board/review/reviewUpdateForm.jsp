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
	<form method="post" action="/makeFriendsTravel/jsp/board/review/update.do">
		<input type="hidden" name="no" value="${param.no}" />
		<div id="title">
			<h4>제목 : <input type="text" name="title" /></h4>
		</div>
		<textarea id="summernote" name="editordata"></textarea>
		<button class="board-button">등록</button>
	</form>
	</div>
	
	<script>
		$(document).ready(function() {
		  $('#summernote').summernote({
			  height: 300,                 // set editor height
			  minHeight: null,             // set minimum height of editor
			  maxHeight: null,             // set maximum height of editor
			  focus: false,                  // set focus to editable area after initializing summernote
			  callbacks: {
				  onImageUpload: function(files, editor, welEditable) {
					  for (var i = files.length - 1; i >= 0; i--) {
						  sendFile(files[i], this);
					  }
				  }
		  	  }
			});
		});
		
		function sendFile(file, editor) {
            // 파일 전송을 위한 폼생성
	 		data = new FormData();
	 	    data.append("uploadFile", file);
	 	    $.ajax({ // ajax를 통해 파일 업로드 처리
	 	        data : data,
	 	        type : "POST",
	 	        url : "/makeFriendsTravel/jsp/board/review/imgUpload.do",
	 	        cache : false,
	 	        contentType : false,
	 	        processData : false,
	 	        success : function(data) { // 처리가 성공할 경우
                    $(editor).summernote('editor.insertImage', data);
	 	        }
	 	    });
	 	}

	</script>
</body>
</html>