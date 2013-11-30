<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="units-row">
	<aside class="unit-25 unit-padding">
			<h6>Sidebar</h6>
			<nav class="nav-v">
				<ul>
					<li><a href="#">명예의 전당</a></li>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">연애게시판</a></li>
					<li><a href="#">영화</a></li>
					<li><a href="#">스포츠</a></li>
					<li><a href="#">애니/만화</a></li>
					<li><a href="#">개드립</a></li>
					<li><a href="#">여행</a></li>
					<li><a href="#">데이트코스</a></li>
					<li><a href="#">취미</a></li>
					<li><a href="#">동물/식물</a></li>
					<li><a href="#">컴퓨터</a></li>
					<li><a href="#">책</a></li>
					<li><a href="#">연예</a></li>
					<li><a href="#">질문/답변</a></li>
					<li><a href="#">짤방게시판</a></li>
					<li><a href="#">런타임톡</a></li>
					<li><a href="#">카메라</a></li>
					<li><a href="#">음악</a></li>

				</ul>
			</nav>
	</aside>
	
	<article class="unit-75">
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
		
		<!-- recentPostListBox4 -->
			<jsp:include page="/WEB-INF/pages/include/community/recentPostBox4.jsp" flush="false">
				<jsp:param value="line6" name="recent_type"/>
			</jsp:include>
		<!-- recentPostListBox4 -->
	</article>
</div>