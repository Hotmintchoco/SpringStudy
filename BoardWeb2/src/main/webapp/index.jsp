<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7859a7d1457b0d6baa0c9416ea107610"></script>
</head>
<body>
<div style="text-align: center">
	<h1>게시판 프로그램</h1>
	<hr>
		<a href="login.do">로그인</a><br><br><br>
		<a href="getBoardList.do">글 목록 바로가기</a>
		<div id="map" style="width:500px;height:400px; margin: 0 auto;"></div>
	<hr>
	
	
	<script>
		/* var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.267262, 127.017478),
			level: 3 */
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		   mapOption = { 
		   center: new kakao.maps.LatLng(37.267262, 127.017478), // 지도의 중심좌표
		   level: 4 // 지도의 확대 레벨
		   };

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		var imageSrc = 'img/마커 1(흰색 삭제).png', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new kakao.maps.LatLng(37.267262, 127.017478); // 마커가 표시될 위치입니다

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition, 
		    image: markerImage // 마커이미지 설정 
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map); 
		
		marker.setDraggable(true);
	</script>
</div>
</body>
</html>