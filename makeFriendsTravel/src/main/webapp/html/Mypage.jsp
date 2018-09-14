<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css?family=Lato');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-size: 16px;
  font-family: "Lato", sans-serif;
}

h1 {
  margin: 20px;
  text-align: center;
  font-size: 34px;
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
  max-width: 900px;
  width: 100%;
  margin: auto;
  padding: 20px;
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
  border: 3px solid #333;
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
  background-color: rgba(20, 20, 20, 0.85);
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
.input__container > * input {
  width: 100%;
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
input[type="password"] {
  padding: 5px 8px;
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
</style>

</head>
<body>
<h1>Update Profile</h1>
<div class="settings-message" id="js-message"></div>
<form>
  <input id="js-file-uploader" class="hidden" name="profile-picture" type="file" accept="image/png, image/jpeg" />

  <div id="js-profile-pic" class="profile-pic__container">Upload Profile Pic
    <div id="js-profile-trigger" class="profile-pic__foreground">Upload Profile Pic</div>
  </div>
  
  <div class="input__container">
          <h1>필수 사항</h1>

    <div class="input-container__single">
      <label for="name">Name:</label>
      <input type="text" name="name" id="name" />
    </div>
    
    <div class="input-container__single">
      <label for="email">Email:</label>
      <input type="text" name="email" id="email" />
    </div>
    <div class="input-container__single">
      <label for="js-password">Password:</label>
      <input type="password" id="js-password" name="password" />
      <span id="js-toggle-password" class="input-action">Display Password</span>
    </div>
    <div class="input-container__single">
      <label for="js-password-confirm">Confirm Password:</label>
      <input type="password" id="js-password-confirm" name="confirm-password" />
      <span class="input-action" id="js-suggest-password">Suggest Password</span>
    </div>
      <h1>선택 사항</h1>

    <div class="input-container__single">
      <label for="name1">Name:</label>
      <input type="text" name="name1" id="name" />
    </div>
    
    <div class="input-container__single">
      <label for="email1">Email:</label>
      <input type="text" name="email1" id="email1" />
    </div>
    <div class="input-container__single">
        <div class="input-container__single">
      <label for="name1">Name:</label>
      <input type="text"  name="name1" id="name" />
    </div>
    
    
    </div>
  </div>
  <input type="submit" value="Save Profile" />
</form>
<script>
const messageElement = document.querySelector("#js-message");

//Image elements
const fileUpload = document.querySelector("#js-file-uploader");
const profileTrigger = document.querySelector("#js-profile-trigger");
const profileBackground = document.querySelector("#js-profile-pic");

//Password objects
const password = document.querySelector("#js-password");
const passwordConfirm = document.querySelector("#js-password-confirm");
const passwordToggle = document.querySelector("#js-toggle-password");
const passwordSuggest = document.querySelector("#js-suggest-password");
let passwordDisplayed = false;

//On form submission, check the passwords match and display a message if the password (would have) been saved.
document.querySelector("form").addEventListener("submit", function(event) {
event.preventDefault();

if (password.value != passwordConfirm.value) {
 messageElement.innerText = "The passwords don't match!";
 messageElement.classList.add("settings-message--error");
 messageElement.classList.remove("settings-message--success");
} else {
 messageElement.innerText = "Settings successfully saved!";
 messageElement.classList.add("settings-message--success");
 messageElement.classList.remove("settings-message--error");
}
});

//Trigger the file upload to set the profile picture
profileTrigger.addEventListener("click", function(event) {
event.preventDefault();
fileUpload.click();
});

//new profile pic added, display it
fileUpload.addEventListener("change", function(event) {
if (fileUpload.files && fileUpload.files[0]) {
 let reader = new FileReader();
 reader.onload = function(event) {
   // Remove the initial 'set picture image' text
   profileBackground.childNodes[0].nodeValue = "";
   // Set the new image src as the background
   profileBackground.style.backgroundImage =
     "url('" + event.target.result + "')";
 };
 reader.readAsDataURL(fileUpload.files[0]);
}
});

//Add a suggested password for the user (to both password & confirm password inputs)
passwordSuggest.addEventListener("click", function(event) {
let newPassword = btoa(
 Math.random()
   .toString(36)
   .substring(2)
);
password.value = newPassword;
passwordConfirm.value = newPassword;
});

//Toggle the type of input the password field is (for user visibility)
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
</script>
</body>
</html>