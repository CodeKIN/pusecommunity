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

<style type="text/css">
table thead.title tr th{
	color: black;
	font-weight: bold;
	vertical-align: middle;
	text-align: center;
}

table thead tr th,
table tbody tr td{
	color: black;
	font-weight: normal;
	vertical-align: middle;
	margin-top: 0;
	padding-top: 0;
}

table thead tr:HOVER,
table tbody tr:HOVER{
	background-color: #ffdab9;
}

</style>
</head>
<body style>

	<!-- Header -->
		<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
	<!-- Header -->
	
	<!-- recentPostListBox1 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox1.jsp" flush="false"></jsp:include>
	<!-- recentPostListBox1 -->
	
	<!-- recentPostListBox2 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox2.jsp" flush="false"></jsp:include>
	<!-- recentPostListBox2 -->
	
	<!-- recentPostListBox4 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox4.jsp" flush="false">
			<jsp:param value="line1" name="recent_type"/>
		</jsp:include>
	<!-- recentPostListBox4 -->
	
	<!-- recentPostListBox4 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox4.jsp" flush="false">
			<jsp:param value="line2" name="recent_type"/>
		</jsp:include>
	<!-- recentPostListBox4 -->
	
	<!-- recentPostListBox4 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox4.jsp" flush="false">
			<jsp:param value="line3" name="recent_type"/>
		</jsp:include>
	<!-- recentPostListBox4 -->
	
	<!-- recentPostListBox3 -->
		<jsp:include page="/WEB-INF/pages/include/community/recentPostBox4.jsp" flush="false">
			<jsp:param value="line6" name="recent_type"/>
		</jsp:include>
	<!-- recentPostListBox3 -->
	

	<!-- scripts, styles, meta tags -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- scripts, styles, meta tags -->
</body>
</html>