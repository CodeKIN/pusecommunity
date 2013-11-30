<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

${param.boxcuont}
${param.boxsubjects}
${param.boxcontents}


	<ul id="intro" class="blocks-1">
		<li class="unit-padding">
			<h3>${param.title}</h3>
			<h4 class="subheader">${param.subtitle}</h4>
			<p>${fn:replace(param.content, "\\n", "<br />")}</p>
			<a href="#">더 읽기</a>
		</li>
	</ul>
