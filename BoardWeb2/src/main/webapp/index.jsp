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
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.267262, 127.017478),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.267262, 127.017478);
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	</script>
</div>
</body>
</html>