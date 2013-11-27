<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<style>

.units-container a.label{
	width: 20px;
	height: 28px;
}

table thead.title tr th{
	color: black;
	font-weight: bold;
	vertical-align: middle;
	text-align: center;
}

table thead.title tr:HOVER{
	background-color:  #F5F6ED;
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

table tbody tr{
	background-color: #ffffff;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div id="units-container">
			<!-- Header -->
			<%@include file="/WEB-INF/pages/include/header.html" %>
			<!-- Header -->
			
			<div id="units-container" align="right">
				<a href="/modules/board/postWriter.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">글쓰기</a>
			</div>
			<table class="width-100 table-striped">
				<thead class="title">
					<tr>
						<th width="10%">번호</th>
						<th width="60%">제목</th>
						<th width="10%">글쓴이</th>
						<th width="5%">추천</th>
						<th width="15%">날짜</th>
					</tr>
				</thead>
				<c:forEach var="row" items="${board}" varStatus="c">
					<c:choose>
						<c:when test="${c.count % 2 eq 0}">
							<thead>
								<tr>
									<td class="textcenter11">${row.POST_ID}</td>
									<td class="subject">
										<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=${board_type}&client_page=${client_page}">${row.SUBJECT}</a>
									</td>
									<td class="textcenter11">${row.WRITER_ID}</td>
									<td class="textcenter11">${row.LIKE_COUNT}</td>
									<td class="textcenter11">										
										<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										<fmt:formatDate value="${row.WRITE_DT}" type="TIME" timeStyle="SHORT" />
									</td>
								</tr>
							</thead>
						</c:when>
						<c:otherwise>
							<tbody>
								<tr>
									<th class="textcenter11">${row.POST_ID}</th>
									<th class="subject">
										<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=${board_type}&client_page=${client_page}">${row.SUBJECT}</a>
									</th>
									<th class="textcenter11">${row.WRITER_ID}</th>
									<th class="textcenter11">${row.LIKE_COUNT}</th>
									<th class="textcenter11">
										<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										<fmt:formatDate value="${row.WRITE_DT}" type="TIME" timeStyle="SHORT" />
									</th>
								</tr>
							</tbody>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</table>

			<div id="units-container" align="right">
				<c:if test="${paginginfo.startpagenum - paginginfo.pagegrp gt 0}">
					<a href="/modules/board/postList.do?client_page=${(paginginfo.startpagenum - 1)}&board_type=${board_type}" class="label">[prev]</a>
				</c:if>

				<c:forEach varStatus="c" begin="${paginginfo.startpagenum}" end="${paginginfo.endpagenum}" step="1">
					<c:if test="${c.index le paginginfo.totpage}">
						<c:choose>
							<c:when test="${c.index ne paginginfo.client_page}">
								<a href="/modules/board/postList.do?client_page=${c.index}&board_type=${board_type}" class="label">${c.index}</a>
							</c:when>
							<c:otherwise>
								<a href="/modules/board/postList.do?client_page=${c.index}&board_type=${board_type}" class="label label-red"><b>${c.index}</b></a>
							</c:otherwise>
						</c:choose>
					</c:if>
				</c:forEach>
				
				<c:if test="${paginginfo.endpagenum lt paginginfo.totpage}">
					<a href="/modules/board/postList.do?client_page=${(paginginfo.endpagenum) + 1}&board_type=${board_type}" class="label">[next]</a>
				</c:if>
				<a href="/modules/board/postWriter.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>