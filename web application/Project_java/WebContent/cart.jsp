<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Controller.VO"%>
<%@page import="com.Controller.DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>Pharma &mdash; Colorlib Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenLite.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TimelineMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.4/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">

</head>
<body>

	<%
		DecimalFormat format = new DecimalFormat("###,###");
		DAO dao = new DAO();
		VO vo = (VO) session.getAttribute("vo");
		ArrayList<VO> recomVO = null;
		ArrayList<VO> cartVO = null;
		if (vo != null) {
			cartVO = dao.basketSelect(vo.getId());
			recomVO = dao.recomSelect(vo.getId());
		}
	%>
  <div class="site-wrap">
        <div class="site-navbar py-2">

            <div class="search-wrap">
                <div class="container">
                    <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
                    <form action="#" method="post">
                        <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
                    </form>
                </div>
            </div>

            <div class="container">
                <div class="d-flex align-items-center justify-content-between">
                    <!-- 로고 -->
                    <div class="logo">
                        <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 278.55 79.08" style="overflow:visible;">
                            <defs>
                                <style>
                                    .cls-1 {
                                        fill: #414140;
                                    }
                    
                                    .cls-2,
                                    .cls-3 {
                                        fill: #a59faf;
                                    }
                    
                                    .cls-3 {
                                        font-size: 40.96px;
                                        letter-spacing: -0.02em;
                                    }
                    
                                    .cls-3,
                                    .cls-4,
                                    .cls-7 {
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
                                    <path class="cls-1" d="M225.45,165.66a5.75,5.75,0,1,1-5.74-5.74A5.74,5.74,0,0,1,225.45,165.66Z" transform="translate(-165.72 -103.53)" />
                                    <g id="LeftWheelCross">
                                        <rect class="cls-2" x="219.23" y="162.54" width="0.95" height="7.39" transform="translate(-221.01 79.48) rotate(-40.6)" />
                                        <rect class="cls-2" x="219.26" y="162.54" width="0.9" height="7.39" transform="translate(-37.69 -197.1) rotate(33.45)" />
                                    </g>
                                </g>
                                <g id="RightWheel">
                                    <path class="cls-1" d="M199.68,165.66a5.75,5.75,0,1,1-5.75-5.74A5.75,5.75,0,0,1,199.68,165.66Z" transform="translate(-165.72 -103.53)" />
                                    <g id="RightWheelCross">
                                        <rect class="cls-2" x="193.45" y="161.97" width="0.95" height="7.39" transform="translate(-226.84 62.56) rotate(-40.6)" />
                                        <rect class="cls-2" x="193.48" y="161.97" width="0.9" height="7.39" transform="translate(-42.28 -182.98) rotate(33.45)" />
                                    </g>
                                </g>
                                <path class="cls-1" d="M228.76,161.14H180.68l-2.61-42h-9.74a2.61,2.61,0,0,1,0-5.22H183l2.62,42h43.17a2.62,2.62,0,0,1,0,5.23Z" transform="translate(-165.72 -103.53)" />
                                <polygon class="cls-1" points="18.81 45.77 64.61 45.77 67.05 20.34 15.15 20.34 18.81 45.77" />
                                <path class="cls-1" d="M230.33,151.9h-45.8a2.62,2.62,0,0,1-2.59-2.24l-3.66-25.42a2.62,2.62,0,0,1,2.59-3h51.9a2.59,2.59,0,0,1,1.93.86,2.62,2.62,0,0,1,.67,2l-2.44,25.43A2.61,2.61,0,0,1,230.33,151.9Zm-43.54-5.22H228l1.94-20.2h-46Z" transform="translate(-165.72 -103.53)" /><text class="cls-3" transform="translate(33.96 43.15)"></text>
                            </g>
                            <g id="text"><text id="art" class="cls-4" transform="translate(132.43 67.88)">o<tspan class="cls-5" x="40.47" y="0">g</tspan>
                                    <tspan class="cls-6" x="85.66" y="0">o</tspan>
                                </text><text class="cls-7" transform="translate(82.77 67.88)" id='m'>b</text></g>
                        </svg>
                    </div>
                    <div class="main-nav d-none d-lg-block">
                        <nav class="site-navigation text-right text-md-center" role="navigation">
                            <ul class="site-menu js-clone-nav d-none d-lg-block">
                                <li class="active"><a href="main.jsp">Home</a></li>
                                
                                <li class="active">
                                    <a href="chart.jsp">CHART</a></li>
                                  </li>
                                <li class="active">
                                    <a href="ask.jsp">ASK</a></li>
                                </li>
                                <li class="active">
                                    <a href="faq.jsp">FAQ</a></li>
                                </li>
                                <li class="active">
                                    <a href="team.jsp">ABOUT</a></li>
                                </li>

                            </ul>
                        </nav>
                    </div>
                    <nav class="site-navigation text-right text-md-center" role="navigation">
                        <ul class="site-menu js-clone-nav d-none d-lg-block">

							<%
								if (vo == null) {
							%>
							<li><a href="login.jsp">LOGIN</a></li>
							<li><a href="join.html">JOINUS</a></li>
							<%
								} else {
							%>
							<%
								if ((vo.getId()).equals("admin")) {
							%>
							<li><a href="manage.jsp">MANAGER PAGE</a></li>
							<li><a href="LogoutCon.do">LOGOUT</a></li>
							<%
								} else {
							%>
							<li><a href="#">UPDATE</a></li>
							<li><a href="LogoutCon.do">LOGOUT</a></li>
							<%
								}
							}
							%>

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
							class="mx-2 mb-0">/</span> <strong class="text-black">Cart</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5">
					<form class="col-md-12" method="post">
						<div class="site-blocks-table">
							<table class="table table-bordered" style="font-family: 'ibm';">
								<thead>
									<tr>
										<th class="product-thumbnail">이미지</th>
										<th class="product-name">상품정보</th>
										<th class="product-price">상품금액</th>
										<th class="product-remove">삭제하기</th>
									</tr>
								</thead>
								<tbody>
									<%
										if (cartVO != null) {
										for (VO vos : cartVO) {
									%>
									<tr>
										<td class="product-thumbnail"><img
											src="<%=vos.getImg_url()%>" alt="Image" class="img-fluid">
										</td>
										<td class="product-name">
											<h2 class="h5 text-black"><%=vos.getTitle()%></h2>
										</td>
										<td><%=format.format(vos.getPrice())%></td>
										<td><a href="#"
											class="btn btn-primary height-auto btn-sm"
											style="color: #62b43f; background-color: white; border-color: #62b43f;">X</a></td>
									</tr>
									<%
										}
									}
									%>
								</tbody>
							</table>
						</div>
					</form>
				</div>

				<div class="row">
					<div class="col-md-6" style="font-family: 'ibm';">
						<div class="row">
							<div class="col-md-12">
								<label class="text-black h4" for="coupon">할인 코드</label>
							</div>
							<div class="col-md-8 mb-3 mb-md-0">
								<input type="text" class="form-control py-3" id="coupon"
									placeholder="할인코드 입력하기">
							</div>
							<div class="col-md-4">
								<button class="btn btn-primary btn-md px-4"
									style="background-color: #62b43f; border-color: #62b43f; color: whitesmoke;">적용하기</button>
							</div>
						</div>
					</div>
					<div class="col-md-6 pl-5" style="font-family: 'ibm';">
						<div class="row justify-content-end">
							<div class="col-md-7">
								<div class="row">
									<div class="col-md-12 text-right border-bottom mb-5">
										<h3 class="text-black h4 text-uppercase">장바구니</h3>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-md-6">
										<span class="text-black">선택 상품 수</span>
									</div>
									<div class="col-md-6 text-right">
										<strong class="text-black"><%=cartVO.size()%> 개</strong>
									</div>
								</div>
								<div class="row mb-5">
									<div class="col-md-6">
										<span class="text-black">총 상품 금액</span>
									</div>
									<div class="col-md-6 text-right">
										<strong class="text-black"> <%
 	int price = 0;
 for (VO vos : cartVO) {
 	price += vos.getPrice();
 }
 %> <%=format.format(price)%>원
										</strong>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<a href="https://kr.iherb.com/"><button
												class="btn btn-primary btn-lg btn-block" onclick="check()"
												style="background-color: #62b43f; border-color: #62b43f; color: whitesmoke;">아이허브가기</button>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">

				<div class="row">

					<%
						if (vo == null) {
					%>
					<h4>추천상품</h4>

					<%
						} else {
					%>
					<%for(VO vos : recomVO) {%>
					<%String [] title_name = vos.getTitle().split(", ");%>
				
						<div class="col-sm-6 col-lg-4 text-center item mb-4">
							<a href=<%=vos.getUrl()%>> <img src=<%=vos.getImg_url()%>
								alt="Image"></a>
							<h3 class="text-dark">
								<a href="shop-single.html"><%=title_name[1] %></a>
							</h3>
							<p class="price"><%=format.format(vos.getPrice()) %>원</p>
						</div>
						<%} %>
						<br><br><br>
						<h4><%=vo.getId()%>님의 추천상품</h4>
						<%
							}
						%>
				</div>
			</div>

			<div class="row" style="padding-left: 250px; padding-right: 250px;">
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_01.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Bioderma</a>
					</h3>
					<p class="price">
						<del>95.00</del>
						&mdash; $55.00
					</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_02.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Chanca Piedra</a>
					</h3>
					<p class="price">$70.00</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_03.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Umcka Cold Care</a>
					</h3>
					<p class="price">$120.00</p>
				</div>

				<div class="col-sm-6 col-lg-4 text-center item mb-4">

					<a href="shop-single.html"> <img src="images/product_04.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Cetyl Pure</a>
					</h3>
					<p class="price">
						<del>45.00</del>
						&mdash; $20.00
					</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_05.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">CLA Core</a>
					</h3>
					<p class="price">$38.00</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<span class="tag">Sale</span> <a href="shop-single.html"> <img
						src="images/product_06.png" alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Poo Pourri</a>
					</h3>
					<p class="price">
						<del>$89</del>
						&mdash; $38.00
					</p>
				</div>

				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<span class="tag">Sale</span> <a href="shop-single.html"> <img
						src="images/product_01.png" alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Bioderma</a>
					</h3>
					<p class="price">
						<del>95.00</del>
						&mdash; $55.00
					</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_02.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Chanca Piedra</a>
					</h3>
					<p class="price">$70.00</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_03.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Umcka Cold Care</a>
					</h3>
					<p class="price">$120.00</p>
				</div>

				<div class="col-sm-6 col-lg-4 text-center item mb-4">

					<a href="shop-single.html"> <img src="images/product_04.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Cetyl Pure</a>
					</h3>
					<p class="price">
						<del>45.00</del>
						&mdash; $20.00
					</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<a href="shop-single.html"> <img src="images/product_05.png"
						alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">CLA Core</a>
					</h3>
					<p class="price">$38.00</p>
				</div>
				<div class="col-sm-6 col-lg-4 text-center item mb-4">
					<span class="tag">Sale</span> <a href="shop-single.html"> <img
						src="images/product_06.png" alt="Image"></a>
					<h3 class="text-dark">
						<a href="shop-single.html">Poo Pourri</a>
					</h3>
					<p class="price">
						<del>$89</del>
						&mdash; $38.00
					</p>
				</div>
			</div>
		</div>
	</div>



	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

					<div class="block-7">
						<h3 class="footer-heading mb-4">About Us</h3>
						<p style="color: black; font-family: 'ibm';">
							머신러닝 분석을 통해 <br>당신의 장바구니를 효율적으로 <br>채워주는 시스템을 소개합니다.
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
							<li class="address" style="font-family: 'ibm';">광주광역시 남구 송하동
								송암로 60 광주CGI센터 2층</li>
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
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank"
							style="color: #62b43f; font-family: 'ibm';">우리팀명이 모냐구</a>
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
$(".site-navbar").each(function(){
    var header = $(this);
    var headerOffset = header.offset().top;

    $(window).scroll(function(){
        var wScroll = $(this).scrollTop();
        if(wScroll > headerOffset ){
                header.addClass("on");
        } else {
            header.removeClass("on");
        }
    });
});

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



    var snippet = [].slice.call(document.querySelectorAll('.hover'));
    if (snippet.length) {
        snippet.forEach(function (snippet) {
            snippet.addEventListener('mouseout', function (event) {
                if (event.target.parentNode.tagName === 'figure') {
                    event.target.parentNode.classList.remove('hover')
                } else {
                    event.target.parentNode.classList.remove('hover')
                }
            });
        });
    }

    function switchClass(i) {
   var lis = $('#home-news > div');
   lis.eq(i).removeClass('home_header_on');
   lis.eq(i).removeClass('home_header_out');
    lis.eq(i = ++i % lis.length).addClass('home_header_on');
    lis.eq(i = ++i % lis.length).addClass('home_header_out');
    setTimeout(function() {
        switchClass(i);
    }, 3500);
}

$(window).load(function() {
   switchClass(-1);
});

$('#siteGuide .guideBtn').hover(function(){
   
   $('#siteGuide .txt').addClass('on');

},function(){

   $('#siteGuide .txt').removeClass('on');

});

$('#siteGuide .guideBtn').click(function(){

   $('#guidePage').toggleClass('on');

});

//close버튼 스크립트
$('.btnClose').click(function(){

   $('#guidePage').removeClass('on');

});

//Esc키로 사이트안내 탈출
$(document).keydown(function(){

   if($('#guidePage').hasClass('on') && event.keyCode == 27){
   
      $('#guidePage').removeClass('on');

      return false;

   }

});
</script>

</body>
</html>