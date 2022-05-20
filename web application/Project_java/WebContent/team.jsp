<%@page import="com.Controller.VO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="EUC-KR">

<head>
<title>Pharma &mdash; Colorlib Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">



<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenLite.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TimelineMax.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.4/gsap.min.js"></script>
<script src="js/skrollr.js"></script>
</head>

<body>

	<%
		VO vo = (VO)session.getAttribute("vo");
	%>

	<div class="site-wrap">


		<div class="site-navbar py-2">

			<div class="search-wrap">
				<div class="container">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="#" method="post">
						<input type="text" class="form-control"
							placeholder="Search keyword and hit enter...">
					</form>
				</div>
			</div>

			<div class="container">
				<div class="d-flex align-items-center justify-content-between">
					<div class="logo">
						<div class="logo">
							<svg id="Layer_1" data-name="Layer 1"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 278.55 79.08"
								style="overflow: visible;">
                <defs>
                  <style>
.cls-1 {
	fill: #414140;
}

.cls-2, .cls-3 {
	fill: #a59faf;
}

.cls-3 {
	font-size: 40.96px;
	letter-spacing: -0.02em;
}

.cls-3, .cls-4, .cls-7 {
	font-family: PittsbrookOutline-Italic, Pittsbrook Outline;
	font-style: italic;
}

.cls-4 {
	font-size: 81.74px;
	letter-spacing: -0.02em;
}

.cls-5 {
	letter-spacing: -0.03em;
}

.cls-6 {
	letter-spacing: -0.02em;
}

.cls-7 {
	font-size: 86.72px;
	letter-spacing: -0.02em;
}
</style>
                </defs>
                <title>logo</title>
                <g id="cart">
                  <g id="LeftWheel">
                    <path class="cls-1"
									d="M225.45,165.66a5.75,5.75,0,1,1-5.74-5.74A5.74,5.74,0,0,1,225.45,165.66Z"
									transform="translate(-165.72 -103.53)" />
                    <g id="LeftWheelCross">
                      <rect class="cls-2" x="219.23" y="162.54"
									width="0.95" height="7.39"
									transform="translate(-221.01 79.48) rotate(-40.6)" />
                      <rect class="cls-2" x="219.26" y="162.54"
									width="0.9" height="7.39"
									transform="translate(-37.69 -197.1) rotate(33.45)" />
                    </g>
                  </g>
                  <g id="RightWheel">
                    <path class="cls-1"
									d="M199.68,165.66a5.75,5.75,0,1,1-5.75-5.74A5.75,5.75,0,0,1,199.68,165.66Z"
									transform="translate(-165.72 -103.53)" />
                    <g id="RightWheelCross">
                      <rect class="cls-2" x="193.45" y="161.97"
									width="0.95" height="7.39"
									transform="translate(-226.84 62.56) rotate(-40.6)" />
                      <rect class="cls-2" x="193.48" y="161.97"
									width="0.9" height="7.39"
									transform="translate(-42.28 -182.98) rotate(33.45)" />
                    </g>
                  </g>
                  <path class="cls-1"
									d="M228.76,161.14H180.68l-2.61-42h-9.74a2.61,2.61,0,0,1,0-5.22H183l2.62,42h43.17a2.62,2.62,0,0,1,0,5.23Z"
									transform="translate(-165.72 -103.53)" />
                  <polygon class="cls-1"
									points="18.81 45.77 64.61 45.77 67.05 20.34 15.15 20.34 18.81 45.77" />
                  <path class="cls-1"
									d="M230.33,151.9h-45.8a2.62,2.62,0,0,1-2.59-2.24l-3.66-25.42a2.62,2.62,0,0,1,2.59-3h51.9a2.59,2.59,0,0,1,1.93.86,2.62,2.62,0,0,1,.67,2l-2.44,25.43A2.61,2.61,0,0,1,230.33,151.9Zm-43.54-5.22H228l1.94-20.2h-46Z"
									transform="translate(-165.72 -103.53)" />
								<text class="cls-3" transform="translate(33.96 43.15)"></text>
                </g>
                <g id="text">
								<text id="art" class="cls-4" transform="translate(132.43 67.88)">o<tspan
									class="cls-5" x="40.47" y="0">g</tspan>
                    <tspan class="cls-6" x="85.66" y="0">o</tspan>
                  </text>
								<text class="cls-7" transform="translate(82.77 67.88)" id='m'>b</text></g>
              </svg>
						</div>
					</div>
					<div class="main-nav d-none d-lg-block">
						<nav class="site-navigation text-right text-md-center"
							role="navigation">
							<ul class="site-menu js-clone-nav d-none d-lg-block">
								<li class="active"><a href="main.jsp">Home</a></li>

								<li class="active"><a href="chart.jsp">CHART</a></li>
								<li class="active"><a href="ask.jsp">ASK</a></li>
								<li class="active"><a href="faq.jsp">FAQ</a></li>
								<li class="active"><a href="team.jsp">ABOUT</a></li>
							</ul>
						</nav>
					</div>
					<nav class="site-navigation text-right text-md-center"
						role="navigation">
						<ul class="site-menu js-clone-nav d-none d-lg-block">



							<%if(vo==null){ %>
							<li><a href="login.jsp">LOGIN</a></li>
							<li><a href="join.html">JOINUS</a></li>
							<%}else{ %>
							<%if((vo.getId()).equals("admin")){ %>
							<li><a href="manage.jsp">MANAGER PAGE</a></li>
							<li><a href="LogoutCon.do">LOGOUT</a></li>
							<%}else{ %>
							<li><a href="#">UPDATE</a></li>
							<li><a href="LogoutCon.do">LOGOUT</a></li>
							<%} 
							}%>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="main.jsp" style="color: #62b43f;">Home</a> <span
							class="mx-2 mb-0">/</span> <strong class="text-black">ABOUT
							US</strong>
					</div>
				</div>
			</div>
		</div>
		<!--section �߰� 0807-->
		<div class="arrow_b arrow" data-0="display:block"
			data-4000="display:none">

			<span></span> <span></span> <span></span>
		</div>
		<section id="section3" style="height: 12000px;"
			data-300="background:rgba(255,255,255,1);"
			data-2000="background : rgba(19, 15, 64,1.0);"
			data-8000="background: rgba(19, 15, 64,1.0);"
			data-11000="background:rgba(255,255,255,1.0)"
			class="skrollable skrollable-between">
			<div class="container3">
				<div class="sec3">

					<h3>
						<span>A</span><span>B</span><span>O</span><span>U</span><span>T</span>&nbsp;<span>U</span><span>S</span>
					</h3>
					<div class="ani" data-1500="left : 100%" data-8000="left : -1500%">
						<div class="row">
							<div class="abox_1">
								<div class="abox_img"
									style="background-image: linear-gradient(120deg, #d4fc79 0%, #96e6a1 100%);">
									<img src="images/young.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#����</p></span> <span class="effect"><p>#��ص�</p></span>
										</div>
										<h2>
											CHOI<br>YOUNG SEONG
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>ó�� ���� �����̿��� �������� �ߴµ�,<br>
										���� ���ư��� ���α׷��� �ϼ��Ǿ�� ����� ��￡�� �������� ���� �� �����ϴ�.</p>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
							<div class="abox_2">
								<div class="abox_img"
									style="background-image: linear-gradient(to top, #30cfd0 0%, #330867 100%);">
									<img src="images/seon.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#��ص�</p></span> <span class="effect"><p>#����Ʈ�ص�</p></span>

										</div>
										<h2>
											KIM<br>JI SEON
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>������Ʈ�� �����ϸ鼭 �� ������ �κе��� ������� �����Ͽ� ���� �˰ԵǸ鼭 �ڽŰ��� ������ϴ�.</p>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
							<div class="abox_3">
								<div class="abox_img"
									style="background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%);">
									<img src="images/nam.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#��ص�</p></span>

										</div>
										<h2>
											KIM<br>NAM JOONG
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>1������ �� ��ȭ�� 2�� ������Ʈ�� �����ϴ� ����־����ϴ�. </p>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
							<div class="abox_4">
								<div class="abox_img"
									style="background-image: linear-gradient(to top, #bdc2e8 0%, #bdc2e8 1%, #e6dee9 100%);">
									<img src="images/yeon.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#����Ʈ�ص�</p></span>
										</div>
										<h2>
											CHO<br>UI YEON
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>1������ �� ��ȭ�� 2�� ������Ʈ�� �����ϴ� ����־����ϴ�. </p>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
							<div class="abox_5">
								<div class="abox_img"
									style="background-image: linear-gradient(to top, #0ba360 0%, #3cba92 100%);">
									<img src="images/ho.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#�����긮��</p></span>

										</div>
										<h2>
											JEONG<br>HYUN HO
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>�����͸� �ٷ�鼭 �� ������ �����Ͱ� �߿��ϴٰ� �������ϴ�.<br>
ó������ ���������� �������� ���� ���� �ϳ��� �ϼ��ذ��� ����� ����<br>
������ �߿伺�� �ǻ������ �߿伺�� �˰� �Ǿ����ϴ�.</p>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
							<div class="abox_6">
								<div class="abox_img"
									style="background-image: linear-gradient(60deg, #abecd6 0%, #fbed96 100%);">
									<img src="images/seul.png" alt="">
								</div>
								<div class="abox_text">
									<div class="t_top">
										<div class="tagbox">
											<span class="effect"><p>#����Ʈ�ص�</p></span>

										</div>
										<h2>
											KIM<br>YE SEUL
										</h2>
									</div>
									<div class="t_bottom"><br>
										<p>��ư, ��� �׺���̼ǹ� �� �������� �������� ����� ������ �ű⿡ ����� �Ѱ��� ����ɶ����� �ѵ��߰� ����־�����.<br> 
										��, �����Ϳ� ���� �����ϴµ��� ������ Ű��� ���� ����ؾ߰ڴٴ� ������ ������ϴ�. <br>
										<div class="switch-button s_btn">
											<span class="active"></span>

										</div>
										<div class="btn btn_ani s_btn"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>







		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

						<div class="block-7">
							<h3 class="footer-heading mb-4">About Us</h3>
							<p style="color: black; font-family: 'ibm';">
								�ӽŷ��� �м��� ���� <br>����� ��ٱ��ϸ� ȿ�������� <br>ä���ִ� �ý����� �Ұ��մϴ�.
							</p>
						</div>

					</div>
					<div class="col-lg-3 mx-auto mb-5 mb-lg-0">
						<h3 class="footer-heading mb-4">Quick Links</h3>
						<ul class="list-unstyled">
							<li><a href="#">Supplements</a></li>
							<li><a href="#">Vitamins</a></li>
							<li><a href="#">Diet &amp; Nutrition</a></li>
							<li><a href="#">Tea &amp; Coffee</a></li>
						</ul>
					</div>

					<div class="col-md-6 col-lg-3">
						<div class="block-5 mb-5">
							<h3 class="footer-heading mb-4">Contact Info</h3>
							<ul class="list-unstyled">
								<li class="address" style="font-family: 'ibm';">���ֱ����� ����
									���ϵ� �۾Ϸ� 60 ����CGI���� 2��</li>
								<li class="phone"><a href="tel://0626553509">062-655-3509</a></li>
								<li class="email">smhrd@smhrd.or.kr</li>
							</ul>
						</div>


					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank"
								style="color: #62b43f; font-family: 'ibm';">�츮������ ��ı�</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>

		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery-ui.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/aos.js"></script>

		<script src="js/main.js"></script>
		<script>
  const tl = new TimelineMax({ repeat: -1, repeatDelay: 1 });
    tl.add("cartMove");
    tl.fromTo(
      "#cart",
      2,
      {
        x: -110,
        ease: Power1.easeOut
      },
      {
        x: 20,
        ease: Bounce.easeOut
      },
      "cartMove"
    );
    tl.from(
      "#RightWheelCross,#LeftWheelCross",
      2,
      {
        transformOrigin: "center",
        rotation: -1500
      },
      "cartMove"
    );
    tl.add("textMove");
    tl.to("#RightWheelCross,#LeftWheelCross", 0.2, {
      rotation: -100,
      transformOrigin: "center"
    });
    tl.to(
      "#text",
      1.5,
      {
        x: 20,
        ease: Bounce.easeOut
      },
      "textMove-=1.5"
    );
    
    
    var s = skrollr.init({
                forceHeight: false,
                smoothScrollingDuration: 500,
                mobileCheck: function(){
                    if((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i).test(navigator.userAgent || navigator.vendor || window.opera)){
                        // mobile device
                    }
                }
      });
      

      
$(window).scroll(function(){
    var wScroll = $(this).scrollTop();
        moveScroll = true;
    var offset1 = (wScroll  - $(window).height()) * 0.1;
    var offset2 = (wScroll  - $(window).height()) * 0.15;
    
    if(wScroll >= $(".sec3 h3").offset().top -$(window).height()/0.6){
        $(".sec3 h3").addClass("show");
    }

  });


    </script>
</body>

</html>