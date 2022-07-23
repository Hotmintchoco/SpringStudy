<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가기 좋은날</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
    <link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
     <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
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

        .gd-container {
  max-width: 1100px;
  position: relative;
  margin: 0 auto;
  padding-left: 15px;
  padding-right: 15px;
}

 ul > li > a {color: #212121;}
        #slider {width: 1000px; height: 700px; margin: 0 auto;}
        #slider > img {margin-left: 250px;}
        .tm-mt-0 {float: left; font-size: 50px;}
        #menubar {width: 1000px; margin: 0 auto;}
        
        
        footer {width:100%; height:50px; margin:0 auto; background-color: #eeeeee;}
        #gtco-footer,
.gtco-section {
  padding: 6em 0;
  clear: both;
  position: relative;
}
#gtco-footer .gtco-widget {
  margin-bottom: 20px;
}
        
    </style> 
</head>
<body>
    <header class="tm-site-header">
        <div>
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
     
        </div>
    </header>
    <div id="menubar">
		<table style="width: 100%;">
			<tbody>
				<tr style="width: 100%;">
					<td style="width: 20%;">
						<div class="btn-group" style="margin-left: 35px;">
							<button type="button" class="btn btn-info" style="width:100px;">메뉴</button>
							<button type="button" class="btn btn-info dropdown-toggle"
								data-toggle="dropdown">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">코스</a></li>
								<li><a href="#">축제</a></li>
								<li><a href="#">이벤트</a></li>
							</ul>
						</div>
					</td>
					<td style="width: 64%;">
					<form action="memberForm.jsp">
						<div class="input-group">
							<input type="text" class="form-control" name="search"
								placeholder="게시글 검색">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
					</td>
					<td style="width: 15%;"></td>
				</tr>
			</tbody>
		</table>
    </div>
    
	<div id="slider">
        
        
        
    </div>
    
	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-3">
					<div class="gtco-widget">
						<h3>About Us</h3>
						<p> 2022 GoodDayTrip Team</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="gtco-widget">
						<h4 class="text-uppercase fw-bold mb-4">
            Partners 모집
          </h4>
					<p>파트너와의 ‘열린’ 소통 및 콘텐츠 제휴를 환영합니다.</p>
						
					</div>
				</div>

				<div class="col-md-3">
					<div>
		<h4 class="text-uppercase fw-bold mb-4">POST</h4>
						
							<a href="#"><p>여행지 포스트</p></a>
							<a href="#"><p>코스 포스트</p></a>
							<a href="#"><p>축제 포스트</p></a>
							
						
					</div>
				</div>

			<div class="col-md-3">
          <!-- Links -->
          <h4 class="text-uppercase fw-bold mb-4">
            Contact
          </h4>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            gooddaytip@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 82 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 82 234 567 89</p>
        </div>
				

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2022 GoodDayTrip Team</small> 
			
					</p>
					
				</div>
			</div>
		</div>
	
	</footer>
	
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>    
    <script src="js/templatemo-script.js"></script>
</body>
</html>