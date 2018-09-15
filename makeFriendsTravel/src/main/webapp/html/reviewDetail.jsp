<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Review Detail</title>
<style>
		@import url(https://fonts.googleapis.com/css?family=Merriweather:400,700,400italic,700italic);
	
	body {
	  color: #222;
	  font: 18px/1.555555555 Merriweather, serif;
	  margin: 2em auto;
	  width: 90%;
	  max-width: 40em;
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
</style>
</head>
<body>
	<article itemscope itemtype="http://schema.org/BlogPosting" class="post">

  <img itemprop="image" src="https://lorempixel.com/720/460/cats/1/" alt="A descriptive alt" class="featured-image">

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

</article>
</body>
</html>