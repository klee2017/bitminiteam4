<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Locale" %>
<%

SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy.MM.dd", Locale.KOREA );
Date currentTime = new Date ();
String mTime = mSimpleDateFormat.format ( currentTime );
System.out.println ( mTime );

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
        <label for="people-entry">작성일</label>
        <span><strong><%=mTime %></strong></span>
        <div id="people-entry"></div>
      </div>
    </div>
    <br>
    <form id="write" name="write" action="/makeFriendsTravel/html/qnaWrite.do" method="get">
	    <div class="post-section">
	      <label for="post-title"></label>
	      <span><strong><input name="writerNo" type="hidden" value="${user.no}"/>${user.id}</strong></span>
	      <br>
	      <hr id="titleline">
	      <div class="post-title">
	        <input class="QnaTitle" type="text" name="title" id="post-title" class="post-input large"  placeholder="제목을 입력하세요"/>
	      </div>
	      <br>
	      <div class="post-content">
	        <textarea class="QnaContent" name="content" class="post-input" placeholder="내용을 입력하세요"></textarea>
	      </div>
	    </div>
    </form>

<script>
 
		function sub() {
			document.write.submit();
			
		}
	
</script>

	
    <div class="post-section post-buttons">
      <button type="button" class="btn btn-primary"><a href="qnaList.do">목록</a></button>
      <button type="submit" class="btn btn-success" onclick="sub()">제출</button>
      <div class="dropup pull-left">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="add-more-post-items">첨부파일 <i class="caret"></i></button>

      </div>
    </div>
    <div class="post-form-overlay closed activities">
      <h4>Add Activity <button type="button" class="close">&times;</button></h4>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit deserunt necessitatibus eveniet tenetur repellat, eligendi doloremque maxime corporis modi iusto consectetur accusamus commodi dignissimos voluptates, dolor ipsam quasi soluta deleniti!</p>
    </div>
    <div class="post-form-overlay closed targets">
      <h4>Add Target <button type="button" class="close">&times;</button></h4>
      <div class="form-group">
        <label for="target-text">Set Target:</label>
        <input autofocus id="target-text" type="text" class="form-control" />
      </div>
      <button class="btn btn-primary">Add</button>
    </div>
  </div>
</div>



</body>
</html>