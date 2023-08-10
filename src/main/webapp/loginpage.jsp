<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/login.css" rel="stylesheet">
<script src="js/jquery-3.7.0.js"></script>
<script src="js/header.js"></script>
<script>
 $(function(){
	 
	 $(".join").click(function(){
		 location.href = "join.net";
	 });
	 
	 
	 const id = '${id}';
	 if(id){
		 $("#id").val(id);
		 $("#remember_id").prop('checked', true);
	 }
	 
	 $("button").click(function(){
		location.href = "mainpage.jsp"; 
	 });
	 
	function idPopup(){
		var popUrl = "find_id.html";
		var popOption = "top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no";
        window.open(popUrl, popOption);
	}
 });

</script>
</head>
<body>
<div class="container">
</div> 
<div class="user_login">
 <form class="login_form">
	<div class="login_logo_container">
		<img src="img/login_logo.jpg" class="login_logo" id="logo">
	</div> 
	
	<div class="login_form_container">
 	  <div class="login_input">
 		 <div class="login_id">
			<input type="text" name="id" class="id" id="input_id" data-min-width="200" data-min-height="50"
			 		data-text-content="true" value="" placeholder="아이디를 입력하세요">
 		 </div>
 		 <div class="login_pass">
 			<input type="password" name="pass" class="pass" id="input_pass" data-min-width="200" data-min-height="50"
					data-text-content="true" value="" placeholder="비밀번호를 입력하세요">
 		 </div>
 	  </div>
 	  <div class="login_setting">
		<input type="checkbox" class="login_setting_input" id="remember_id">
		<label class="login_setting_label" for="remember_id">아이디 기억하기</label>
		
		<input type="checkbox" class="login_setting_input" id="remember_login">
		<label class="login_setting_label" for="remember_login">자동 로그인</label>
 	  </div>
      <div class="d-flex justify-content-center mt-3 login_container">
 		<button type="button" name="button" class="btn login_btn">로그인</button>
      </div>
    </div>
	<div class="login_process" id="login_process">
 		<a href="#" class="find_id" onclick="idPopup();"><span class="user_find_id"> 아이디 찾기</span></a>&nbsp;|
 		<a href="#" class="find_pass"><span class="find_pass"> 비밀번호 찾기</span></a>&nbsp;|
  		<a href="#" class="join_memeber"><span class="join"> 회원가입</span></a>
	</div>
 </form>
 <div class="cafe_login_container">
		<a href="#" class="cafe_logo"><img src="img/cafe_icon.png" id="cafe_logo"></a>
 </div>
</div>
</body>
</html>

 
