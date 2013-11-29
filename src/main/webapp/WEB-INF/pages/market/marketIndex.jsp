<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<!-- scripts, styles, meta tags -->
	<jsp:include page="/WEB-INF/pages/include/import.jsp" flush="false"></jsp:include>
<!-- scripts, styles, meta tags -->

</head>
<body style>
	<!-- Header -->
		<jsp:include page="/WEB-INF/pages/include/header.jsp" flush="false"></jsp:include>
	<!-- Header -->
	
	<div class="wrapper">
		<ul id="intro" class="blocks-6">
			<li class="unit-padding">
				<h3>Hot 아이템!</h3>
				<h4 class="subheader">GT들의 추천</h4>
				
				<div class="image-container">
				    <figure class="image-left">
				        <img src="/images/north.jpg" alt="" width="100%" />
				        <figcaption>갈수록 추워지는 겨울, 월동준비 철저하게해서 장인,장모,부모,여친 모두 휘어잡기!</figcaption>
				    </figure>
				    <p>
				    	여보, 올겨울엔 아버님께 빨간패딩 하나 장만해드려야겠어요.
				    </p>
				</div>
								
				
				<a href="#">바로 가기</a>
			</li>
			
			
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			<li class="unit-padding">
				<h3>Hot 아이템!</h3>
				<h4 class="subheader">GT들의 추천</h4>
				
				<div class="image-container">
				    <figure class="image-left">
				        <img src="/images/north.jpg" alt="" width="100%" />
				        <figcaption>갈수록 추워지는 겨울, 월동준비 철저하게해서 장인,장모,부모,여친 모두 휘어잡기!</figcaption>
				    </figure>
				    <p>
				    	여보, 올겨울엔 아버님께 빨간패딩 하나 장만해드려야겠어요.
				    </p>
				</div>
								
				
				<a href="#">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
		</ul>
		
		<ul id="intro" class="blocks-4">
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>Hot 아이템!</h3>
				<h4 class="subheader">GT들의 추천</h4>
				
				<div class="image-container">
				    <figure class="image-left">
				        <img src="/images/north.jpg" alt="" width="100%" />
				        <figcaption>갈수록 추워지는 겨울, 월동준비 철저하게해서 장인,장모,부모,여친 모두 휘어잡기!</figcaption>
				    </figure>
				    <p>
				    	여보, 올겨울엔 아버님께 빨간패딩 하나 장만해드려야겠어요.
				    </p>
				</div>
				<a href="#">바로 가기</a>
			</li>
		</ul>
	
		<ul id="intro" class="blocks-3">
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>Hot 아이템!</h3>
				<h4 class="subheader">GT들의 추천</h4>
				
				<div class="image-container">
				    <figure class="image-left">
				        <img src="/images/north.jpg" alt="" width="100%" />
				        <figcaption>갈수록 추워지는 겨울, 월동준비 철저하게해서 장인,장모,부모,여친 모두 휘어잡기!</figcaption>
				    </figure>
				    <p>
				    	여보, 올겨울엔 아버님께 빨간패딩 하나 장만해드려야겠어요.
				    </p>
				</div>
				<a href="#">바로 가기</a>
			</li>
		</ul>
		
		<ul id="intro" class="blocks-5">
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>올겨울은 추워뒈지지 <br />
				가만있음 넌 그냥 돼지지</h3>
				<h4 class="subheader">돼지가된 당신을 깎아줄 초강력 트레이너</h4>
				<figure class="image-left">
					<img src="/images/health.jpg" alt="" width="100%" />
					<figcaption>그대여 무엇을 망설이는가. 딥 다크 팬터지를 통해 너의 몸을 깎아주겠노라</figcaption>
				</figure>
				<a href="#freeboard">바로 가기</a>
			</li>
			
			<li class="unit-padding">
				<h3>Hot 아이템!</h3>
				<h4 class="subheader">GT들의 추천</h4>
				
				<div class="image-container">
				    <figure class="image-left">
				        <img src="/images/north.jpg" alt="" width="100%" />
				        <figcaption>갈수록 추워지는 겨울, 월동준비 철저하게해서 장인,장모,부모,여친 모두 휘어잡기!</figcaption>
				    </figure>
				    <p>
				    	여보, 올겨울엔 아버님께 빨간패딩 하나 장만해드려야겠어요.
				    </p>
				</div>
				<a href="#">바로 가기</a>
			</li>
			<li class="unit-padding">
				<h3>중고 시장</h3>
				<h4 class="subheader">중고장터 Hot Place</h4>
				
				
				<figure class="image-centered">
					<img src="/images/ang.jpg" alt="" width="100%" />
					<figcaption>쓰다남은 빌리 버리지 말고 팔자!</figcaption>
				</figure>
				
				<a href="#">바로 가기</a>
			</li>
		</ul>
	</div>
	
	<!-- footer -->
		<jsp:include page="/WEB-INF/pages/include/footer.jsp" flush="false"></jsp:include>
	<!-- footer -->
</body>
</html>