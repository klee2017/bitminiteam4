<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>글쓰기</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magicsuggest/2.1.4/magicsuggest-min.css" />
    <style>
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
    </style>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magicsuggest/2.1.4/magicsuggest-min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
  <div class="post-form">
    <div class="post-form-backdrop closed"></div>
    <div class="post-section editor-title">
      <h3 class="page-title">글쓰기</h3>
    </div>
    <!-- <div class="post-section post-tagged-people">
      <div class="form-group">
        <label for="people-entry">Select People</label>
        <div id="people-entry"></div>
      </div>
    </div> -->
    <div class="post-section">
      <!-- <label for="post-title">글</label> -->
      <div class="post-title">
        <input type="text" name="title" id="post-title" class="post-input large"  placeholder="제목"/>
      </div>
      <div class="post-content">
        <textarea name="content" class="post-input" placeholder="내용"></textarea>
      </div>
    </div>
    <div class="post-section post-media">
      <label>사진</label>
      <div class="post-media-inner">
        <div class="post-media-icon thumbnail">
          <button class="delete-media btn btn-danger btn-xs">&times;</button>
          <img src="//placehold.it/150x150" alt="" />
        </div>
        <div class="post-media-icon thumbnail">
          <button class="delete-media btn btn-danger btn-xs">&times;</button>
          <img src="//placehold.it/150x150" alt="" />
        </div>
        <div class="post-media-icon thumbnail">
          <button class="delete-media btn btn-danger btn-xs">&times;</button>
          <img src="//placehold.it/150x150" alt="" />
        </div>
        <button class="post-media-icon btn btn-default">
          <i class="glyphicon glyphicon-plus"></i><br>
          Add Media
        </button>
      </div>
    </div>
    <div class="post-section post-buttons">
      <!-- <div class="dropup pull-left">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="add-more-post-items">Add More <i class="caret"></i></button>
         <ul class="dropdown-menu" arial-labelledby="#add-more-post-items">
          <li><a href="#" class="open-overlay" data-target=".activities">Add Activities</a></li>
          <li><a href="#" class="open-overlay" data-target=".targets">Add Targets</a></li>
        </ul>
      </div> -->
      <button type="button" class="btn btn-primary">임시 저장</button>
      <button type="button" class="btn btn-success">작성</button>
    </div>
    <!-- <div class="post-form-overlay closed activities">
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
    </div> -->
  </div>
</div>
<script>
	// $('#people-entry').magicSuggest({
	//   data: [
	//     {name: 'Jimmy Hoffa'},
	//     {name: 'Elvis Presley'},
	//     {name: 'DB Cooper'},
	//     {name: 'Marylin Monroe'}
	//   ]
	// })

	$('.post-form').on('click', '.open-overlay', function(e) {
	  e.preventDefault()
	  $($(this).data('target'))
	    .removeClass('closed')
	    .addClass('open')
	  $('.post-form-backdrop')
	    .removeClass('closed')
	})
	$('.post-form').on('click', '.post-form-overlay .close', function() {
	  $(this).parents('.post-form-overlay')
	    .addClass('closed')
	    .removeClass('open')
	  $('.post-form-backdrop')
	    .addClass('closed')
	})
</script>
</body>
</html>