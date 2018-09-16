 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>      


<title>Review Detail</title>
<style>
		@import url(https://fonts.googleapis.com/css?family=Merriweather:400,700,400italic,700italic);
	
	body {
	  background-color: white;
	  font: 18px/1.555555555 Merriweather, serif;
	  margin: 0 auto;
	  padding:10px;

	  
	}
	

	
	img {
	  border: 0;
	  width:100%;
	  max-width: 100%;
	}
	
	a {
	  color: #19A3FF;
	  text-decoration: none;
	  
	  &:hover {
	    color: #47B5FF;
	  }
	}
	
	h1,
	h2,
	h3,
	h4 {
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
	  margin: 2em 0 3.5em;
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
	
	html {

  font-family: "PT Sans", "Helvetica Neue", "Helvetica", "Roboto", "Arial", sans-serif;
 
  -webkit-font-smoothing: antialiased;
}

input, textarea {
  outline: none;
  border: none;
  display: block;
  margin: 0;
  padding: 0;
  -webkit-font-smoothing: antialiased;
  font-family: "PT Sans", "Helvetica Neue", "Helvetica", "Roboto", "Arial", sans-serif;
  font-size: 1rem;
  color: #555f77;
}
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
  color: #ced2db;
}
input::-moz-placeholder, textarea::-moz-placeholder {
  color: #ced2db;
}
input:-moz-placeholder, textarea:-moz-placeholder {
  color: #ced2db;
}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {
  color: #ced2db;
}

p {
  line-height: 1.3125rem;
}

.comments {
  margin: 2.5rem auto 0;
  max-width: 60.75rem;
  padding: 0 1.25rem;
}

.comment-wrap {
  margin-bottom: 1.25rem;
  display: table;
  width: 100%;
  min-height: 5.3125rem;
}

.photo {
  padding-top: 0.625rem;
  display: table-cell;
  width: 3.5rem;
}
.photo .avatar {
  height: 2.25rem;
  width: 2.25rem;
  border-radius: 50%;
  background-size: contain;
}

.comment-block {
  padding: 1rem;
  background-color: #fff;
  display: table-cell;
  vertical-align: top;
  border-radius: 0.1875rem;
  box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.08);
}
.comment-block textarea {
  width: 100%;
  resize: none;
}

.comment-text {
  margin-bottom: 1.25rem;
}

.bottom-comment {
  color: #acb4c2;
  font-size: 0.875rem;
}

.comment-date {
  float: left;
}

.comment-actions {
  float: right;
}
.comment-actions li {
  display: inline;
  margin: -2px;
  cursor: pointer;
}
.comment-actions li.complain {
  padding-right: 0.75rem;
  border-right: 1px solid #e1e5eb;
}
.comment-actions li.reply {
  padding-left: 0.75rem;
  padding-right: 0.125rem;
}
.comment-actions li:hover {
  color: #0095ff;
}
	
	
</style>
</head>
<body><br>
<div style="margin: 2em auto; width: 90%; max-width: 40em;">
	<article itemscope itemtype="http://schema.org/BlogPosting" class="post">

  <img itemprop="image" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/dXAhQuT.jpg" alt="A descriptive alt" class="featured-image">

  <header class="post-header">
      <h2 itemprop="headline" class="post-title">A typical blog post title</h2>
      <p class="post-subtitle" itemprop="alternativeHeadline">A blog post subtitle if needed</p>
    
      <p class="post-meta">Posted on <time datetime="2015-06-05T17:44-07:00" itemprop="datePublished">June 05, 2015</time> by <span itemprop="author"><a rel="author" href="#googleplusURL">Author</a></span></p>
  </header>

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
    <div class="post-category">Posted in <span itemprop="articleSection"><a href="#">Category</a></span> with the tags 
      <ul class="post-tags">
        <li itemprop="keywords"><a href="#" rel="tag">Tag 1</a></li>
        <li itemprop="keywords"><a href="#" rel="tag">Tag 2</a></li>
        <li itemprop="keywords"><a href="#" rel="tag">Tag 3</a></li>
      </ul>
    </div>
    
    <p class="comments-link"><a href="#" itemprop="discussionUrl">Leave a Comment</a> (<a href="#" itemprop="discussionUrl"><span itemprop="commentCount">3</span></a>)</p>
  </footer>
	
			<div class="comments">
				<div class="comment-wrap">
						<div class="photo">
								<div class="avatar" style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg')"></div>
						</div>
						<div class="comment-block">
								<form action="">
										<textarea name="" id="" cols="30" rows="3" placeholder="Add comment..."></textarea>
								</form>
						</div>
				</div>
		
				<div class="comment-wrap">
						<div class="photo">
								<div class="avatar" style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg')"></div>
						</div>
						<div class="comment-block">
								<p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum. Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi
										sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?</p>
								<div class="bottom-comment">
										<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
										<ul class="comment-actions">
												<li class="complain">Complain</li>
												<li class="reply">Reply</li>
										</ul>
								</div>
						</div>
				</div>
		
				<div class="comment-wrap">
						<div class="photo">
								<div class="avatar" style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/felipenogs/128.jpg')"></div>
						</div>
						<div class="comment-block">
								<p class="comment-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum. Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam.</p>
								<div class="bottom-comment">
										<div class="comment-date">Aug 23, 2014 @ 10:32 AM</div>
										<ul class="comment-actions">
												<li class="complain">Complain</li>
												<li class="reply">Reply</li>
										</ul>
								</div>
						</div>
				</div>
			</div>
		</div>
	
</article>
</div>
</body>
</html>