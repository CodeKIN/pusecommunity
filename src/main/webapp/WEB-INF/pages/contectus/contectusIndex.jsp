<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags, title tag -->
<%@include file="/WEB-INF/pages/include/import.jsp" %>
<!-- scripts, styles, meta tags, title tag -->

</head>
<body style>
	<div class="wrapper">
		<!-- Header -->
		<%@include file="/WEB-INF/pages/include/header.jsp"%>
		<!-- Header -->
		
		<div class="video-wrapper">
			<iframe src="//www.youtube.com/embed/lGIs8JHXwI8" width="500" height="281" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
		</div>
		
		<div class="unit-50">
			<h1>Puse Community! :D</h1>
			<p>Always you can Contect Us! if you WANT!</p>
		</div>
	</div>
	
	<!-- footer -->
		<%@include file="/WEB-INF/pages/include/footer.jsp" %>
	<!-- footer -->
</body>
</html>