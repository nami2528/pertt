<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OTT 별점 주기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ott-star.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ott-review.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ott-star.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ott-review.js"></script>
</head>
<body>
<div class="page-main">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="align-center">
	<div class="botton" style="margin:30px 0">
		<a href="ottReview.do?ott_num=1"><img src="../images/logo_square_netflix.png" width=150 style="border-radius:10px; box-shadow: 5px 5px 5px #959595; margin: 0 10px 0 0;"></a>
		<a href="ottReview.do?ott_num=2"><img src="../images/logo_square_disney.png" width=150 style="border-radius:10px; box-shadow: 5px 5px 5px #959595; margin: 0 10px 0 0;"></a>
		<a href="ottReview.do?ott_num=3"><img src="../images/logo_square_watcha.png" width=150 style="border-radius:10px; box-shadow: 5px 5px 5px #959595; margin: 0 10px 0 0;"></a>
		<a href="ottReview.do?ott_num=4"><img src="../images/logo_square_tving.png" width=150 style="border-radius:10px; box-shadow: 5px 5px 5px #959595; margin: 0 10px 0 0;"></a>
		<a href="ottReview.do?ott_num=5"><img src="../images/logo_square_wavve.png" width=150 style="border-radius:10px; box-shadow: 5px 5px 5px #959595; margin: 0 10px 0 0;"></a>
	</div>
	<div class="parent">
		<div class="netflix">
		    <c:if test="${param.ott_num==1}">
				<img src="../images/logo_none_netflix.png">
			</c:if>
			<c:if test="${param.ott_num==2}">
				<img src="../images/logo_none_disney.png">
			</c:if>
			<c:if test="${param.ott_num==3}">
				<img src="../images/logo_none_watcha.png">
			</c:if>
			<c:if test="${param.ott_num==4}">
				<img src="../images/logo_none_tving.png">
			</c:if>
			<c:if test="${param.ott_num==5}">
				<img src="../images/logo_none_wavve.png">
			</c:if>
		</div>
		<!-- 별점 시작 -->
		<div class="star">
		    <form id="ottLike_form">
		       <input type="hidden" value="ott_num" value="${param.ott_num}">
				<h1>가성비</h1>
				<div class="rating">
				   <input type="hidden" name="price" value="0" class="rate-star">    
				    <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
				    <input type="checkbox" id="rating1" value="1" class="rate-check">
				    <label for="rating1"></label>
				    <input type="checkbox" id="rating2" value="2" class="rate-check">
				    <label for="rating2"></label>
				    <input type="checkbox" id="rating3" value="3" class="rate-check">
				    <label for="rating3"></label>
				    <input type="checkbox" id="rating4" value="4" class="rate-check">
				    <label for="rating4"></label>
				    <input type="checkbox" id="rating5" value="5" class="rate-check">
				    <label for="rating5"></label>
				</div>
				
				<h1>사용성</h1>
				<div class="rating">
				   <input type="hidden" name="usability" value="0" class="rate-star">    
				    <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
				    <input type="checkbox" id="ratingb1" value="1" class="rate-check">
				    <label for="ratingb1"></label>
				    <input type="checkbox" id="ratingb2" value="2" class="rate-check">
				    <label for="ratingb2"></label>
				    <input type="checkbox" id="ratingb3" value="3" class="rate-check">
				    <label for="ratingb3"></label>
				    <input type="checkbox" id="ratingb4" value="4" class="rate-check">
				    <label for="ratingb4"></label>
				    <input type="checkbox" id="ratingb5" value="5" class="rate-check">
				    <label for="ratingb5"></label>
				</div>
				
				<h1>콘텐츠</h1>
				<div class="rating">
				   <input type="hidden" name="quality" value="0" class="rate-star">    
				    <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
				    <input type="checkbox" id="ratingc1" value="1" class="rate-check">
				    <label for="ratingc1"></label>
				    <input type="checkbox" id="ratingc2" value="2" class="rate-check">
				    <label for="ratingc2"></label>
				    <input type="checkbox" id="ratingc3" value="3" class="rate-check">
				    <label for="ratingc3"></label>
				    <input type="checkbox" id="ratingc4" value="4" class="rate-check">
				    <label for="ratingc4"></label>
				    <input type="checkbox" id="ratingc5" value="5" class="rate-check">
				    <label for="ratingc5"></label>
				</div>
				<div class="align-center">
					<input type="submit" value="전송">
				</div>
			</form>
		</div>
		<!-- 별점 끝 -->
		
		<!-- 한줄평 시작 -->
		<div id="ott_review_div">
			<span class="re-title">한줄평 달기</span>
			<form id="re_form" style="display:inline-block;">
				<input type="hidden" name="ott_num" value="${ott.ott_num}" id="ott_num">
				<textarea rows="3" cols="50" name="ott_re_content" 
				  id="ott_re_content" class="rep-content"
				  <c:if test="${empty user_num}">disabled="disabled"</c:if>
				  ><c:if test="${empty user_num}">로그인해야 작성할 수 있습니다.</c:if></textarea>
				<c:if test="${!empty user_num}">
				<div id="re_first">
					<span class="letter-count">300/300</span>
				</div>
				<div id="re_second" class="align-right">
					<input type="submit" value="전송">
				</div>
				</c:if>
			</form>
		</div>
		<!-- 한줄평 목록 출력 시작 -->
		<div id="output"></div>
		<div class="paging-button" style="display:none;">
			<input type="button" value="다음글 보기">
		</div>
		<div id="loading" style="display:none;">
			<img src="${pageContext.request.contextPath}/images/ajax-loader.gif">
		</div>
		<!-- 한줄평 목록 출력 끝 -->
		<!-- 한줄평 끝 -->
	</div>
</div>
</div>
</body>
</html>