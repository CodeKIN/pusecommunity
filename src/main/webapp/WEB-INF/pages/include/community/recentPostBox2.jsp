<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- recentPostList -->
		<jsp:include page="/WEB-INF/pages/include/box2.jsp" flush="false">
			<jsp:param value="자유게시판" name="title1" />
			<jsp:param value="나만의 썰을 풀자!" name="subtitle1" />
			<jsp:param value="/modules/board/postList.do?board_type=freeboard" name="ahref1" />
			<jsp:param value="연애게시판" name="title2" />
			<jsp:param value="만리장성은 밤낮 가리지않고 지었다 합니다." name="subtitle2" />
		</jsp:include>
	<!-- recentPostList -->