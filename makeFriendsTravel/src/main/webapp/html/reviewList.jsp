<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
		/* Basic CSS Reset */
	html, body, div, article, section, header,
	h1, h2, h3, h4, h5, h6,
	ul, li, ol, p, img {
	  margin:0;
	  padding:0;
	}
	
	img {
	  border:none;
	}
	
	/* Global Styles */ 
	body {
	  line-height: 1.55;
	  font-size: 100%;
	  font-weight: 400;
	  font-family: helvetica, arial, sans-serif;
	}
	
	h1,h2,h3,h4,h5,h6 {
	  font-family: 'Roboto Slab', serif;
	  font-weight: 700;
	  line-height: 1.2;
	}
	
	h2 {
	  font-size: 1.55em;
	  padding-bottom: .35em;
	}
	
	a {
	  text-decoration: none;
	  font-weight: bold;
	  font-weight: 400;
	}
	
	.widthWrapper {
	  max-width: 750px;
	  margin: 0 auto;
	}
	
	/* Post Index */
	#postIndex {
	  margin: 3em auto;
	}
	
	article {
	  margin-top: -0.063em;
	}
	
	article a {
	  display: block;
	  padding: 2.374em 2.5em 2.5em 2.5em;
	  overflow: hidden;
	  border-top: .063em solid #ccc;
	  border-bottom: .063em solid #ccc;
	}
	
	article a:hover {
	  background: #eee;
	  border-top: #666 solid .25em;
	  padding: 2.187em 2.5em 2.5em 2.5em;
	}
	
	.postImg {
	  float: left;
	  width: 25%;
	  box-sizing: border-box;
	  padding-right: 2em;
	}
	
	.postImg img {
	  width: 100%;
	}
	
	article a h2 {
	  color: #222;
	  float: right; 
	  width: 75%;
	}
	
	article a:hover h2 {
	  color: #157EBF;
	}
	
	article a p {
	  color: #444;
	  float: right; 
	  width: 75%;
	}
	
	article a:hover p {
	  color: #222;
	}
	
	@media only screen and (max-width: 750px) {
	  #postIndex {
	    width: 100%;
	  }
	
	  article a {
	    padding: 2.374em 1.5em 2.5em 1.5em;
	  }
	
	  article a:hover {
	    padding: 2.187em 1.5em 2.5em 1.5em;
	  }
	}
	
	@media only screen and (max-width: 481px) {
	  .postImg {
	    display: none;
	  }
	
	  article a p, article a h2 {
	    width: 100%;
	  }
	
	}
</style>
</head>
<body>
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:700|Oswald' rel='stylesheet' type='text/css'>
  

  <section id="postIndex" class="widthWrapper">

    <article>
      <a target="_blank" href="#">
        <div class="postImg">
          <img src="" />
        </div>
        <h2>Speeding Up Your Website 101</h2>
        <p>It seems like only a select few, besides big companies and corporations, care about web page speed and performance. Browsing the web, it's common to see load times of 5 seconds and pages that weigh 4, 5, sometimes 10 megabytes! Even if that's not you, is your website optimized to its full potential? This post is not about stripping your page, its about optimizing everything so that your website loads as fast as possible.</p>
      </a>
    </article>

    <article>
      <a target="_blank" href="#">
        <div class="postImg">
          <img src="" />
        </div>
        <h2>Guide to Grunt JS (The Basics)</h2>
        <p>Grunt is one of those tools I've heard of forever, but never got around to using. Everyone raves about how great it is and the amount of time they've saved, but could it really be that great? This week I took some time to learn the basics and try it on a project. They were right... Grunt is pretty awesome. Today I'm going to take you through the installation process, teach you the basics, and take you through the creation of your first Gruntfile.</p>
      </a>
    </article>

    <article>
      <a target="_blank" href="#">
        <div class="postImg">
          <img src="" />
        </div>
        <h2>Social Media Icons Tutorial (SVG Sprite + Image Replacement)</h2>
        <p>Nearly every modern website has social media icons on their page. It's a great and stylish why to cross link and hold everything together. There are ton's of bad methods to add these icons to your page though. Today I offer you a clean and semantic way to add social media icons to your website using a SVG sprite sheet and image replacement. A PNG fall back and IE6+ support is included as well.</p>
      </a>
    </article>

    <article>
      <a target="_blank" href="#">
        <div class="postImg">
          <img src="" />
        </div>
        <h2>SVG+CSS Icon Buttons with PNG Fallbacks Tutorial</h2>
        <p>Icons make everything look cooler, there's some magical component to them that can really bring out a website. Visuals aside, using icons offer some great UX benefits as well, in many cases the user spots the icon before the word it represents. With the rising use/support of SVG we no longer have to worry about our icons looking choppy on a "retina screen". Today I want to take you though the process of creating SVG+CSS icon buttons, with PNG fallbacks.</p>
      </a>
    </article>

    <article>
      <a target="_blank" href="#">
        <div class="postImg">
          <img src="" />
        </div>
        <h2>Migrating to Ubuntu as a Web Designer and Developer</h2>
        <p>Originally a Windows and OSX user, I made the jump to Ubuntu Linux early this year. After a brief adjustment period, I must say I've grown to love it. The stability and UNIXiness (yeah, made that word up) of OSX and the flexibility of Windows make for the perfect combination of awesomeness. Today I want to do two things. Tell you why I made the migration to Ubuntu Linux as a web designer/developer, and give you a overview of all the different softwares I use on a daily basis.</p>
      </a>
    </article>
  
  </section>
</body>
</html>