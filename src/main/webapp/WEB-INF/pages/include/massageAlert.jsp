<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="wrapper">
	<div class="message">
	<!-- 	<span class="close"></span> -->
		<header>${param.title}</header>
		${fn:replace(param.msg, "\\n", "<br />")}
	</div>
</div>