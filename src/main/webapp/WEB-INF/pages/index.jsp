<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags -->

<script src="<c:url value="/js/init.js"></c:url>"></script>

</head>
<body style>
	<div id="wrapper">
		<!-- Header -->
			<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
		<!-- Header -->
		
		<!-- PromoImage -->
			<jsp:include page="/WEB-INF/pages/include/main/mainPromoImage.jsp" flush="false"></jsp:include>
		<!-- PromoImage -->
		
		<!-- MainBox -->
			<jsp:include page="/WEB-INF/pages/include/main/mainbox.jsp" flush="false"></jsp:include>
		<!-- MainBox -->
	</div>
	
	<!-- footer -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- footer -->
</body>
</html>