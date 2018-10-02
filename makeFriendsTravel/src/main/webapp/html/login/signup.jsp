<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지 입니다</title>

<style>
@import url("https://fonts.googleapis.com/css?family=Open+Sans:300,400|Lora");
body {
  background: #e5e5e5;
}

/* div box styling */
.container {
  margin: auto;
  top: 10%;
  width: 650px;
  height: 550px;
  position: relative;
}

.welcome {
  background: #f6f6f6;
  width: 650px;
  height: 415px;
  position: absolute;
  top: 25%;
  border-radius: 5px;
  box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
}

.bluebox {
  position: absolute;
  top: -10%;
  left: 5%;
  background: #484858;
  width: 320px;
  height: 500px;
  border-radius: 5px;
  box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
  transition: all .5s ease-in-out;
  z-index: 2;
}

.nodisplay {
  display: none;
  transition: all .5s ease;
}

.leftbox, .rightbox {
  position: absolute;
  width: 50%;
  transition: 1s all ease;
}

.leftbox {
  left: -2%;
}

.rightbox {
  right: -2%;
}

/* font & button styling */
h1 {
  font-family: "Open Sans", sans-serif;
  text-align: center;
  margin-top: 40px;
  text-transform: uppercase;
  color: #f6f6f6;
  font-size: 2em;
  letter-spacing: 8px;
}

.title {
  font-family: "Lora", serif;
  color: #8E9AAF;
  font-size: 1.8em;
  line-height: 1.1em;
  letter-spacing: 3px;
  text-align: center;
  font-weight: 300;
  margin-top: 20%;
}

.desc {
  margin-top: -8px;
}

.account {
  margin-top: 45%;
  font-size: 10px;
}

p {
  font-family: "Open Sans", sans-serif;
  font-size: .7em;
  letter-spacing: 2px;
  color: #8E9AAF;
  text-align: center;
}

span {
  color: #e5e5e5;
}

.flower {
  position: absolute;
  width: 120px;
  height: 120px;
  top: 46%;
  left: 31%;
  opacity: .7;
}

.smaller {
  width: 120px;
  height: 120px;
  top: 48%;
  left: 31%;
  opacity: .7;
}

button {
  padding: 12px;
  font-family: "Open Sans", sans-serif;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-size: 11px;
  border-radius: 10px;
  margin: auto;
  outline: none;
  display: block;
}
button:hover {
  background: lavender;
  color: lightsteelblue;
  transition: background-color 1s ease-out;
}

.button {
  margin-top: 3%;
  background: #f6f6f6;
  color: #8E9AAF;
  border: solid 1px #8E9AAF;
}

/* form styling */
form {
  display: flex;
  align-items: center;
  flex-direction: column;
  padding-top: 7px;
}

.more-padding {
  padding-top: 35px;
}
.more-padding input {
  padding: 12px;
}
.more-padding .submit {
  margin-top: 45px;
}

.submit {
  margin-top: 25px;
  padding: 12px;
  border-color: #8E9AAF;
}
.submit:hover {
  background: ;
  border-color:#8E9AAF ;
}

input {
  background: #e5e5e5;
  width: 65%;
  color: #484858;
  border: none;
  border-bottom: 1px solid rgba(246, 246, 246, 0.5);
  padding: 9px;
  margin: 7px;
}
input::placeholder {
  color: #f6f6f6;
  letter-spacing: 2px;
  font-size: 1.3em;
  font-weight: 100;
}
input:focus {
  color: gray;
  outline: none;
  border-bottom: 1.2px solid gray;
  font-size: 1em;
  transition: .8s all ease;
}
input:focus::placeholder {
  opacity: 0;
}

label {
  font-family: "Open Sans", sans-serif;
  color: white;
  font-size: 0.8em;
  letter-spacing: 1px;
}

.checkbox {
  display: inline;
  white-space: nowrap;
  position: relative;
  left: -62px;
  top: 5px;
}

input[type=checkbox] {
  width: 7px;
  background: #ce7d88;
}
.forget{

}

.checkbox input[type="checkbox"]:checked + label {
  color: #ce7d88;
  transition: .5s all ease;
}


.star {
  display: block;
  width: 4px;
  height: 4px;
  border-radius: 50%;
  background: #fff;
  top: 20px;
  left: 250px;
  position: relative;
  transform-origin: 100% 0;
  animation: star-ani 1s infinite ease-out;
  animation-direction: normal;
  opacity: 0;
}
.star:after {
  content: "";
  position: absolute;
  top: 0px;
  left: 4px;
  border: 2px solid #f00;
  border-width: 2px 150px 2px 150px;
  border-color: transparent transparent transparent white;
  transform: rotate(-45deg) translate3d(1px, -1px, 0);
  transform-origin: 0% 100%;
  animation: shooting-ani 1s infinite ease-out;
  animation-direction: normal;
}

.two {
  top: 100px;
  left: 300px;
  background: #fff;
  animation-delay: 1.8s;
}
.two:after {
  border-color: transparent transparent transparent white;
  animation-delay: 1.8s;
}

.three {
  top: 100px;
  left: 350px;
  background: #fff;
  animation-delay: 4.5s;
}
.three:after {
  border-color: transparent transparent transparent white;
  animation-delay: 4.5s;
}

.four {
  top: 0px;
  left: 500px;
  background: #fff;
  animation-delay: 5.8s;
}
.four:after {
  border-color: transparent transparent transparent white;
  animation-delay: 5.8s;
}
 #maintag{
 	color:white;
 	text-decoration: none;
 	font-family: "Open Sans", sans-serif;
 }
@-webkit-keyframes shooting-ani {
  0% {
  }
  50% {
    transform: scale(1) rotate(-45deg) translate(0px, 0px);
  }
  100% {
    transform: scale(0.5) rotate(-45deg) translate(0px, -1px);
  }
}

@-webkit-keyframes star-ani {
  0% {
    opacity: 0;
    transform: scale(0) rotate(0) translate3d(0, 0, 0);
  }
  50% {
    opacity: 1;
    transform: scale(1) rotate(0) translate3d(-200px, 200px, 0);
  }
  100% {
    opacity: 0;
    transform: scale(1) rotate(0) translate3d(-300px, 300px, 0);
  }
 
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>

	<div class="container">
 	 <div class="welcome">
   	 <div class="bluebox">
	   	 <span class="star"></span>
	     <span class="star two"></span>
	     <span class="star three"></span>
	     <span class="star four"></span>
   	 
      <div class="signup nodisplay">
        <h1>register</h1>
        <form  name="mForm"   action="<c:url value='/login/sign1.do'/>" autocomplete="off"  onsubmit="return doSignAction()">
          <input type="text" name="id" placeholder="id" id="id">
          <button class="button submit" id="overlap">Overlap Check</button>
          <input type="text" name="name" placeholder="name">
          <input type="password" name="pass" placeholder="pass" id="pass">
          <button class="button submit">create account </button>
          
        </form>
      </div>
      
      
 
      
      <div class="signin">
        <h1>sign in</h1>
        <form class="more-padding"  name="mForm2" action="<c:url value='/login/login.do'/>" method="post" autocomplete="off" onsubmit="return doLoginAction()">
          <input type="text" name="id" placeholder="username">
          <input type="password" name="pass" placeholder="password">
          <div class="checkbox">
            <input type="checkbox" id="remember" /><label for="remember">remember me</label><br>
          </div>
          
          
          	  
       	  <button class="button submit">login</button><br>
            <a href="/makeFriendsTravel/html/main/main.do" id="maintag">메인으로 이동</a>
    	 <!-- 카카오 로그인 -->
    	      <a id="kakao-login-btn"></a>
			<a href="http://developers.kakao.com/logout"></a>

          
        </form>
      </div>
    </div>
    <div class="leftbox">
      	<h2 class="title"><span>여행가서</span><br>추억을 삼조</h2>
      	<p class="desc">Make your  <span>Travel</span></p>
	    <img class="flower smaller" src="https://i.imgur.com/xQSXJrX.jpg" alt="left.jpg"/>
	    <p class="account">have an account?</p>
	    <button class="button" id="signin">login</button>
    </div>
    <div class="rightbox">
	      <h2 class="title"><span>여행가서</span><br>추억을 삼조</h2>
	      <p class="desc">Make your  <span>Travel</span></p>
	      <img class="flower" src="https://i.imgur.com/aqUl8XD.jpg" alt="travel.jpg"/>
	      <p class="account">don't have an account?</p>
	      <button class="button" id="signup">sign up</button>
	      
    </div>
  </div>
 </div>

</div>
<script>
	$('#signup').click(function() {
	  $('.bluebox').css('transform', 'translateX(80%)');
	  $('.signin').addClass('nodisplay');
	  $('.signup').removeClass('nodisplay');
	});

	$('#signin').click(function() {
	  $('.bluebox').css('transform', 'translateX(0%)');
	  $('.signup').addClass('nodisplay');
	  $('.signin').removeClass('nodisplay');
	});
	
	//아이디 중복체크
		$("#overlap").click(function(){
		var idArr = new Array();
		<c:forEach var="item" items="${list}">
			idArr.push( '${item}' );
		</c:forEach>
		for(var i = 0; i<idArr.length; i++){
			if($("#id").val() == idArr[i]){
				alert("중복된 아이디가 존재합니다.")
				$("#id").val("").focus()
				return false;
			}
		}
			alert("중복된 아이디가 없습니다.")
	 });
	
		function doSignAction(){
            var f = document.mForm
            if(f.id.value == ""){
                f.id.focus()
                alert("아이디를 입력하세요")
                return false;
            }   
            if(f.id.value.length < 4 || f.id.value.length > 8 ){
                f.id.focus()
                alert("아이디를 최소 4~8자를 입력하세요")
                return false;
            }   
            if(f.name.value == ""){
                f.name.focus()
                alert("이름을 입력하세요")
                return false;
            }   
            if(f.pass.value == ""){
                f.pass.focus()
                alert("패스워드를 입력하세요")
                return false;
            }   
            alert("회원가입완료되었습니다. 로그인해주세요");
            
		}
		function doLoginAction() {
			 var f = document.mForm2
			 if(f.id.value == ""){
	                f.id.focus()
	                alert("아이디를 입력하세요")
	                return false;
	         }   
			if(f.pass.value == ""){
            f.pass.focus()
            alert("패스워드를 입력하세요")
            return false;
        	}   
			
		}
		
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('a1de9b36d0ed9efc6fe551ced014da2b');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
		  container: '#kakao-login-btn',
		  success: function(authObj) { 
			  Kakao.API.request({
		       url: '/v1/user/me',
		       success: function(res) {

		             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
		             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
		             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
		             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
		             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
		         	// res.properties.nickname으로도 접근 가능 )
		             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력

		           }

		         })
		  },
		  fail: function(err) {
			 alert(JSON.stringify(err));
		  }

		});

		

		
	

</script>
</body>
</html>