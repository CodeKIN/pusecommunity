<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags -->

<script src="<c:url value="/js/page/community/communityInit.js"></c:url>"></script>

<!-- postList css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/communityIndex.css"></c:url>" />
<!-- postList css -->

</head>
<body style>

<div id="wrapper">
	<!-- Header -->
		<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
	<!-- Header -->
	<div id="main">
	<!-- left Side Menu -->
		<jsp:include page="/WEB-INF/pages/include/sideBar.jsp" flush="false"></jsp:include>
	<!-- left Side Menu -->
	</div>
</div>
	<!-- scripts, styles, meta tags -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- scripts, styles, meta tags -->
</body>
</html>