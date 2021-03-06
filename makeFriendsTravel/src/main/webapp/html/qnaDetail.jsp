<%@page import="kr.co.tt.repository.domain.QnAComment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@page import="kr.co.tt.repository.domain.QnABoard" %>
<%@page import="kr.co.tt.repository.domain.QnAComment" %>
<%
List<String> commentIdList = (List<String>)request.getAttribute("commentIdList");
int i=0;
%>

<c:import url="./main/topMenu.jsp"></c:import>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&AWrite</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magicsuggest/2.1.4/magicsuggest-min.css"/>

<style>
hr{
	height:1px;
	background: grey;
}

.post-form {
  padding: 10px;
  box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.6);
  margin-top: 10px;
  position: relative;
}
.page-title {
  margin: 0.5em 0;
  color: #555;
}
.post-section {
  margin: 0 -10px;
  padding: 5px 10px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.2);
}
.post-section.editor-title {
  margin-top: -10px;
}
.post-section.post-buttons {
  border-bottom: none;
  margin-top: 10px;
  text-align: right;
}
.post-input {
  display: block;
  width: 100%;
  border: 0;
  outline: 0;
  font-family: sans-serif;
  margin: 0.25em 0;
}
.post-input.large {
  font-size: 24px;
  font-weight: 600;
}
.post-media-inner {
  display: flex;
  flex-wrap: wrap;
}
.post-media-icon {
  width: 150px;
  height: 150px;
  margin: 10px;
  position: relative;
}
@media screen and (max-width: 768px) {
  .post-media-icon {
    width: 80px;
    height: 80px;
  }
}
.add-media {
  outline: none;
  cursor: pointer;
}
.delete-media {
  position: absolute;
  top: -1px;
  right: -1px;
  width: 24px;
  height: 24px;
  border-top-left-radius: 0;
  border-bottom-right-radius: 0;
  opacity: 0;
  transition: 0.2s;
}
.post-media-icon.thumbnail:hover > .delete-media {
  opacity: 1;
  transition: 0.15s;
}

.post-form-backdrop {
  background-color: rgba(0, 0, 0, 0.5);
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 100;
}
.post-form-backdrop.closed {
  display: none;
}
.post-form-overlay.open {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  min-height: 200px;
  max-height: 80%;
  z-index: 102;
  background-color: #fff;
  padding: 10px;
  opacity: 1;
  transition: 0.2s;
}
.post-form-overlay.closed {
  display: none;
}
h1{
	text-align: center;
}

.QnaTitle::placeholder {
 color: red;
 font-style: italic;
}
.QnaContent::placeholder {
  color: blue;
  font-weight: bold;
  width:800px;
}
#comment-title{
	text-align: left;
}
#comList{
	text-align: left;
}
#regCom{
	margin-left: 40px;
}


</style>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magicsuggest/2.1.4/magicsuggest-min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>
<body>

<h1>Q&A</h1>
<hr>
<div class="container">
  <div class="post-form">
    <div class="post-form-backdrop closed"></div>
    <div class="post-section post-tagged-people">
      <div class="form-group">
        <label for="people-entry">작성일<fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd"/></label>
        <span><strong></strong></span>
        <div id="people-entry"></div>
      </div>
    </div>
    <br>
    <form id="write" action="/makeFriendsTravel/html/qnaUpate.do">
	    <div class="post-section">
	      <input type="hidden" name="no" value="${board.no}"/>
	      <input type="hidden" name="memNo" value="${board.memNo}"/>
	      <label for="post-title"></label>
	      <span><strong>작성자${id}</strong></span>
	      <br>
	      <hr id="titleline">
	      <div class="post-title">
	        <p id="pTitle"><strong>제목</strong>${board.title}</p>
	      </div>
	      <br>
	      <div class="post-content">
	        <p id="pContent">${board.content}</p>
	      </div>
	    </div>
    </form>


	
    <div class="post-section post-buttons">
	  <c:choose> 
	  	<c:when test="${id == user.id}">
		  <button id="deleteBtn" class="btn btn-delete"><a href="qnaDelete.do?no=${board.no}">삭제</a></button>
	  	</c:when>
	  </c:choose>
	  	
      <button type="button" class="btn btn-primary"><a href="qnaList.do">목록</a></button>

      <c:choose>
      	<c:when test="${id == user.id}">
      	  <button id ="updateBtn" class="btn btn-success">수정</button>
      	</c:when>
      	<c:otherwise>
      	</c:otherwise>
      </c:choose>

		<br>
		<br>
		<div id="comment-title"><strong>댓글</strong></div>
		<hr>
			<form action="registComment.do" method="post">
			<table>
				<input type="hidden" name="no" value="${board.no}"/>
				<input type="hidden" name="memNo" value="${user.no}"/>				
				<tr>
					<td>
						<textarea rows="5" cols="130" id="comContent" name="commentContent"></textarea>
					</td>
					
					<td>
						<button type="submit" id="regCom">등록</button>
					</td>
				</tr>
			</table>
			</form>
			<br>
			
			<c:forEach var="c" items="${commentList}">
				<div id="comList">
					<hr>
					<div id="comId"><strong><%=commentIdList.get(i++) %></strong></div>
					<div id="comContent"><c:out value="${c.commentContent}"/></div>
				</div>
			</c:forEach>
			
			<hr>
      </div>
    </div>
   
    
  </div>
<script>
	function al() {
		alert("수정 할 수  없습니다.")
	}
	
	
	$("#updateBtn").click(function(){ 
		if(this.id!="updateBtn"){

			  if($.trim($("#title1").val())==''){
				  alert("수정할 제목을 입력하세요")
				  return;
			  } else if($.trim($("#content1").val())=='') {
				  alert("수정할 내용을 입력하세요")
				  return;	  
			  } else {
				 $("#write").submit();
				return;				
				  
			  }
		};
		
		
		var title = $("#pTitle");
		var content = $("#pContent")
		var btnChange = $(this);
		
		title.remove();
		content.remove();
		
		var input = "<textarea name='title' id='title1' rows='1' cols='140'></textarea>"
		var textArea ="<textarea name='content' id='content1' rows='30' cols='148'></textarea>" 
		
		$('.post-title').append(input);
		$('.post-content').append(textArea);
		
		 btnChange.addClass("change")
		 this.id="changeBtn";
		 return;
	})
	
</script>


</body>
</html>