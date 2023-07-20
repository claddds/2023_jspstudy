<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<script type="text/javascript">
	var new=["[강주은, ♥최민수 드러눕기 기행에 '나도 눕겠다' (라스)[종합]",
			"'이동휘, ♥정호연 말실수도 귀여워~' 조용하지만 굳건한 8년차 장수커플 (청룡시리즈어워즈)[SC이슈]",
			"톰 크루즈 '미션 임파서블7', 마고 로비 '바비' 독주 막았다[종합]",
			"'한번 헤어져야→심리상태 불안' 심형탁♥사야, 결혼 앞두고 '혼돈' ('신랑수업')[종합]",
			"'서머퀸' 브브걸 돌아온다…8월 3일 컴백 확정 [공식]",
			"'15일 만에 결혼 결심…' 광수♥옥순, 곧 부부된다 '대박' ('나는솔로') [어저께TV]"];
	
	var index = 0;
	var timer;
	function start_news() {
		// 2초마다 showNews()를 실행하자
		timer = setInterval(showNews, 2000);
	}
	function showNews() {
		var div = document.getElementById("mydiv");
		div.innerHTML = news[index++];
		if(index == news.length){
			index=0;
		}
	}
	function stop_news() {
		// setInterval()를 중지 시키는 함수
		clearInterval(timer);
	}
</script>
</head>
<body>
	<div id="mydiv"></div>
	<button onclick="start_news()">뉴스보기</button>
	<button onclick="stop_news()">뉴스중지</button>
</body>
</html>