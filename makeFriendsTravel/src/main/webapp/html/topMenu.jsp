<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pacifico">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.2/css/bootstrap.css">
<link rel="stylesheet" href="<c:url value='./menu.css'/> "/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>
<script src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>


	<header>
    <div class="title content">
      <h1><a href="/makeFriendsTravel/html/main/main2.jsp">travel</a></h1>
     	 <div>
     	 <div class="nav1 content">
      		<input name="test" class="search float-right" placeholder="Id를 입력하세요..."><br>
    	 </div>
      	 <div class="nav content">
      		 <input name="test" class="search float-right" placeholder="비밀번호를 입력하세요...">   
     	 </div>
     	 </div>
      </div>
    <div class="nav content">
      <ul>
        <li class="current"><a href="/makeFriendsTravel/html/main/main2.jsp">Home</a></li>
        <li><a href="/makeFriendsTravel/html/reviewList.jsp">Review</a></li>
        <li><a href="/makeFriendsTravel/html/main/photoBoard.jsp">Best Photo</a></li>
        <li><a href="/makeFriendsTravel/html/Q&AList.jsp">Q&A</a></li>
      </ul>
       <form name="mForm" action = "searchList.jsp"  onsubmit="return Enter_Check()">
      <input name="test" class="search float-right" placeholder="Search..">
      </form>
    </div>
  </header>

  <script>
	  function Enter_Check(){
		
	      // 엔터키의 코드는 13입니다.

			var test = document.mForm.test
		   if(test.value =="") {
		  		alert("입력해라")
		  		return false;
		  	}    
	  }
		
  </script>
