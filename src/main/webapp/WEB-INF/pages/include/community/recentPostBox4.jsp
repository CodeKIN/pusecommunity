<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- recentPostList -->
	
	<c:if test="${ param.recent_type eq 'line1' }">
		<jsp:include page="/WEB-INF/pages/include/box4.jsp" flush="false">
			<jsp:param value="영화" name="title1" />
			<jsp:param value="시어머니도 울린 그 영화" name="subtitle1" />
			<jsp:param value="스포츠" name="title2" />
			<jsp:param value="입스포츠 지존들의 모임" name="subtitle2" />
			<jsp:param value="애니/만화" name="title3" />
			<jsp:param value="재미지네 아오 ㅋㅋ" name="subtitle3" />
			<jsp:param value="개드립" name="title4" />
			<jsp:param value="여기 개드립 한 그릇 추가요" name="subtitle4" />
		</jsp:include>
	</c:if>
	<c:if test="${ param.recent_type eq 'line2' }">
		<jsp:include page="/WEB-INF/pages/include/box4.jsp" flush="false">
			<jsp:param value="여행" name="title1" />
			<jsp:param value="가볼만한 곳!" name="subtitle1" />
			<jsp:param value="데이트코스" name="title2" />
			<jsp:param value="여기가 효과 굿" name="subtitle2" />
			<jsp:param value="취미" name="title3" />
			<jsp:param value="좋은 취미 생활~" name="subtitle3" />
			<jsp:param value="동물/식물" name="title4" />
			<jsp:param value="귀여워~~" name="subtitle4" />
		</jsp:include>
	</c:if>
	<c:if test="${ param.recent_type eq 'line3' }">
		<jsp:include page="/WEB-INF/pages/include/box4.jsp" flush="false">
			<jsp:param value="컴퓨터" name="title1" />
			<jsp:param value="공대 모여라!!" name="subtitle1" />
			<jsp:param value="책" name="title2" />
			<jsp:param value="이 책은 꼭 질러야해!" name="subtitle2" />
			<jsp:param value="연예" name="title3" />
			<jsp:param value="어? 얼굴 고쳤네?" name="subtitle3" />
			<jsp:param value="질문/답변" name="title4" />
			<jsp:param value="좀 알려주소~" name="subtitle4" />
		</jsp:include>
	</c:if>
	<c:if test="${ param.recent_type eq 'line5' }">
		<jsp:include page="/WEB-INF/pages/include/box4.jsp" flush="false">
			<jsp:param value="유용한 정보" name="title1" />
			<jsp:param value="아 너무 유용해 미치겠다" name="subtitle1" />
			<jsp:param value="모바일 게임" name="title2" />
			<jsp:param value="내가 매일 지각하는 이유는?" name="subtitle2" />
			<jsp:param value="금융/투자" name="title3" />
			<jsp:param value="돈은 이렇게 벌어야 제맛이제" name="subtitle3" />
			<jsp:param value="자동차" name="title4" />
			<jsp:param value="안전운전" name="subtitle4" />
		</jsp:include>
	</c:if>
	<c:if test="${ param.recent_type eq 'line6' }">
		<jsp:include page="/WEB-INF/pages/include/box4.jsp" flush="false">
			<jsp:param value="짤방게시판" name="title1" />
			<jsp:param value="내 짤방 20단 컴보는 말이 필요없지" name="subtitle1" />
			<jsp:param value="런타임톡" name="title2" />
			<jsp:param value="아 퇴근하고싶다" name="subtitle2" />
			<jsp:param value="카메라" name="title3" />
			<jsp:param value="헠후헠후 사진 찍자!!" name="subtitle3" />
			<jsp:param value="음악" name="title4" />
			<jsp:param value="~♬~~♪" name="subtitle4" />
		</jsp:include>
	</c:if>
	
	<!-- recentPostList -->