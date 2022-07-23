<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<script src="https://kit.fontawesome.com/c34800a0df.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
* {
	font-family: 'yg-jalnan', cursive
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@import url("https://fonts.googleapis.com/css?family=Inconsolata:700");

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

html, body {
	width: 100%;
	height: 100%;
}

.gd-container {
	max-width: 1100px;
	position: relative;
	margin: 0 auto;
	padding-left: 15px;
	padding-right: 15px;
}

#gtco-header {
	height: 700px;
	width: 100%;
}

#gtco-header>ul {
	display: inline;
}

#gtco-header .bg {
	position: relative;
}

#gtco-header .bg>img {
	height: 700px;
	width: 100%;
}

#gtco-header .bg .text>h1 {
	display: inline-block;
	z-index: 999;
	position: absolute;
	top: 200px;
	left: 200px;
	width: 100%;
	margin: 0 auto;
	font-size: 50px;
	height: 70px;
	line-height: 700px;
}

.bg:hover {
	opacity: 0.7;
}

.Wallpapers {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.login {
	width: 40%;
	height: 600px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	border: 1px solid lightgray;
}

h2 {
	color: aqua;
	font-size: 2em;
	margin-bottom: 50px;
}

.login_id {
	margin-top: 50px;
	width: 80%;
}

.login_id input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid gray;
	outline: none;
}

.login_pw {
	margin-top: 20px;
	width: 80%;
}

.login_pw input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid gray;
	outline: none;
}

.submit {
	margin-top: 50px;
	width: 80%;
}

.submit input {
	width: 100%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: #2ce8de;
	color: white;
	font-size: 1.2em;
}

.threelinks {
	text-align: center;
	margin-top: 20px;
}
</style>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<div class="card">
   
	</div>
	<br><br>
	<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title=”top">
   <i class="fa-solid fa-circle-arrow-up"></i></a>

	<form method="post" action="home.jsp">
		<div class="Wallpapers">
			<div class="login">
				<h2>로그인</h2>
				<label> <input type="radio" name="userGrade" value="member"
					checked> 일반회원 &nbsp;&nbsp; <input type="radio"
					name="userGrade" value="admin"> 관리자
				</label>
				<div class="login_id">
					<h4>아이디</h4>
					<input type="text" name="" id="" placeholder="아이디">
				</div>
				<div class="login_pw">
					<h4>비밀번호</h4>
					<input type="password" name="" id="" placeholder="비밀번호">
				</div>

				<div class="submit">
					<input type="submit" value="로그인">
				</div>

				<div class="threelinks">
					<a href="rememberID">아이디 찾기</a> &nbsp;&nbsp; <a href="rememberPW">비밀번호
						찾기</a> &nbsp;&nbsp; <a href="join.jsp">회원가입</a>
				</div>

			</div>
		</div>
	</form>
</body>
</html>
