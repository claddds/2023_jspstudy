<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체인</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	// 동일한 요소에 미리 jQuery 명령을 차례대로 실행할 수 있는 연결 기술
	// chain을 종료시키는 명령어 .end()
	$(document).ready(function(){
		 $("#btn").on('click', function() {
			$("#p1")
			.css("color", "red")
			.slideUp(600)
			.show(600, function() {
				$(this).css("background", "skyblue")
			})
			// .end()
		});
	});
</script>
</head>
<body>
	<button id = "btn">눌러주세요</button>
	<p id="p1">눌러주시면 해당 내용이 사라집니다.</p>
</body>
</html>