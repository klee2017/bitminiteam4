<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import> 



<style>
  


.sunny {
  position: relative;
  width:7rem;
  height: 7rem;
  margin-top: 4rem;
}

.sunny:before,
.partly_cloudy__sun:before {
  content: "";
  position: absolute;
  height: 80%;
  width: 80%;
  top: 10%;
  right: -70%;
  border-radius: 50%;
  z-index: 2;
  background-color: #f1c40f;
  background-image: radial-gradient(#f1c40f, #f39c12);
  box-shadow: 0 0 25px #917508;
}
.sunny:after,
.partly_cloudy__sun:after {
  content: "";
  position: absolute;
  height: 100%;
  width: 100%;
  right: -80%;
  border-radius: 50%;
  z-index: 1;
  background-color: #f39c12;
  will-change: opacity, transform;
  animation: fadeIn 2s linear infinite reverse, scaleDown 2s linear infinite reverse;
}

.cloudy {
  position: relative;
  width: 5rem;
  height: 5rem;
}

.cloudy:before,
.partly_cloudy__cloud:before,
.rainy__cloud:before,
.thundery__cloud:before {
  content: "";
  position: absolute;
  height: 40%;
  width: 40%;
  top: 30%;
  right: 0%;
  border-radius: 50%;
  border-bottom-left-radius: 0;
  z-index: 2;
  background-color: #ecf0f1;
  background-image: radial-gradient(#ecf0f1, #bdc3c7);
  box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
}
.cloudy:after,
.partly_cloudy__cloud:after,
.rainy__cloud:after,
.thundery__cloud:after {
  content: "";
  position: absolute;
  height: 60%;
  width: 70%;
  top: 10%;
  right: 30%;
  border-radius: 50%;
  border-bottom-right-radius: 0;
  z-index: 1;
  background-color: #ecf0f1;
  background-image: radial-gradient(#ecf0f1, #bdc3c7);
  box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
}

.partly_cloudy {
  position: relative;
  width: 5rem;
  height: 5rem;
}
.partly_cloudy__sun {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 1;
}
.partly_cloudy__cloud {
  position: absolute;
  width: 60%;
  height: 60%;
  top: 40%;
  z-index: 2;
  will-change: transform;
  -webkit-animation: translateUp 2s linear infinite alternate;
          animation: translateUp 2s linear infinite alternate;
}

.rainy,
.thundery {
  position: relative;
  width: 5rem;
  height: 5rem;
  padding-left: 90px
}
.rainy__cloud,
.thundery__cloud {
  position: absolute;
  height: 100%;
  width: 100%;
  z-index: 2;
}
.rainy__cloud:before,
.thundery__cloud:before {
  background-color: #95a5a6;
  background-image: radial-gradient(#95a5a6, #7f8c8d);
}
.rainy__cloud:after,
.thundery__cloud:after {
  background-color: #95a5a6;
  background-image: radial-gradient(#95a5a6, #7f8c8d);
}
.rainy__rain,
.thundery__rain {
  position: absolute;
  height: 100%;
  width: 100%;
  z-index: 1;
  overflow: hidden;
}
.rainy__rain:before,
.thundery__rain:before {
  content: "";
  position: absolute;
  height: 80%;
  width: 20%;
  top: 20%;
  right: 50%;
  z-index: 1;
  background-image: linear-gradient(transparent, #94cdd1);
  will-change: opacity, transform;
  -webkit-animation: fadeIn 1s ease-out infinite reverse, scaleUp 1s ease-out infinite;
          animation: fadeIn 1s ease-out infinite reverse, scaleUp 1s ease-out infinite;
}
.rainy__rain:after,
.thundery__rain:after {
  content: "";
  position: absolute;
  height: 60%;
  width: 20%;
  top: 40%;
  right: 20%;
  z-index: 1;
  opacity: 0;
  background-image: linear-gradient(transparent, #94cdd1);
  will-change: opacity, transform;
  -webkit-animation: fadeIn 2s ease-out .4s infinite reverse, scaleUp 2s ease-out .4s infinite;
          animation: fadeIn 2s ease-out .4s infinite reverse, scaleUp 2s ease-out .4s infinite;
}

.thundery__cloud:before {
  background-color: #4d5656;
  background-image: radial-gradient(#4d5656, #393c3c);
  -webkit-animation: thunder 4s linear .02s infinite alternate;
          animation: thunder 4s linear .02s infinite alternate;
}
.thundery__cloud:after {
  background-color: #4d5656;
  background-image: radial-gradient(#4d5656, #393c3c);
  -webkit-animation: thunder 4s linear infinite alternate;
          animation: thunder 4s linear infinite alternate;
}
.thundery__rain:before {
  -webkit-animation: fadeIn .5s ease-out infinite reverse, scaleUp .5s ease-out infinite;
          animation: fadeIn .5s ease-out infinite reverse, scaleUp .5s ease-out infinite;
}
.thundery__rain:after {
  -webkit-animation: fadeIn .75s ease-out .2s infinite reverse, scaleUp .75s ease-out .2s infinite;
          animation: fadeIn .75s ease-out .2s infinite reverse, scaleUp .75s ease-out .2s infinite;
}


@-webkit-keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

@keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
@-webkit-keyframes scaleDown {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
}
@keyframes scaleDown {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
}
@-webkit-keyframes translateUp {
  0% {
    -webkit-transform: translatey(15%);
            transform: translatey(15%);
  }
  100% {
    -webkit-transform: translatey(0);
            transform: translatey(0);
  }
}
@keyframes translateUp {
  0% {
    -webkit-transform: translatey(15%);
            transform: translatey(15%);
  }
  100% {
    -webkit-transform: translatey(0);
            transform: translatey(0);
  }
}
@-webkit-keyframes scaleUp {
  0% {
    -webkit-transform: scaley(0);
            transform: scaley(0);
  }
  100% {
    -webkit-transform: scaley(1);
            transform: scaley(1);
  }
}
@keyframes scaleUp {
  0% {
    -webkit-transform: scaley(0);
            transform: scaley(0);
  }
  100% {
    -webkit-transform: scaley(1);
            transform: scaley(1);
  }
}
@-webkit-keyframes thunder {
  0% {
    box-shadow: 0 0 25px #fff;
  }
  2% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  49% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  50% {
    box-shadow: 0 0 25px #fff;
  }
  52% {
    box-shadow: 0 0 25px #f7db6e;
  }
  53% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  69% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  70% {
    box-shadow: 0 0 25px #fff;
  }
  71% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  75% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  76% {
    box-shadow: 0 0 25px #fff;
  }
  77% {
    box-shadow: 0 0 25px #a8d3f0;
  }
  78% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  100% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
}
@keyframes thunder {
  0% {
    box-shadow: 0 0 25px #fff;
  }
  2% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  49% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  50% {
    box-shadow: 0 0 25px #fff;
  }
  52% {
    box-shadow: 0 0 25px #f7db6e;
  }
  53% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  69% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  70% {
    box-shadow: 0 0 25px #fff;
  }
  71% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  75% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  76% {
    box-shadow: 0 0 25px #fff;
  }
  77% {
    box-shadow: 0 0 25px #a8d3f0;
  }
  78% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
  100% {
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.3);
  }
}

        @import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

*{margin:0;padding:0;}



#calendar{
  width:317px;
  margin:0 auto;
  margin-top:0%;
  margin-bottom:2%;
  margin-left:0%;
  border-radius:5px;
  font-family:'Open Sans',sans-serif;
  text-align:center;
  color:#555;
  box-shadow:0 0 50px -14px rgba(0,0,0,.8);
}

#calendar h1{
  background:#98a2cf;
  border-radius:5px 5px 0 0;
  padding:20px;
  font-size:140%;
  font-weight:300;
  text-transform:uppercase;
  letter-spacing:1px;
  color:#fff;
  cursor:default;
  text-shadow:0 0 10px rgba(0,0,0,.8);
}

#calendar table{
  border-top:1px solid #ddd;
  border-left:1px solid #ddd;
  border-spacing:0;
  border-radius:0 0 5px 5px;
}

#calendar td{
  width:100px;
  height:41px;
  background:#eee;
  border-right:1px solid #ddd;
  border-bottom:1px solid #ddd;
  padding:6px;
  cursor:pointer;
  transition:background .3s;
  -webkit-transition:background .3s;
}

#calendar td:hover:not(.current){
  background:#ddd;
}

#calendar .lastmonth,#calendar .nextmonth,#calendar .nextmonth ~ *{
  background:#fff;
  color:#999;
}

#calendar .current{
  background:#ee3333;
  font-weight:700;
  color:#fff;
  text-shadow:0 0 10px rgba(0,0,0,.5);
}

#calendar .hastask{
  font-weight:700;
}

#calendar tr:last-of-type td:first-of-type{border-radius:0 0 0 5px;}
#calendar tr:last-of-type td:last-of-type{border-radius:0 0 5px 0;}

.main {
  font-family:Arial;
  width:300px;
  display:block;
  margin:0 auto;
}
h3 {
    background: #fff;
    color: #3498db;
    font-size: 36px;
    line-height: 100px;
    margin: 10px;
    padding: 2%;
    position: relative;
    text-align: center;
}
.action{
  display:block;
  margin:100px auto;
  width:100%;
  text-align:center;
}
.action a {
  display:inline-block;
  padding:5px 10px; 
  background:#f30;
  color:#fff;
  text-decoration:none;
}
.action a:hover{
  background:#000;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js"></script>
</head>
<body>
    

  <main>
    <div class="row content">
      <div style="padding-left: 0;" class="col-md-4">
        <div class="article">
            <div class="sunny" ></div>
          <%--<h2 class="location"><b>맑음</b>
          	<br><br>23 ℃</h2> --%>
          	<h2 class="location">
          		<b>맑음</b>
          		<br><br>23 ℃
          	</h2>
          	
            
          
          <div class="info">
              <span class="date"><i class="far fa-calendar"></i>  September 09 15, 2018</span>
          </div>
           
        </div>
        
            <div id="calendar">
                <h1>September</h1>
                <table>
                  <tr><td class="lastmonth">26</td><td class="lastmonth">27</td><td class="lastmonth">28</td><td class="lastmonth">29</td><td class="lastmonth">30</td><td class="lastmonth">31</td><td>1</td></tr>
                  <tr><td>2</td><td>3</td><td >4</td><td>5</td><td>6</td><td>7</td><td>8</td></tr>
                  <tr><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td class="current">15</td></tr>
                  <tr><td class>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td class>21</td><td>22</td></tr>
                  <tr><td>23</td><td>24</td><td class>25</td><td>26</td><td class="nextmonth">27</td><td>28</td><td>29</td></tr>
                  <tr><td>30</td></tr>
                </table>
              </div>
        
      </div>
      
      <div style=" padding-left: 100px; padding-top: 150px;">
        
        <div style="width: 500px;" class="main">
            <div style ="padding-left: 60px;"  class="slider slider-for">
                <div><img src="asd.jpg" width="400px"/></div>
                <div><img src="b.jpg" width="400px"/></div>
                <div><img src="c.jpg" width="400px"/></div>
                <div><img src="d.jpg" width="700px"/></div>
                <div><h3>5</h3></div>
            </div>
            <div class="slider slider-nav">
                <div><h3>1</h3></div>
                <div><h3>2</h3></div>
                <div><h3>3</h3></div>
                <div><h3>4</h3></div>
                <div><h3>5</h3></div>
            </div>        
        </div>
      </div>
      <%--
      	<div style="padding-right: 0;" class="col-md-4">
        <div class="article">
            <div class="rainy">
                <div class="rainy__cloud"></div>
                <div class="rainy__rain"></div>
            </div>
            
            <h2 class="location">
            	<b>비</b>
            	<br><br>16  ℃ 
            </h2>
              
            
        </div>
      </div>
      
       --%>
         
      </div>
    </div>
  </main>
  
<script>
      $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
        });
$('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: true,
        focusOnSelect: true
});

$('a[data-slide]').click(function(e) {
e.preventDefault();
var slideno = $(this).data('slide');
$('.slider-nav').slick('slickGoTo', slideno - 1);
});
 </script>   
</body>
</html>