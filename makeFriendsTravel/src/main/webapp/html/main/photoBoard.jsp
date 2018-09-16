<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:import url="topMenu.jsp"></c:import>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <style>
            * {
  box-sizing: border-box;
}
body {
  font-family: 'Helvetica Neue', Arial, sans-serif;
  background: #e0e4e7;
}
img {
  max-width: 100%;
  height: auto;
}
.wrapper {
  width: 100%;
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

    
    </style>
</head>
<body>
	<div class="wrapper">

	 <a href="bestDetail.jsp">
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/dXAhQuT.jpg">
            <div class="caption">By Joshua Sortino</div>
          </div>
        </div>
      </a>
        <div class="item">
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
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg">
            <div class="caption">By Alissa Smith</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
        
        <div class="item">
          <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg">
            <div class="caption">By Ales Krivec</div>
          </div>
        </div>
      
      </div>
</body>
</html>