<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link href="css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="css/topMenu.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoArea">
			<a href="index.html" class="logoImage"
				style="background-image: url('images/soulMate_logo.png');"
			></a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<ul class="navigationArea">
				<li><a href="#">Log In</a></li>
				<li><a href="#">Sign In</a></li>
			</ul>
		</div>
	</header>
	<!-- top 끝 -->
	<!-- 이미지 -->
	<div class="imgBannerWrap">
		<!-- 호텔, 유치원, 살롱 대표이미지 -->
		<a href="#" class="imgSlide"
			style="background-image: url('images/banjjog1.jpg');"
		>
			<p class="textArea">SoulMate's Forest</p>
			<p class="textArea-field">Hotel</p>
		</a>
		<a href="#" class="imgSlide"
			style="background-image: url('images/banjjog2.jpg');"
		>
			<p class="textArea">SoulMate's Forest</p>
			<p class="textArea-field">Kinder Garden</p>
		</a>
		<a href="#" class="imgSlide"
			style="background-image: url('images/banjjog3.jpg');"
		>
			<p class="textArea">SoulMate's Forest</p>
			<p class="textArea-field">Salon</p>
		</a>
		<!-- 이미지 슬라이드 버튼 -->
		<div class="imageSlider">
			<a class="prev" onclick="button_click(-1);">&#10094</a>
			<a class="next" onclick="button_click(1);">&#10095</a>
		</div>
	</div>

	<!-- Featured -->
	<div id="featured">
		<div class="row">
			<section class="4u">
				<span class="pennant"><span class="fa fa-h-square fa-2x"></span></span>
				<h3>Pet Hotel</h3>
				<p>Curabitur sit amet nulla. Nam in massa. Sed vel tellus.
					Curabitur sem urna, consequat vel, suscipit in, mattis placerat,
					nulla. Sed ac leo.</p>
				<a href="#" class="button button-style1">Go to Hotel</a>
			</section>
			<section class="4u">
				<span class="pennant"><span class="fa fa-kinder fa-2x"></span></span>
				<h3>Kinder Garden</h3>
				<p>Donec ornare neque ac sem. Mauris aliquet. Aliquam sem leo,
					vulputate sed, convallis at, ultricies quis, justo. Donec magna.</p>
				<a href="#" class="button button-style1">Go to KinderGarden</a>
			</section>
			<section class="4u">
				<span class="pennant"><span class="fa fa-cut fa-2x"></span></span>
				<h3>Pet Salon</h3>
				<p>Curabitur sit amet nulla. Nam in massa. Sed vel tellus.
					Curabitur sem urna, consequat vel, suscipit in, mattis placerat,
					nulla. Sed ac leo.</p>
				<a href="salonInfo.html" class="button button-style1">Go to
					Salon</a>
			</section>

		</div>
	</div>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script type="text/javascript">
	var currSlide = 1;
	showSlide(currSlide);

	function button_click(num) {
	  // 버튼 클릭
	  showSlide((currSlide += num));
	}

	function showSlide(num) {
	  // 이미지 변경
	  const slides = document.querySelectorAll(".imgSlide");
	  if(num < 1) {
	    currSlide = 1;
	  }
	  if(num > slides.length) {
	    currSlide = slides.length;
	  }
	  for(var i=0; i < slides.length ; i++) {
	    slides[i].style.display = "none";
	  } 
	  slides[currSlide - 1].style.display = "block";
	}

	// top
	function showMenu(service){
	  const field = service.parentNode.querySelector(".drop-menu");
	  // console.log(field);
	  if(field.style.display != "block"){
	    field.style.display = "block";
	  } else {
	    field.style.display = "none";
	  }
	  
	}
	</script>
</body>
</body>
</html>