<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="wrapper">
	<ul id="intro" class="blocks-1">
		<li class="unit-padding">
			<h3>${param.title}</h3>
			<h4 class="subheader">${param.subtitle}</h4>
			<p>${fn:replace(param.content, "\\n", "<br />")}</p>
			<a href="#">더 읽기</a>
		</li>
	</ul>
</div>