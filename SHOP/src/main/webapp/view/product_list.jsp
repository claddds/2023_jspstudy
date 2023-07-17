<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 50px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 8pt;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
	
}
</style>
<script type="text/javascript">
	// 장바구니 담기
	function add_cart() {
		if(${login == 'ok'}){
			location.href="/MyController?cmd=addcart&idx=${vo.idx}"			
		}else{
			alert("로그인하세요")
			location.href="/MyController?cmd=login"
		}
	}
	// 장바구니 보기
	function show_cart() {
		if(${login == 'ok'}){
			location.href=""
		}else{
			alert("로그인하세요")
			location.href="/MyController?cmd=login"
		}
	}
</script>
</head>
<body>
<jsp:include page="top.jsp" />
<hr>

	<table>
		<tr>
			<td width = "40%">제품Category</td>
			<td width = "60%">${vo.p_num }</td>
		</tr>
		<tr>
			<td width = "40%">제품판매사</td>
			<td width = "60%">${vo.p_company }</td>
		</tr>
		<tr>
			<td width = "40%">제품가격</td>
			<td width = "60%">시중가: <fmt:formatNumber value="${vo.p_price }" pattern="#,##0" />원
			<font color="red">(할인가: <fmt:formatNumber value="${vo.p_saleprice }" pattern="#,##0" />원</font></td>
			
		</tr>
		<tr>
			<td colspan="2">제품설명</td>
			<td>${vo.p_content }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<img src="../images/${vo.p_image_1 }" width="450px">
			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="장바구니 담기" onclick="add_cart()">
				<input type="button" value="장바구니 보기" onclick="show_cart()" />
			</td>
		</tr>
	<thead>
		<tr bgcolor="#dedede">
			<th width="10%">제품번호</th>
			<th width="10%">이미지</th>
			<th width="35%">제품명</th>
			<th width="20%">제품가격</th>
			<th width="25%">비고</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${empty_list}">
				<tr>
					<td colspan="5"><h2>제품 준비중입니다</h2></td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="k" items="${list}">
				<tr>
					<td>${k.p_num}</td>
					<td><img src ="../images/${k.p_image_s }" width="100"></td>
					<td><a href = "/MyController?cmd=content&idx=${k.idx}">${k.p_name}</a></td>
					<td>할인가: <fmt:formatNumber value="${k.p_saleprice}" pattern="#,##0"/>원<br>
								<font color="red">(할인률: ${k.getPercent()}%)</font>
					</td>
					<td>시중 가격: <fmt:formatNumber value="${k.p_price}" pattern="#,##0"/>원</td>
				</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tbody>
	</table>
</body>
</html>