<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- scripts, styles, meta tags, title tag -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags, title tag -->

<script src="<c:url value="/exmodules/smarteditor/js/HuskyEZCreator.js"></c:url>"></script>
<script src="<c:url value="/js/modules/board/PostWriter.js"></c:url>"></script>

</head>
<body>
	<div class="wrapper">
		<!-- Header -->
			<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
		<!-- Header -->
		
		<div id="units-container" align="right">
			<div id="units-container" align="right">
				<a href="/modules/board/postList.do?client_page=${client_page}&board_type=${board_type}" class="label label-blue" style="font-size: 15px;"">취소</a>
				<a href="#save" class="label label-blue" style="font-size: 15px;"">저장</a>
			</div>
				<c:choose>
					<c:when test="${post ne null}">
						<form method="post" action="/modules/board/postUpdate.do" class="forms" style="text-align: left;">
							<input type="hidden" id="board_type" name="board_type" value="${board_type}" />
							<input type="hidden" id="client_page" name="client_page" value="${client_page}" />
							<input type="hidden" id="prefix" value="update" />
							<input type="hidden" name="post_id" value="${post.POST_ID}"
							<div>
								제목
								<input type="text" name="subject" id="subject" value="${post.SUBJECT}" />
							</div>
							
							<div>
								<textarea name="content" id="content" rows="10" cols="100">${post.CONTENT}</textarea>
							</div>	
					</c:when>
					<c:otherwise>
						<form method="post" action="/modules/board/postSave.do" class="forms" style="text-align: left;">
							<input type="hidden" id="board_type" name="board_type" value="${board_type}" />
							<input type="hidden" id="client_page" name="client_page" value="${client_page}" />
							<input type="hidden" id="prefix" value="write" />
							<div style="width: 100%;">
								제목
								<input type="text" name="subject" id="subject" style="width: 100%;"/>
							</div>
							
							<div>
								<textarea name="content" id="content" rows="20" style="width: 100%;"></textarea>
							</div>
					</c:otherwise>
				</c:choose>
			</form>
		</div>
	</div>
	
	<!-- footer -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- footer -->
</body>
</html>