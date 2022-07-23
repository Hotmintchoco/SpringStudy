<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>여행가기 좋은날</title>
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
.carousel-inner{
   // height: 300px;
}
p {color : #212121;}
.item, img{
    height: 500px; !important;
    width:  100% !important;
    
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="card">
   
</div>
<br><br>
   <a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title=”top">
   <i class="fa-solid fa-circle-arrow-up"></i></a>
   <!-- header card -->
   
   <!-- header card -->
   
   <div class="card">
   
   </div>
   

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="carousel-img d-block w-100" src="img/jejudo.jpg" alt="First slide">
            <div class="carousel-caption d-none d-md-block">
                <p class="subtitle"> <h1>올 여름, 해수욕장 어디로 가지?</h1></p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="carousel-img d-block w-100" src="img/BlueHouse.jpg" alt="Second slide">
             <div class="carousel-caption d-none d-md-block">
                <p class="subtitle"><h1>74년 만에 공개된 비밀 정원, 청와대 이야기</h1></p>
            </div>
        </div>
        <div class="carousel-item">
            <img class="carousel-img d-block w-100" src="img/Woljeonggyo.jpg" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <p class="subtitle"><h1>신라 천년의 밤을 만나다! 경주 동궁과 월지, 월정교</h1></p>
            </div>
        
        </div>
    </div>
    
    
    <!-- Control Btn -->
    
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

   
   
   
   
   
         
   <br><br><br>
   <div class="container">
   <div class="text-center">
               <h2>함께 떠나는 힐링 테마여행</h2>
               <p> 설명?</p>
            </div>
   <div class="row g-1">
            <div class="col-4">
               <a href="images/img_1.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/seosan.jpg" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>충청도</h2>
                     <p>역사와 자연이 조화로운 서산 여행</p>
                     <p><span class="btn btn-primary"> 보러가기</span></p>
                  </div>
               </a>
            </div>
            <div class="col-4">
               <a href="images/img_2.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/yeongwol.jpg" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>강원도 </h2>
                     <p>영월로 떠나는 어느 여름날의 강원도 힐링여행</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>
            <div class="col-4">
               <a href="images/img_3.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/pet.jpg"" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>경상도</h2>
                     <p>반려견과의 특별한 하루를, 의성펫월드</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>


            <div class="col-4">
               <a href="images/img_4.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/suwon.jpeg" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>경기도</h2>
                     <p>하루만에 즐기는 수원 당일치기 여행코스</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>

            <div class="col-4">
               <a href="images/img_5.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/yeosu.jpg" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>전라도</h2>
                     <p>잠들지 않는 낭만의 도시, 여수를 만끽하다 </p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>

            <div class="col-sm-4">
               <a href="images/img_6.jpg" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="img/jeju.jpeg" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>제주도</h2>
                     <p>섬 안에 섬을 여행하는 방법, 가파도 여행 코스</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>

         </div>
      </div>
   
   <br><br><br>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>   
   