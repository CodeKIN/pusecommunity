<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>${post.SUBJECT}</title>

<!-- scripts, styles, meta tags, title tag -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags, title tag -->

<!-- post viewer css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/postViewer.css"></c:url>" />
<!-- post viewer css -->

</head>
<body>
	<div class="wrapper">
		<div id="units-container">
			<!-- Header -->
				<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
			<!-- Header -->
	
			<div id="units-container" align="right">
				<a href="/modules/board/postList.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">목록</a>
				<a href="/modules/board/postUpdateViewer.do?client_page=${client_page}&board_type=${board_type}&post_id=${post.POST_ID}" class="label label-blue" style="font-size: 15px;">수정</a>
				<a href="/modules/board/postWriter.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">글쓰기</a>
			</div>
			<table class="width-100 table-simple table-stroked">
				<thead>
					<tr>
						<th>번호</th>
						<th>글쓴이</th>
						<th>조회</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="text-align: center;">
							${post.POST_ID}
						</td>
						<td style="text-align: center;">
							${post.WRITER_ID}
						</td>
						<td style="text-align: center;">
							${post.VIEW_COUNT}
						</td>
						<td style="text-align: center;">
							<fmt:formatDate value="${post.WRITE_DT}" type="DATE" dateStyle="SHORT" /> <br />
							<fmt:formatDate value="${post.WRITE_DT}" type="TIME" timeStyle="SHORT" />
						</td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<td colspan="4">
							<div id="toc-base" class="nav-v">
								<div class="unit-100">
									<h1>
										${post.SUBJECT}
									</h1>
									<p>
										${post.CONTENT}
									</p>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div id="toc-base" class="nav-v">
								<div class="unit-100" style="text-align: center;">
									<h2>
										추천
									</h2>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div id="units-container" align="right">
				<a href="/modules/board/postList.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">목록</a>
				<a href="/modules/board/postUpdateViewer.do?client_page=${client_page}&board_type=${board_type}&post_id=${post.POST_ID}" class="label label-blue" style="font-size: 15px;">수정</a>
				<a href="/modules/board/postWriter.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;">글쓰기</a>
			</div>
		</div>
	</div>
	
	<!-- footer -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- footer -->
</body>
</html>