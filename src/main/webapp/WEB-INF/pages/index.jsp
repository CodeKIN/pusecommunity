<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- scripts, styles, meta tags -->
<%@include file="/WEB-INF/pages/include/import.jsp" %>
<!-- scripts, styles, meta tags -->

<script src="<c:url value="/js/init.js"></c:url>"></script>

</head>
<body style>
	<div class="wrapper">
		<!-- Header -->
		<%@include file="/WEB-INF/pages/include/header.jsp"%>
		<!-- Header -->

		<div id="promo">
			<img src="/images/love.jpg" alt="demopromo" height="300">
		</div>

		<ul id="intro" class="blocks-4">
			<li class="unit-padding">
				<h3>공지사항</h3>
				<h4 class="subheader">퓨즈는 왱알앵알</h4>
				<p>어서오세요! :D 퓨즈는 여러분을 환영합니다!</p> <a href="#">바로 가기</a>
			</li>
			<li class="unit-padding">
				<h3>커뮤니티</h3>
				<h4 class="subheader">자유게시판 최신글</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat.</p>
					<a href="#freeboard">바로 가기</a>
			</li>
			<li class="unit-padding">
				<h3>중고장터</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat.</p> <a href="#">바로 가기</a>
			</li>
			<li class="unit-padding">
				<h3>중고장터</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat.</p> <a href="#">바로 가기</a>
			</li>
		</ul>
	</div>
	
	
	<!-- param test -->
		<jsp:include page="/WEB-INF/pages/include/param.jsp">
			<jsp:param value="param1" name="includeParam1"/>
			<jsp:param value="param2" name="includeParam2"/>
			<jsp:param value="param3" name="includeParam3"/>
			<jsp:param value="param4" name="includeParam4"/>
		</jsp:include>
	<!-- param test -->
	
	<!-- mainbox -->
		<%@include file="/WEB-INF/pages/include/mainbox.jsp" %>
	<!-- mainbox -->
	
	<!-- submain -->
		<%@include file="/WEB-INF/pages/include/outer.jsp" %>
	<!-- submain -->
	
	<!-- submain -->
		<%@include file="/WEB-INF/pages/include/submain.jsp" %>
	<!-- submain -->
	
	<!-- footer -->
		<%@include file="/WEB-INF/pages/include/footer.jsp" %>
	<!-- footer -->
</body>
</html>