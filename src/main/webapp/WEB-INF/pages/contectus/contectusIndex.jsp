<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags -->

</head>
<body style>
	<!-- Header -->
		<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
	<!-- Header -->
	
	<!-- video -->
		<jsp:include page="/WEB-INF/pages/include/contectus/contectusVideo.jsp" flush="false"></jsp:include>
	<!-- video -->
	
	<!-- outer -->
		<jsp:include page="/WEB-INF/pages/include/contectus/contectusForm.jsp" flush="false"></jsp:include>
	<!-- outer -->
		
	<!-- footer -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- footer -->
</body>
</html>