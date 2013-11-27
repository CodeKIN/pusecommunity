<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Title</title>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/kube.css"></c:url>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/master.css"></c:url>" />

<script src="<c:url value="/js/jquery-1.10.2.js"></c:url>"></script>
<script src="<c:url value="/js/kube.buttons.js"></c:url>"></script>
<script src="<c:url value="/js/common.js"></c:url>"></script>
<script src="<c:url value="/js/init.js"></c:url>"></script>

</head>
<body style>
	<div class="wrapper">
		<!-- Header -->
		<%@include file="/WEB-INF/pages/include/header.html"%>
		<!-- Header -->
		
		<div class="video-wrapper">
			<iframe src="//www.youtube.com/embed/lGIs8JHXwI8" width="500" height="281" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
		</div>
		
		<div class="unit-50">
			<h1>Puse Community! :D</h1>
			<p>Always you can Contect Us! if you WANT!</p>
		</div>
	</div>
</body>
</html>