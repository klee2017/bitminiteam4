<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
List<String> idList = (List<String>)request.getAttribute("idList");
List<String> imgList = (List<String>)request.getAttribute("imgList");
int i=0;
int j=0;
%> 
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
#photo {
  max-width: 100%;
  height: auto;
}
#photo2 {
  width: 400px;
  height: 290px;
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
.itemPhoto {
  display: inline-block;
  margin-top: 2rem;
  
}
.itemPhoto .polaroid:before {
  content: '';
  position: absolute;
  z-index: -1;
  transition: all 0.35s;
}
.itemPhoto:nth-of-type(4n+1) {
  transform: scale(0.8, 0.8) rotate(5deg);
  transition: all 0.35s;
}
.itemPhoto:nth-of-type(4n+1) .polaroid:before {
  transform: rotate(6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.itemPhoto:nth-of-type(4n+2) {
  transform: scale(0.8, 0.8) rotate(-5deg);
  transition: all 0.35s;
}
.itemPhoto:nth-of-type(4n+2) .polaroid:before {
  transform: rotate(-6deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.4);
}
.itemPhoto:nth-of-type(4n+4) {
  transform: scale(0.8, 0.8) rotate(3deg);
  transition: all 0.35s;
}
.itemPhoto:nth-of-type(4n+4) .polaroid:before {
  transform: rotate(4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  right: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.itemPhoto:nth-of-type(4n+3) {
  transform: scale(0.8, 0.8) rotate(-3deg);
  transition: all 0.35s;
}
.itemPhoto:nth-of-type(4n+3) .polaroid:before {
  transform: rotate(-4deg);
  height: 20%;
  width: 47%;
  bottom: 30px;
  left: 12px;
  box-shadow: 0 2.1rem 2rem rgba(0,0,0,0.3);
}
.itemPhoto:hover {
  filter: none;
  transform: scale(1, 1) rotate(0deg) !important;
  transition: all 0.35s;
}
.itemPhoto:hover .polaroid:before {
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
		<c:forEach  var="b" items="${bestReviewList}">
			 <a href="/makeFriendsTravel/jsp/board/review/detail.do?no=${b.no}">
		        <div class="itemPhoto">
		          <div class="polaroid">
		          				  <%
						          	if(imgList.get(j)=="none"){
						          			
						          %>
						          	<img  id="photo2" src="http://localhost:8000/imgfolder/default.jpg"/>
						          <% 
						          j++;
						          	} else {
						          %>
						          	<img id="photo2" src=<%=imgList.get(j)+"jpg"%>>	
						          <%
		
						          j++;
						          	}
						          %>
		            <div class="caption"><%=idList.get(i++) %></div>
		          </div>
		        </div>
		      </a>
		</c:forEach>
      </div>
</body>
</html>