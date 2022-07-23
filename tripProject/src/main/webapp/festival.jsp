<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>축제</title>
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

  .gd-container {
  max-width: 1100px;
  position: relative;
  margin: 0 auto;
  padding-left: 15px;
  padding-right: 15px;
}

 ul > li > a {color: #212121;}
 #slider {width: 1000px; height: 1500px; margin: 0 auto;}
.card {
   margin-bottom: 1rem;
}

p {color : #212121;}
</style>
  <script>
  var xhr = new XMLHttpRequest();
  var url = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival'; /*URL*/
  var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D'; /*Service Key*/
  queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
  queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
  queryParams += '&' + encodeURIComponent('MobileOS') + '=' + encodeURIComponent('ETC'); /**/
  queryParams += '&' + encodeURIComponent('MobileApp') + '=' + encodeURIComponent('AppTest'); /**/
  queryParams += '&' + encodeURIComponent('arrange') + '=' + encodeURIComponent('A'); /**/
  queryParams += '&' + encodeURIComponent('listYN') + '=' + encodeURIComponent('Y'); /**/
  queryParams += '&' + encodeURIComponent('areaCode') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('sigunguCode') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('eventStartDate') + '=' + encodeURIComponent('20220701'); /**/
  queryParams += '&' + encodeURIComponent('eventEndDate') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('modifiedtime') + '=' + encodeURIComponent(''); /**/
  xhr.open('GET', url + queryParams);
  xhr.onreadystatechange = function () {
      if (this.readyState == 4) {
          alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
      }
  };

  xhr.send('');
           
       	
  </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title="âtop">
	<i class="fa-solid fa-circle-arrow-up"></i></a>
	
	<!-- header card -->
	
	<div class="card">
   
	</div>
	<br><br>
	
<div id="slider">
 <!-- 여기에 내용 넣으세요 -->
 <div class="card">
  <div class="card-body">
     <button type="button" class="btn btn-light">서울시</button>
<button type="button" class="btn btn-light">경기도</button>
<button type="button" class="btn btn-light">강원도</button>
<button type="button" class="btn btn-light">충청북도</button>
<button type="button" class="btn btn-light">충청남도</button>
<button type="button" class="btn btn-light">경상남도</button>
<button type="button" class="btn btn-light">경상북도</button>
<button type="button" class="btn btn-light">전라북도</button>
<button type="button" class="btn btn-light">전라남도</button>
<button type="button" class="btn btn-light">제주도</button>
  </div>
</div>
<br><br>

	<div class="container mb-3 mt-3">

 
 <div class="row g-1">
            <div class="col-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>충청도</h2>
                     <p>역사와 자연이 조화로운 서산 여행</p>
                     <p><span class="btn btn-primary"> 보러가기</span></p>
                  </div>
               </a>
            </div>
            <div class="col-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>강원도 </h2>
                     <p>영월로 떠나는 어느 여름날의 강원도 힐링여행</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>
            <div class="col-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}"" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>경상도</h2>
                     <p>반려견과의 특별한 하루를, 의성펫월드</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>


            <div class="col-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>경기도</h2>
                     <p>하루만에 즐기는 수원 당일치기 여행코스</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>

            <div class="col-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>전라도</h2>
                     <p>잠들지 않는 낭만의 도시, 여수를 만끽하다 </p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>

            <div class="col-sm-4">
               <a href="#" class="fh5co-card-item image-popup">
                  <figure>
                     <div class="overlay"><i class="ti-plus"></i></div>
                     <img src="${festivalimg}" alt="Image" class="img-responsive">
                  </figure>
                  <div class="fh5co-text">
                     <h2>제주도</h2>
                     <p>섬 안에 섬을 여행하는 방법, 가파도 여행 코스</p>
                     <p><span class="btn btn-primary">보러가기</span></p>
                  </div>
               </a>
            </div>
            <br>
 <button class="btn btn-light btn-grid" type="button" onclick="location.href='feditor.jsp' ">글등록</button>
         </div>
      </div>
		<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
	
			 

 



 <div id = "map" style="width: 800px; height: 300px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script> 
	


	</div>
        

    
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%-- <%
rs.close();
st.close();
con.close();
%> --%>

