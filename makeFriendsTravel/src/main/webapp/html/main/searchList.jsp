<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <style>
    
    
            * {
  box-sizing: border-box;
}
body {
  font-family: 'Helvetica Neue', Arial, sans-serif;
  background: #e0e4e7;
}
img {
  width: 100px;
  height: 130px;
}
.wrapper {
  width: 80%;
  padding: 0 2rem;
  text-align: center;
}
.polaroid {
  background: #fff;
  padding: 1rem;
  box-shadow: 0 0.25rem 1rem rgba(0,0,0,0.2);
}
.caption {
  font-size: 1.125rem;
  text-align: center;
  line-height: 2em;
}
.item {
  display: inline-block;
  margin-top: 2rem;
  
}
.item .polaroid:before {
  content: '';
  position: absolute;
  z-index: -1;
  transition: all 0.35s;
}
.item:nth-of-type(4n+1) {
  transform: scale(0.8, 0.8) rotate(5deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+1) .polaroid:before {
  transform: rotate(6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.item:nth-of-type(4n+2) {
  transform: scale(0.8, 0.8) rotate(-5deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+2) .polaroid:before {
  transform: rotate(-6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.item:nth-of-type(4n+4) {
  transform: scale(0.8, 0.8) rotate(3deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+4) .polaroid:before {
  transform: rotate(4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.item:nth-of-type(4n+3) {
  transform: scale(0.8, 0.8) rotate(-3deg);
  transition: all 0.35s;
}
.item:nth-of-type(4n+3) .polaroid:before {
  transform: rotate(-4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.item:hover {
  filter: none;
  transform: scale(1, 1) rotate(0deg) !important;
  transition: all 0.35s;
}
.item:hover .polaroid:before {
  content: '';
  position: absolute;
  z-index: -1;
  transform: rotate(0deg);
  height: 90%;
  width: 90%;
  bottom: 0%;
  right: 5%;
  box-shadow: 0 1rem 3rem rgba(0,0,0,0.2);
  transition: all 0.35s;
}




body {
  background-color: #fafafa;
}

table {
  color: #333;
  font-size: .9em;
  font-weight: 300;
  line-height: 40px;
  border-collapse: separate;
  border-spacing: 0;
  border: 2px solid #ed1c40;
  width: 1500px;
  margin: 50px auto;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,.16);
  border-radius: 2px;
}

th {
  background: #ed1c40;
  color: #fff;
  border: none;
}

tr:hover:not(th) {background-color: rgba(237,28,64,.1);}


input[type="button"] {
	transition: all .3s;
    border: 1px solid #ddd;
    padding: 8px 16px;
    text-decoration: none;
    border-radius: 5px;
	font-size: 15px;
}

input[type="button"]:not(.active) {
	background-color:transparent;
}

.active {
	background-color: #ff4d4d;
	color :#fff;
}

input[type="button"]:hover:not(.active) {
	background-color: #ddd;
}



ul {
  list-style: none;
}

.book {
  display: inline-block;;
  width: 100px;
  height: 130px;
  padding: 0;
	margin: 10px 20px;
	border: solid 10px #fff;
	-webkit-box-shadow:  0px 0px 5px 0px rgba(0, 0, 0, 0.25);
	box-shadow:  0px 0px 5px 0px rgba(0, 0, 0, 0.25);
}
    
    </style>
</head>
<body>
	<div style=" color:black; font-weight:bold; margin-top:50px; margin-left:170px;  margin-bottom: -50px; padding-left: 0" class="col-md-4">
		<h2>Review</h2>
	</div>
 	
 		<div style = " margin-left:7%" class="wrapper">
			 <table id="myTable">
				<tr>
					<th>Photo</th>
					<th>Content</th>
				</tr>
				<tr>
					<td>first row col1</td>
					<td>first row col2</td>
				</tr>
				<tr>
					<td>row #2 col1</td>
					<td>row #2 col2</td>
				</tr>
				<tr>
					<td>row #3 col1</td>
					<td>row #3 col2</td>
				</tr>
				<tr>
					<td>row #4 col1</td>
					<td>row #4 col2</td>
				</tr>
				<tr>
					<td>row #5 col1</td>
					<td>row #5 col2</td>
				</tr>
				<tr>
					<td>row #6 col1</td>
					<td>row #6 col2</td>
				</tr>
				<tr>
					<td>row #7 col1</td>
					<td>row #7 col2</td>
				</tr>
				<tr>
					<td>row #8 col1</td>
					<td>row #8 col2</td>
				</tr>
				<tr>
					<td>row #9 col1</td>
					<td>row #9 col2</td>
				</tr>
				<tr>
					<td>row #10 col1</td>
					<td>row #10 col2</td>
				</tr>
				<tr>
					<td>row #11 col1</td>
					<td>row #11 col2</td>
				</tr>
			</table>
 	
 	</div>
 	<div style="width:500px; color:black; margin-top:50px; margin-left:10px;  margin-bottom: -50px; padding-left: 160px" class="col-md-4">
		<h2 style="font-weight:bold;">Best</h2>
	</div>
 	
 		<div style = "border:1px solid black; margin-left: 9%; background: #c5d8e6;" class="wrapper">
		<a href="bestDetail.jsp">
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/dXAhQuT.jpg">
          	
            <div class="caption">By Joshua Sortino</div>
          </div>
        </div>
      	</a>
        <div   class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/LZkivxR.jpg">
            <div class="caption">By Cole Patrick</div>
          </div>
        </div>
      
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/hqcMtrF.jpg">
            <div class="caption">By Luke Pamer</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/hqcMtrF.jpg">
            <div class="caption">By Luke Pamer</div>
          </div>
        </div>
      
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg">
            <div class="caption">By Alissa Smith</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
      </div>
      
      <div style="width:500px; color:black; margin-top:50px; margin-left:10px;  margin-bottom: -50px; padding-left: 160px" class="col-md-4">
		<h2 style="font-weight:bold;">BOOK</h2>
		</div>
      
      <div style = "border:1px solid black; margin-left: 9%; background: #c5d8e6; background: #EAEDF1;" class="wrapper">
      	<ul class="book-list">
		  <li class="book"><a href="">
		    <img src="https://s3.amazonaws.com/titlepages.leanpub.com/hands-on-nodejs/large?1352289061" alt="" />
		    </a>

		  </li>
		  <li class="book"><a href=""><img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/codebright/large?1385420819" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href=""><img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/build-apis-you-wont-hate/large?1385395345" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/characterhooks/large?1385430423" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/everydayrailsrspec/large?1383017471" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/tr4w/large?1385233687" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/laravel/large?1378268457" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/a-year-with-symfony/large?1385627226" alt="" />
		    </a>
		  </li>
		  <li class="book">
		    <a href="">
		      <img class="bookimg" src="https://s3.amazonaws.com/titlepages.leanpub.com/the-lost-ten-years-of-taiwan-software-industry/large?1385365440" alt="" />
		    </a>
		  </li>
		</ul>
      </div>
 
 

	
<script>
var $table = document.getElementById("myTable"),
//number of rows per page
$n = 5,
//number of rows of the table
$rowCount = $table.rows.length,
//get the first cell's tag name (in the first row)
$firstRow = $table.rows[0].firstElementChild.tagName,
//boolean var to check if table has a head row
$hasHead = ($firstRow === "TH"),
//an array to hold each row
$tr = [],
//loop counters, to start count from rows[1] (2nd row) if the first row has a head tag
$i,$ii,$j = ($hasHead)?1:0,
//holds the first row if it has a (<TH>) & nothing if (<TD>)
$th = ($hasHead?$table.rows[(0)].outerHTML:"");
//count the number of pages
var $pageCount = Math.ceil($rowCount / $n);
//if we had one page only, then we have nothing to do ..
if ($pageCount > 1) {
	// assign each row outHTML (tag name & innerHTML) to the array
	for ($i = $j,$ii = 0; $i < $rowCount; $i++, $ii++)
		$tr[$ii] = $table.rows[$i].outerHTML;
	// create a div block to hold the buttons
	$table.insertAdjacentHTML("afterend","<div id='buttons'></div");
	// the first sort, default page is the first one
	sort(1);
}

//($p) is the selected page number. it will be generated when a user clicks a button
function sort($p) {
	/* create ($rows) a variable to hold the group of rows
	** to be displayed on the selected page,
	** ($s) the start point .. the first row in each page, Do The Math
	*/
	var $rows = $th,$s = (($n * $p)-$n);
	for ($i = $s; $i < ($s+$n) && $i < $tr.length; $i++)
		$rows += $tr[$i];
	
	// now the table has a processed group of rows ..
	$table.innerHTML = $rows;
	// create the pagination buttons
	document.getElementById("buttons").innerHTML = pageButtons($pageCount,$p);
	// CSS Stuff
	document.getElementById("id"+$p).setAttribute("class","active");
}


//($pCount) : number of pages,($cur) : current page, the selected one ..
function pageButtons($pCount,$cur) {
	/* this variables will disable the "Prev" button on 1st page
	   and "next" button on the last one */
	var	$prevDis = ($cur == 1)?"disabled":"",
		$nextDis = ($cur == $pCount)?"disabled":"",
		/* this ($buttons) will hold every single button needed
		** it will creates each button and sets the onclick attribute
		** to the "sort" function with a special ($p) number..
		*/
		$buttons = "<input type='button' value='&lt;&lt; Prev' onclick='sort("+($cur - 1)+")' "+$prevDis+">";
	for ($i=1; $i<=$pCount;$i++)
		$buttons += "<input type='button' id='id"+$i+"'value='"+$i+"' onclick='sort("+$i+")'>";
	$buttons += "<input type='button' value='Next &gt;&gt;' onclick='sort("+($cur + 1)+")' "+$nextDis+">";
	return $buttons;
}
</script>
</body>
</html>