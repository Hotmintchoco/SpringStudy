<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<script src="https://kit.fontawesome.com/c34800a0df.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 서머노트링크 -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
<!-- /서머노트링크 -->
<style>
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
   font-family: 'yg-jalnan', cursive
}

html, body {
   width: 100%;
   height: 100%;
}

.head_container {
   position: absolute;
   margin: auto;
   top: 0;
   left: 0;
   right: 50px;
   bottom: 0;
   width: 200px;
   height: 100px;
}

.head_container .search {
   position: absolute;
   margin: auto;
   top: 0;
   right: 0;
   bottom: 0;
   left: 0;
   width: 40px;
   height: 40px;
   background: #98a6c3;
   border-radius: 50%;
   transition: all 0.5s;
   z-index: 4;
}

.head_container .search:hover {
   cursor: pointer;
}

.head_container .search::before {
   content: "";
   position: absolute;
   margin: auto;
   top: 22px;
   right: 0;
   bottom: 0;
   left: 22px;
   width: 12px;
   height: 2px;
   background: white;
   transform: rotate(45deg);
   transition: all 0.5s;
}

.head_container .search::after {
   content: "";
   position: absolute;
   margin: auto;
   top: -5px;
   right: 0;
   bottom: 0;
   left: -5px;
   width: 25px;
   height: 25px;
   border-radius: 50%;
   border: 2px solid white;
   transition: all 0.5s;
}

.head_container input {
   position: absolute;
   margin: auto;
   top: 0;
   right: 0;
   bottom: 0;
   left: 0;
   width: 50px;
   height: 50px;
   outline: none;
   border: none;
   color: black;
   padding: 0 80px 0 20px;
   border-radius: 30px;
   box-shadow: 0 0 25px 0 #98b2cd, 0 20px 25px 0 rgba(0, 0, 0, 0.2);
   transition: all 0.5s;
   opacity: 0;
   z-index: 5;
   font-weight: bolder;
   letter-spacing: 0.1em;
}

.head_container input:hover {
   cursor: pointer;
}

.head_container input:focus {
   width: 200px;
   opacity: 1;
   cursor: text;
}

.head_container input:focus ~ .search {
   right: -150px;
   background: #98a6c3;
   z-index: 6;
}

.head_container input:focus ~ .search::before {
   top: 0;
   left: 0;
   width: 25px;
}

.head_container input:focus ~ .search::after {
   top: 0;
   left: 0;
   width: 25px;
   height: 2px;
   border: none;
   background: white;
   border-radius: 0%;
   transform: rotate(-45deg);
}

.head_container input::placeholder {
   color: white;
   opacity: 0.5;
   font-weight: bolder;
}

</style>
<title>Insert title here</title>
</head>
<body>
<header>
   <nav class="navbar">
      <div class="navbar_logo">
         <i class="fa-solid fa-map-location-dot"></i> <a href="home.jsp">여행가기
            좋은날</a>
      </div>
      <div class="head_container">
         <form action="home.jsp">
            <input type="text" name="search" placeholder="Search...">
               <div class="search">
               </div>
         </form>
      </div>
      <ul class="navbar_menu">
         <li><a href="destination.jsp">여행지 추천</a></li>
         <li><a href="course.jsp">코스 추천</a></li>
         <li><a href="festival.jsp">축제</a></li>
         <li><a href="board.jsp">자유게시판</a></li>
         <li><a href="login.jsp">로그인</a></li>
      </ul>
   </nav>
</header>
</body>
</html>