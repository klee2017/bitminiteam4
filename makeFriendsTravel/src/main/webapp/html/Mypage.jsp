
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous">
</script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<style>

@import url("https://fonts.googleapis.com/css?family=Open+Sans:300,400|Lora");


body{
	background-color: #e5e5e5; 
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-size: 16px;
  font-family:  "Lora", serif;
}

h1 {
  margin: 20px;
  text-align: center;
  font-size: 50px;
    font-family: "Pacifico", cursive;
  
   
}
h2 {
  margin: 10px;
  text-align: left;
  font-size: 30px;
}


.settings-message {
  font-size: 20px;
  text-align: center;
}
.settings-message--error {
  color: #923;
}
.settings-message--success {
  color: #293;
}

.hidden {
  display: none;
}

form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  max-width: 1500px;
  width: 100%;
  margin: auto;
  padding: 10px;
}
form > *:not(:first-of-type) {
  margin-top: 20px;
}
@media (min-width: 750px) {
  form {
    flex-direction: row;
  }
  form > * {
    flex-grow: 0;
    flex-shrink: 0;
  }
  form .input__container {
    padding: 0 50px;
    flex-basis: calc(100% - 300px);
  }
  form .profile-pic__container {
    flex-basis: 300px;
  }
}

.profile-pic__container,
.profile-pic__foreground {
  line-height: 300px;
  text-align: center;
}

.profile-pic__container {
  overflow: hidden;
  position: relative;
  border: 3px solid gray;
  border-radius: 100%;
  width: 300px;
  height: 300px;
  background-size: cover;
  background-position: center;
}


.profile-pic__foreground {
  position: absolute;
  top: 0;
  width: 300px;
  height: 300px;
  color: transparent;
  cursor: pointer;
  transition: color 0.2s, background-color 0.2s;
}
.profile-pic__foreground:hover {
  color: #fff;
  background-color: lightgray ;
}

.input__container {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.input__container > * {
  margin-bottom: 20px;
  flex-shrink: 0;
  flex-grow: 0;
  flex-basis: 100%;
}
@media (min-width: 750px) {
  .input__container > * {
    flex-basis: 49%;
  }
}
.input__container > * input,select {
  width: 100%;
}
#email {
  width: 204%;
}


.input-action {
  display: block;
  text-align: right;
  font-size: 12px;
  font-color: #777;
  cursor: pointer;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="radio"],
select {
  padding: 10px 8px;
  border-radius: 3px;
}

input[type="submit"] {
  border: 2px solid #333;
  border-radius: 3px;
  padding: 7px 15px;
  -webkit-appearance: none;
  background-color: #fff;
  color: #333;
  transition: color 0.2s, background-color 0.2s;
}
input[type="submit"]:hover, input[type="submit"]:focus {
  background-color: #333;
  color: #eee;
}
@media (min-width: 750px){
	.input__container > h2{
		flex-basis: 100%;
	}
}

#hrone{
		width : 20%;
		
}
#hrtwo{
	width: 10%;
}
#maintag{
 	color:gray;
 	text-decoration: none;
 	position : relative;
 	left : 550px;
 	top : 8px;
 	font-size: 30px;
 	font-family: "Open Sans", sans-serif;
 }
 <!-- -->
 #board-list {
		max-width: 1000px;
		margin: auto;
		padding-top: 50px;
	}
	#board-list {
		max-width: 1000px;
		margin: auto;
		padding-top: 50px;
	}
	#table_id_filter {
		display: none;
	}
	.dataTables_wrapper{
		position: relative;
		clear: both;
		zoom : 1;
		width: 148%;
		left: -26%;
	}
	.dataTables_wrapper .dataTables_length {
		float: right;
	}
	.dataTables_info {
		display:none;
	}
	#board-name {
		text-align: center;
	}
	#no{
		width:10%;
	}
	#writer{
		width:20%;
	}
	#title{
		width:50%;
	}
</style>

</head>
<body>


<h1>Update Profile</h1>
<div class="settings-message" id="js-message"></div>

<form action="<c:url value='/login/update.do'/>" method="post" encType="multipart/form-data">
	<input type="hidden" name="no" value="<%=Integer.parseInt(request.getParameter("no"))%>">

  <input id="js-file-uploader" name="poto" type="file"/>

  <div id="js-profile-pic" class="profile-pic__container">Upload Profile Pic
  
    <div id="js-profile-trigger" class="profile-pic__foreground">Upload Profile Pic</div>
    
  </div>
  
  <div class="input__container">
          <h2>Essential Point<hr id="hrone"></h2>

    <div class="input-container__single">
      <label for="id">UserId:</label>
      <input type="text" name="id" id="id" placeholder="${user.id}" readonly/>
    </div>
    
    <div class="input-container__single">
      <label for="name">name:</label>
      <input type="text" name="name" id="name" >
    </div>
    
    <div class="input-container__single">
      <label for="js-password">Password:</label>
      <input type="password" id="js-password" name="pass"/>
      <span id="js-toggle-password" class="input-action">Display Password</span>
    </div>
    
    <div class="input-container__single">
      <label for="js-password-confirm">Confirm Password:</label>
      <input type="password" id="js-password-confirm" name="pass">
      <span class="input-action" id="js-suggest-password">Suggest Password</span>
    </div>
      
      <h2>Option<hr id="hrtwo"></h2>

    <div class="input-container__single">
      <label for="favoriteplace">Favorite Place:</label>
      <select name="favoriteplace">
	        <option value="1" selected="">-- 선택 --</option>
	      	<option value="2">서울</option>
	  		<option value="3">경기</option>
	  		<option value="4">강원</option>
	  		<option value="5">충청</option>
	  		<option value="6">전라</option>
	  		<option value="7">경상</option>
	  		<option value="8">제주</option>
      </select>
    </div>
    
    <div class="input-container__single">
      <label for="gender">Gender:</label>
      <select name="gender">
	        <option value="1" selected="">-- 선택 --</option>
	      	<option value="2">남성</option>
	      	<option value="3">여성</option>
      </select>
    </div>
    
    <div class="input-container__single">
        <div class="input-container__single">
      <label for="email">Email:</label>
      <input type="text" name="email" id="email">
    </div>
    
    
    </div>
  </div>
 		<input type="submit" value="수정완료" id="update">
 		 <a href="/makeFriendsTravel/html/main/main.do" id="maintag">Privious..</a>
 </form>
 
<!-- 내가쓴글 확인하기 -->
<form>
  <div id="board-list">
		<table id="table_id" class="display">
		    <thead>
		        <tr>
		            <th id="no">글 번호</th>
		            <th id="title">글 제목</th>
		            <th id="writer">작성자</th>
		            <th id="reg_date">작성일</th>
		        </tr>
		    </thead>
		    <tbody>
		        <tr>
		            <td>3</td>
		            <td>안녕하세요. 제가 글 제목을 길게 써보겠습니다. 옛날 옛적에 호랑이가 한마리 살았다는데</td>
		            <td>김건모</td>
		            <td>2018/09/18</td>
		        </tr>
		        <tr>
		            <td>2</td>
		            <td>김수한무거북이와두루미그다음은 모르는데 뭐였더라</td>
		            <td>김건모<td>
		            <td>2020/04/28</td>
		        </tr>
		        <tr>
		            <td>1</td>
		            <td>난 너를 믿었던만큼 내 친구도 믿었기에 내 친구를 소개시켜줫꼬 그런 날들이</td>
		            <td>김건모</td>
		            <td>1997/01/01</td>
		        </tr>
		    </tbody>
		</table>
    
</div>
  



</form>
<script>

const messageElement = document.querySelector("#js-message");


//이미지 요소
//const fileUpload = document.querySelector("#js-file-uploader");
//const profileTrigger = document.querySelector("#js-profile-trigger");
//const profileBackground = document.querySelector("#js-profile-pic");

/*
//암호 개체
const password = document.querySelector("#js-password");
const passwordConfirm = document.querySelector("#js-password-confirm");
const passwordToggle = document.querySelector("#js-toggle-password");
const passwordSuggest = document.querySelector("#js-suggest-password");
let passwordDisplayed = false;
//양식 제출시 암호가 일치하는지 확인하고 암호가 저장되어 있으면 메시지를 표시합니다.
document.querySelector("form").addEventListener("submit", function(event) {
event.preventDefault();

if (password.value != passwordConfirm.value) {
 messageElement.innerText = "오류:비밀번호가 일치하지 않으니 다시 확인해 주십시오.";
 messageElement.classList.add("settings-message--error");
 messageElement.classList.remove("settings-message--success");
} else {
 messageElement.innerText = "수정이 완료되었습니다!";
 messageElement.classList.add("settings-message--success");
 messageElement.classList.remove("settings-message--error");
}
});
*/
// 프로필 사진을 설정하기 위해 파일 업로드를 트리거합니다.
profileTrigger.addEventListener("click", function(event) {
//event.preventDefault();
fileUpload.click();
});

//새 프로필 사진이 추가되고 표시됩니다
fileUpload.addEventListener("change", function(event) {
if (fileUpload.files && fileUpload.files[0]) {
 let reader = new FileReader();
 reader.onload = function(event) {
   // 초기 '사진 이미지 설정'텍스트 제거
   profileBackground.childNodes[0].nodeValue = "";
   // 새 이미지 src를 배경으로 설정하십시오
   profileBackground.style.backgroundImage =
     "url('" + event.target.result + "')";
 };
 reader.readAsDataURL(fileUpload.files[0]);
}
});

/*
//사용자에게 제안 된 암호를 추가하십시오 (암호 및 암호 입력에 모두 해당).
passwordSuggest.addEventListener("click", function(event) {
let newPassword = btoa(
 Math.random()
   .toString(36)
   .substring(2)
);
password.value = newPassword;
passwordConfirm.value = newPassword;
});

//비밀번호 입력란의 입력 유형을 토글합니다 (사용자에게 공개).
passwordToggle.addEventListener("click", function(event) {
passwordDisplayed = !passwordDisplayed;

if (passwordDisplayed) {
 passwordToggle.innerText = "Hide Password";
 passwordConfirm.type = "text";
 password.type = "text";
} else {
 passwordToggle.innerText = "Display Password";
 passwordConfirm.type = "password";
 password.type = "password";
}
});
$(document).ready( function () {
*/ 
    $('#table_id').DataTable();
/*    $('#table_id').DataTable({
    	data: dataSet,
    	columns: col_kor,
        language : lang_kor
} );
    }); */
</script> 


</body>
</html>