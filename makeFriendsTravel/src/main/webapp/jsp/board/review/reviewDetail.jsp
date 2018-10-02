<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:import url="/html/main/topMenu.jsp"></c:import>
<%
	List<String> cIdList = (List<String>)request.getAttribute("cIdList");
	int i=0;
	
	List<String> cImgList = (List<String>)request.getAttribute("cImgList");
	int j=0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Detail</title>
<style>
	@import url(https://fonts.googleapis.com/css?family=Merriweather:400,700,400italic,700italic);
	
	#board-detail-body {
		color: #222;
	  	font: 18px/1.555555555 Merriweather, serif;
	  	margin: 2em auto;
	  	width: 90%;
		max-width: 40em;
	}
	
	.post-header {
		background: #e5e5e5;
		box-shadow: none;
	}
	
	img {
	  border: 0;
	  max-width: 100%;
	}
	
	a {
	  color: #19A3FF;
	  text-decoration: none;
	  
	  &:hover {
	    color: #47B5FF;
	  }
	}
	
	h3, h4 {
	  text-rendering: optimizeLegibility;
	}
	
	.post-title {
	  font-size: 3.157em;
	  margin: 1em 0 0;
	}
	
	.post-subtitle {
	  font-size: 1.777em;
	  font-style: italic;
	  margin: 0;
	}
	
	.post-meta {
	  font-size: 0.777em;
	  margin: 0em 0 2em;
	}
	
	.post-intro {
	  font-size: 1.222em;
	}
	
	.post-footer {
	  font-size: 0.75em;
	  padding: 2em 0;
	}
	
	.post-category {
	  float: left;
	}
	
	.comments-link {
	  float: right;
	  margin: 0;
	}
	
	.post-tags,
	.post-tags li {
	  display: inline;
	  list-style: none;
	  margin: 0;
	  padding: 0;
	}
	
	.post-tags li:after {
	  content: ",";
	}
	
	.post-tags li:last-child:after {
	  content: "";
	}
	
	figure {
	  margin: 0;
	}
	
	figcaption {
	  font-size: 0.75em;
	  font-style: italic;
	  line-height: 2em;
	  text-align: center;
	}
	
	
	
	form textarea {
	 border-radius: 2px;
	 box-shadow:  0px 2px 11px 0px rgba(0, 0, 0, 0.3);
	 border: 1px solid #e2e6e6;
	 margin: 10px 0 10px 0;
	 font-family: 'Open Sans', sans-serif;
	 outline: none;
	 width: 720px;
	 height: 100px;
	}
	
	form span.counter {
	 float: right;
	 color: #f2f2f2;
	}
	
	form p.info {
	 font-size: 11px;
	 color: #999;
	}
	form p.info > span {
	 color: #fff; 
	}
	
	form input[type=submit] {
	 cursor: pointer;
	 box-shadow:  0px 2px 11px 0px rgba(0, 0, 0, 0.3);
	 border: 1px solid #A8F1FF;
	 border-radius: 2px;
	 background-color:#0093B0;
	 color: #fff;
	 float: right;
	 padding: 10px;
	}
	
		 .comments-container > * {
		 	margin: 0;
		 	padding: 0;
		 	-webkit-box-sizing: border-box;
		 	-moz-box-sizing: border-box;
		 	box-sizing: border-box;
		 }
		
		 .comments-container > a {
		 	color: #03658c;
		 	text-decoration: none;
		 }
		
		.comments-container > ul {
			list-style-type: none;
		}
		
		.comments-container > body {
			font-family: 'Roboto', Arial, Helvetica, Sans-serif, Verdana;
			background: #dee1e3;
		}
		
		
		.comments-container {
			margin: 60px auto 15px;
			width: 768px;
		}
		
		.comments-container h1 {
			font-size: 36px;
			color: #283035;
			font-weight: 400;
		}
		
		.comments-container h1 a {
			font-size: 18px;
			font-weight: 700;
		}
		
		.comments-list {
			margin-top: 30px;
			position: relative;
		}
		
		
		.comments-list:before {
			content: '';
			width: 2px;
			height: 100%;
			background: #c7cacb;
			position: absolute;
			left: 32px;
			top: 0;
		}
		
		.comments-list:after {
			content: '';
			position: absolute;
			background: #c7cacb;
			bottom: 0;
			left: 27px;
			width: 7px;
			height: 7px;
			border: 3px solid #dee1e3;
			-webkit-border-radius: 50%;
			-moz-border-radius: 50%;
			border-radius: 50%;
		}
		
		.reply-list:before, .reply-list:after {display: none;}
		.reply-list li:before {
			content: '';
			width: 60px;
			height: 2px;
			background: #c7cacb;
			position: absolute;
			top: 25px;
			left: -55px;
		}
		
		
		.comments-list li {
			margin-bottom: 15px;
			display: block;
			position: relative;
		}
		
		.comments-list li:after {
			content: '';
			display: block;
			clear: both;
			height: 0;
			width: 0;
		}
		
		.reply-list {
			padding-left: 88px;
			clear: both;
			margin-top: 15px;
		}
		
		.comments-list .comment-avatar {
			width: 65px;
			height: 65px;
			position: relative;
			z-index: 99;
			float: left;
			border: 3px solid #FFF;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			-webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
			-moz-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
			box-shadow: 0 1px 2px rgba(0,0,0,0.2);
			overflow: hidden;
		}
		
		.comments-list .comment-avatar img {
			width: 100%;
			height: 100%;
		}
		
		.comment-main-level:after {
			content: '';
			width: 0;
			height: 0;
			display: block;
			clear: both;
		}
		
		.comments-list .comment-box {
			width: 680px;
			float: right;
			position: relative;
			-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
			-moz-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
			box-shadow: 0 1px 1px rgba(0,0,0,0.15);
		}
		
		.comments-list .comment-box:before, .comments-list .comment-box:after {
			content: '';
			height: 0;
			width: 0;
			position: absolute;
			display: block;
			border-width: 10px 12px 10px 0;
			border-style: solid;
			border-color: transparent #FCFCFC;
			top: 8px;
			left: -11px;
		}
		
		.comments-list .comment-box:before {
			border-width: 11px 13px 11px 0;
			border-color: transparent rgba(0,0,0,0.05);
			left: -12px;
		}
		
		.reply-list .comment-box {
			width: 610px;
		}
		.comment-box .comment-head {
			background: #FCFCFC;
			padding: 10px 12px;
			border-bottom: 1px solid #E5E5E5;
			overflow: hidden;
			-webkit-border-radius: 4px 4px 0 0;
			-moz-border-radius: 4px 4px 0 0;
			border-radius: 4px 4px 0 0;
		}
		
		.comment-box .comment-head i {
			float: right;
			margin-left: 14px;
			position: relative;
			top: 2px;
			color: #A6A6A6;
			cursor: pointer;
			-webkit-transition: color 0.3s ease;
			-o-transition: color 0.3s ease;
			transition: color 0.3s ease;
		}
		
		.comment-box .comment-head i:hover {
			color: #03658c;
		}
		
		.comment-box .comment-name {
			color: #283035;
			font-size: 14px;
			font-weight: 700;
			float: left;
			margin-right: 10px;
		}
		
		.comment-box .comment-name a {
			color: #283035;
		}
		
		.comment-box .comment-head span {
			float: right;
			color: #999;
			font-size: 13px;
			position: relative;
			top: 1px;
		}
		
		.comment-box .comment-content {
			background: #FFF;
			padding: 12px;
			font-size: 15px;
			color: #595959;
			-webkit-border-radius: 0 0 4px 4px;
			-moz-border-radius: 0 0 4px 4px;
			border-radius: 0 0 4px 4px;
		}
		
		.comment-box .comment-name.by-author, .comment-box .comment-name.by-author a {color: #03658c;}
		.comment-box .comment-name.by-author:after {
			content: 'autor';
			background: #03658c;
			color: #FFF;
			font-size: 12px;
			padding: 3px 5px;
			font-weight: 700;
			margin-left: 10px;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
		}
		
		
		@media only screen and (max-width: 766px) {
			.comments-container {
				width: 480px;
			}
		
			.comments-list .comment-box {
				width: 390px;
			}
		
			.reply-list .comment-box {
				width: 320px;
			}
		}
	
	#update-delete {
		float: right;
	}
	
	body {
		font-family: sans-serif;
	}
	
	.comment-avatar{
			background-position: center ;
			transition: background-size 0.3s ease;
			background-size: auto 95%;
	}
</style>
</head>
<body>
	<div id="board-detail-body">
		<article itemscope itemtype="http://schema.org/BlogPosting" class="post">

			<header class="post-header">
				<h3 itemprop="headline" class="post-title">${board.title}</h3>
				<p class="post-subtitle" itemprop="alternativeHeadline">${id}</p>
				<p class="post-meta">Posted on <fmt:formatDate value="${board.modDate}" pattern="yyyy/MM/dd"/></time></p>
			</header>

			<p itemprop="description" class="post-intro">${board.content}</p>
			
			<div id="update-delete">
				<c:choose>
					<c:when test="${id ne user.id || empty user.id}">
						<a href="#">삭제</a>
	            		<a href="#">수정</a>
					</c:when>
					<c:otherwise>														
						<a href="delete.do?no=${board.no}">삭제</a>
	            		<a href="update-form.do?no=${board.no}">수정</a>
					</c:otherwise>
				</c:choose>
			</div>
		</article>
	
			<footer class="post-footer">
				<p class="comments-link"> 댓글 수 : <%= cIdList.size() %></p>
			</footer>
	  		

		<form action="updatecomment.do" method="post">
			<input type="hidden" name="no" value="${board.no}" />
			<input type="hidden" name="commentNo" value="${commentNo}" />
			<div class="comments-container">
				<h1>Comment</h1>
					<ul id="comments-list" class="comments-list">
						<c:forEach var="comment" items="${commentList}">
							<li>
								<div class="comment-main-level">
									<c:choose>
										<c:when test="${commentNo eq comment.commentNo}">
											<div class="comment-avatar" style="background-image: url('/makeFriendsTravel/image/<%= cImgList.get(j++) %>')"></div>
											<div class="comment-box">
												<div class="comment-head">
													<h6 class="comment-name by-author">
														<c:out value="<%= cIdList.get(i++) %>" />
													</h6>
												</div>
												<div class="comment-content">
													<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
													<input type="submit" value="수정" />	
										  	  		<a href="detail.do?no=${board.no}">취소</a>
												</div>
									  	  	</div>	
										</c:when>
										<c:otherwise>
											<div class="comment-avatar" style="background-image: url('/makeFriendsTravel/image/<%= cImgList.get(j++) %>')"></div>
											<div class="comment-box">
												<div class="comment-head">
												<c:choose>
													<c:when test="${user.no eq comment.memNo}">
														<h6 class="comment-name by-author">
															<c:out value="<%= cIdList.get(i++) %>" />
															<span>
																<fmt:formatDate var="regDate" value="${comment.regDate}" 
											                      				pattern="yyyy-MM-dd" />
											            		<c:out value="${regDate}" />
											            	</span>
														</h6>
													</c:when>
													<c:otherwise>
														<h6 class="comment-name">
															<c:out value="<%= cIdList.get(i++) %>" />
															<span>
																<fmt:formatDate var="regDate" value="${comment.regDate}" 
											                      				pattern="yyyy-MM-dd" />
											            		<c:out value="${regDate}" />
											            	</span>
														</h6>
													</c:otherwise>
												</c:choose>
												</div>
												<div class="comment-content">
													<c:out value="${comment.content}" />
													<c:choose>
														<c:when test="${id ne user.id || empty user.id}">
										            		<a href="#">삭제</a>	
										  	  				<a href="#">수정</a>
														</c:when>
														<c:otherwise>														
										            		<a href="deletecomment.do?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
										  	  				<a href="detail.do?commentNo=${comment.commentNo}&no=${comment.no}">수정</a>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</li>
						</c:forEach>
						<c:if test="${empty commentList}">
							댓글이 존재하지 않습니다.
						</c:if>
					</ul>
			</div>
		</form>


		<div class="comment-regist-form">
			<form id="enquiry" action="registcomment.do" method="post">
				<input type="hidden" name="no" value="${board.no}" />
				<input type="hidden" name="memNo" value="${user.no}" />
				<textarea maxlength="140" name="content" id="message" placeholder="Add your comment!"></textarea>
				<input type="submit" value="Add Comment">
			</form>
		</div>
	
	
	
	</div>
	
	<script>
	$(document).ready(function () {
	    var comment = $('form#enquiry textarea'),
	        counter = '',
	        counterValue = 140, //change this to set the max character count
	        minCommentLength = 10, //set minimum comment length
	        $commentValue = comment.val(),
	        $commentLength = $commentValue.length,
	        submitButton = $('form#enquiry input[type=submit]').hide();
	  
	    $('form').prepend('<span class="counter"></span>').append('<p class="info">Min length: <span></span></p>');
	    counter = $('span.counter');
	    counter.html(counterValue); //display your set max length
	    comment.attr('maxlength', counterValue); //apply max length to textarea
	    $('form').find('p.info > span').html(minCommentLength);
	    // everytime a key is pressed inside the textarea, update counter
	    comment.keyup(function () {
	      var $this = $(this);
	      $commentLength = $this.val().length; //get number of characters
	      counter.html(counterValue - $commentLength); //update counter
	      if ($commentLength > minCommentLength - 1) {
	        submitButton.fadeIn(200);
	      } else {
	        submitButton.fadeOut(200);
	      }
	    });
	  });
	</script>
</body>
</html>