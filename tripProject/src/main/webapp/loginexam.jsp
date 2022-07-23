<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>로그인 연습</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
     <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     <script src="https://kit.fontawesome.com/c34800a0df.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
           @font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
      
   * {font-family: 'yg-jalnan', cursive }

 ul > li > a {color: #212121;}
 
.bg:hover {
  opacity:0.7;
 }
 #slider {width: 1000px; height: 600px; margin: 0 auto;}
</style>
</head>
	<nav class="navbar">
        <div class="navbar_logo">
            <i class="fa-solid fa-map-location-dot"></i>
            <a href="home.jsp">여행가기 좋은날</a>
        </div>
        <ul class="navbar_menu">
           <li><a href="mypage.jsp"><i class="fa-solid fa-magnifying-glass"></i></a></li>  
           <li><a href="destination.jsp">여행지 추천</a></li>  
           <li><a href="course.jsp">코스 추천</a></li>  
           <li><a href="festival.jsp">축제</a></li>  
            <li><a href="#">로그인</a></li> 
            </ul>
 
        
    </nav>
<body>
<!-- header card -->
	
	<div class="card">
   
	</div>
	<br><br>
<div id = "slider">
<!-- Section: Design Block -->
<section class="text-center">
  <!-- Background image -->
  <div class="p-5 bg-image" style="
        background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg');
        height: 200px;
        "></div>
  <!-- Background image -->

  <div class="card mx-4 mx-md-5 shadow-5-strong" style="
        margin-top: -100px;
        background: hsla(0, 0%, 100%, 0.8);
        backdrop-filter: blur(30px);
        ">
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <h2 class="fw-bold mb-5">Sign up now</h2>
          <form>
           
            <!-- id input -->
            <div class="form-outline mb-4">
              <input type="id" id="form3Example3" class="form-control" />
              <label class="form-label" for="form3Example3">아이디</label>
            </div>

            <!-- Password input -->
           <div class="form-outline mb-4">
              <input type="pwd" id="form3Example3" class="form-control" />
              <label class="form-label" for="form3Example3">비밀번호</label>
            </div>
             <!-- 아이디,비밀번호 찾기 -->
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                   <a href="#!" class="text-body">아이디 찾기</a>
                </div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                  <a href="#!" class="text-body">비밀번호 찾기</a>
                </div>
              </div>
            </div>
         

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">
              Sign up
            </button>

            
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->




</div>

<footer>
	
<div class="card text-center">
 
  <div class="card-body">  
    <p class="card-text"><h4> GoodDayTrip Team</h4></p>
    <br>
    <p class="card-text"><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
    <p class="card-text"><i class="fas fa-envelope me-3"></i>gooddaytip@example.com</p>
    <p class="card-text"><i class="fas fa-phone me-3"></i> + 82 234 567 88</p>
    <p class="card-text"><i class="fas fa-print me-3"></i> + 82 234 567 89</p>
    <br>
    <p class="card-text"> Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights served. </p>
    <br>
    
  </div>
</div>
	
	</footer>
</body>

</html>