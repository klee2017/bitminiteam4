<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
		
		.reply-list .comment-avatar {
			width: 50px;
			height: 50px;
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
			float: left;
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
		
	#comment-regist-form {
	 position: relative;
	 border-radius: 4px;
	 width: 720px;
	 height: 180px;
	 margin: 0 auto;
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
				<h3 itemprop="headline" class="post-title">title</h3>
				<p class="post-subtitle" itemprop="alternativeHeadline">writer</p>
				<p class="post-meta">Posted on <time datetime="2015-06-05T17:44-07:00" itemprop="datePublished">June 05, 2015</time></p>
			</header>
	  
			<img itemprop="image" src="https://lorempixel.com/720/460/cats/1/" alt="A descriptive alt" class="featured-image">

			<p itemprop="description" class="post-intro">A summary or introduction. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, eius! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia aperiam, illum architecto eligendi placeat, quo!</p>
	  
			<div itemprop="articleBody" class="post-body">
				<p>The body of the article. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo eius, minima libero atque dolores odio fugiat corporis deleniti odit quia doloribus totam consectetur numquam harum itaque laborum, officia iste voluptate?</p>
				<p>Saepe numquam velit maiores provident, quae asperiores quidem voluptatibus, maxime temporibus sapiente facere! Quae harum, ad eaque, earum perspiciatis culpa in commodi.</p>
				
				<figure itemscope itemtype="http://schema.org/ImageObject">
					<img src="https://lorempixel.com/720/460/cats/7/" itemprop="contentURL" alt="A descriptive alt" />
					<figcaption itemprop="caption">An image caption by <span itemprop="author"><a href="#" rel="author">Photographer</a></span></figcaption>
				</figure>
	    
				<p>Ratione quasi non, est veritatis necessitatibus quibusdam possimus sit aspernatur aperiam dolores quod nemo odio ea nostrum. Consequuntur quas quos quisquam deleniti, facere, officiis ratione ipsum, odio hic enim adipisci quia. Dolorum assumenda alias corporis expedita illo vitae, incidunt illum doloribus cupiditate quibusdam tempore quasi laudantium quod nesciunt nisi, vero, tenetur est, dolorem obcaecati!</p>
			</div>
	
			<footer class="post-footer">
				<p class="comments-link"><a href="#" itemprop="discussionUrl">Leave a Comment</a> (<a href="#" itemprop="discussionUrl"><span itemprop="commentCount">3</span></a>)</p>
			</footer>
	  		
	  		<!-- Contenedor Principal -->
	<div class="comments-container">
		<h4>Comment</h4>

		<ul id="comments-list" class="comments-list">
			<li>
				<div class="comment-main-level">
					<!-- Avatar -->
					<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_1_zps8e1c80cd.jpg" alt=""></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name by-author"><a href="http://creaticode.com/blog">Agustin Ortiz</a></h6>
							<span>hace 20 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
						</div>
					</div>
				</div>
				<!-- Respuestas de los comentarios -->
				<ul class="comments-list reply-list">
					<li>
						<!-- Avatar -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_2_zps7de12f8b.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name"><a href="http://creaticode.com/blog">Lorena Rojero</a></h6>
								<span>hace 10 minutos</span>
								<i class="fa fa-reply"></i>
								<i class="fa fa-heart"></i>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>

					<li>
						<!-- Avatar -->
						<div class="comment-avatar"><img src="http://i9.photobucket.com/albums/a88/creaticode/avatar_1_zps8e1c80cd.jpg" alt=""></div>
						<!-- Contenedor del Comentario -->
						<div class="comment-box">
							<div class="comment-head">
								<h6 class="comment-name by-author"><a href="http://creaticode.com/blog">Agustin Ortiz</a></h6>
								<span>hace 10 minutos</span>
								<i class="fa fa-reply"></i>
								<i class="fa fa-heart"></i>
							</div>
							<div class="comment-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?
							</div>
						</div>
					</li>
				</ul>
			</li>

			<li>
				<div class="comment-main-level">
					<!-- Avatar -->
					<div class="comment-avatar" style="background-image:url('/makeFriendsTravel/image/${user.poto}');"></div>
					<!-- Contenedor del Comentario -->
					<div class="comment-box">
						<div class="comment-head">
							<h6 class="comment-name"><a href="http://creaticode.com/blog">${user.id}</a></h6>
							<span>hace 10 minutos</span>
							<i class="fa fa-reply"></i>
							<i class="fa fa-heart"></i>
						</div>
						<div class="comment-content">
							<!--  ��� �����°� -->
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	  		
	  		
			<div class="comment-regist-form">
				<form id="enquiry" action="">
					<textarea maxlength="140" name="message" id="message" placeholder="Add your comment!"></textarea>
					<input type="submit" value="Add Comment">
				</form>
			</div>

		</article>
	
	</div>
	
	<script>
	
	</script>
</body>
</html>