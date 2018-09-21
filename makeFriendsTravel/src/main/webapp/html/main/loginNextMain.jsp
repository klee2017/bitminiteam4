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
<link rel="stylesheet" href="<c:url value='../main/menu.css'/> "/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css"/>

<script src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>
<style>
.item{
		-moz-border-radius: 100%;
		-webkit-border-radius: 100%;
		overflow: hidden;
		height: 100px;
		width: 100px;
		    margin-left: 850px;
    	margin-top: -82px;
    	margin-bottom: 30px;
}
	.item.pic1{
		background-image: url('https://images.unsplash.com/photo-1450101499163-c8848c66ca85?dpr=1&auto=format&fit=crop&w=1500&h=1001&q=80&cs=tinysrgb&crop=');
		background-repeat: no-repeat;
		position: relative;
		background-size: auto 100%;
		background-position: center center;
		transition: background-size 0.3s ease;
		-webkit-filter: grayscale(1);
		        filter: grayscale(1);

	}
	.item.pic1:hover{
		background-size: auto 130%;
		transition: background-size 0.3s ease;
		-webkit-filter: grayscale(0);
		        filter: grayscale(0);
	}
</style>

	<header>
    <div class="title content">
      <h1><a href="/makeFriendsTravel/html/main/main2.jsp">travel</a></h1>
     	 <div>
     	 <div class="nav1 content">
      		<div class="item pic1"></div><br>
      		<span style="float: right; margin-top: -52px; margin-right: 22px;font-weight: 800;">나원석님 환영합니다.</span> 
    	 </div>
      	 <div class="nav content" style="margin-bottom: -46px;">
      		  
     	 </div>
     	 </div>
      </div>
    <div class="nav content">
      <ul>
        <li class="current"><a href="/makeFriendsTravel/html/main/main2.jsp">Home</a></li>
        <li><a href="/makeFriendsTravel/html/Mypage.jsp">Mypage</a></li>
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
