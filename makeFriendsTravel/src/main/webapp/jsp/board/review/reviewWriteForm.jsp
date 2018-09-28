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
	
	<!-- include summernote-ko-KR --> <script src="lang/summernote-ko-KR.js"></script>

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
	<form method="post" action="<c:url value='/jsp/board/review/write.do' />">
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
		  	  },
			  lang: 'ko-KR'
			});
		});
		
		function sendFile(file, el) {
		      var form_data = new FormData();
		      form_data.append('file', file);
		      $.ajax({
		        data: form_data,
		        type: "POST",
		        url: '/image',
		        cache: false,
		        contentType: false,
		        enctype: 'multipart/form-data',
		        processData: false,
		        success: function(url) {
		          $(el).summernote('editor.insertImage', url);
		          $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
		        }
		      });
		    }

	</script>
</body>
</html>