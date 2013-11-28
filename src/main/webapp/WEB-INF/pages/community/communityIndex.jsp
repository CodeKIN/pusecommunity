<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags, title tag -->
<%@include file="/WEB-INF/pages/include/import.jsp" %>
<!-- scripts, styles, meta tags, title tag -->

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
	<div class="wrapper">
	<!-- Header -->
	<%@include file="/WEB-INF/pages/include/header.jsp" %>
	<!-- Header -->
	
		<ul id="intro" class="blocks-1">
			<li class="unit-padding">
				<h3>명예의전당</h3>
				<h4 class="subheader">대단하십니다. 乃</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
		</ul>
		
		<ul id="intro" class="blocks-2">
			<li class="unit-padding">
				<h3>자유게시판</h3>
				<h4 class="subheader">궁시렁궁시렁 주절주절</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
			<li class="unit-padding">
				<h3>개드립</h3>
				<h4 class="subheader">[개조심] 왈왈! 멍멍~!! 으르르르르르</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
		</ul>
		
		<ul id="intro" class="blocks-3">
			<li class="unit-padding">
				<h3>연애게시판</h3>
				<h4 class="subheader">솔직담백 연애이야기 <3</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
			<li class="unit-padding">
				<h3>질문게시판</h3>
				<h4 class="subheader">? 궁금해요~</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
			<li class="unit-padding">
				<h3>명예의전당</h3>
				<h4 class="subheader">대단하십니다. 乃</h4>
				<table class="width-100 table-striped">
					<c:forEach var="row" items="${recentpostlist}" varStatus="c">
						<c:choose>
							<c:when test="${c.count % 2 eq 0}">
								<thead>
									<tr>
										<td class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</td>
										<td class="textcenter11">${row.WRITER_ID}</td>
										<td class="textcenter11 dateshort">										
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</td>
									</tr>
								</thead>
							</c:when>
							<c:otherwise>
								<tbody>
									<tr>
										<th class="subject">
											<a href="/modules/board/postViewer.do?post_id=${row.POST_ID}&board_type=freeboard&client_page=${client_page}">${row.SUBJECT}</a>
										</th>
										<th class="textcenter11">${row.WRITER_ID}</th>
										<th class="textcenter11 dateshort">
											<fmt:formatDate value="${row.WRITE_DT}" type="DATE" dateStyle="SHORT" />
										</th>
									</tr>
								</tbody>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</table>
			</li>
		</ul>
	</div>
	
	<!-- footer -->
		<%@include file="/WEB-INF/pages/include/footer.jsp" %>
	<!-- footer -->
</body>
</html>