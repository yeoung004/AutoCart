<%@page import="com.Controller.VO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>Pharma &mdash; Colorlib Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
		VO vo = (VO)session.getAttribute("vo");
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
                    <div class="logo">
                        <div class="site-logo">
                            <a href="main.jsp" class="js-logo-clone">Pharma</a>
                        </div>
                    </div>
                    <div class="main-nav d-none d-lg-block">
                        <nav class="site-navigation text-right text-md-center" role="navigation">
                            <ul class="site-menu js-clone-nav d-none d-lg-block">
                                <li class="active"><a href="main.jsp">Home</a></li>
                                <li class="has-children">
                                    <a href="#">PRODUCT</a>
                                    <ul class="dropdown" style="font-family: 'ibm';">
                                        <li class="has-children">
                                            <a href="#">부위별 건강식품</a>
                                            <ul class="dropdown">
                                                <li><a href="#">소화기관</a></li>
                                                <li><a href="#">순환기관</a></li>
                                                <li><a href="#">호흡기관</a></li>
                                                <li><a href="#">방광</a></li>
                                                <li><a href="#">뼈</a></li>
                                                <li><a href="#">두뇌</a></li>
                                                <li><a href="#">심장</a></li>
                                                <li><a href="#">귀</a></li>
                                                <li><a href="#">모발</a></li>
                                                <li><a href="#">대장</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">대상별 건강식품</a>
                                            <ul class="dropdown">
                                                <li><a href="#">어린이</a></li>
                                                <li><a href="#">남성</a></li>
                                                <li><a href="#">여성</a></li>
                                                <li><a href="#">노인</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">효능별 건강식품</a>
                                            <ul class="dropdown">
                                                <li><a href="#">면역</a></li>
                                                <li><a href="#">통증완화</a></li>
                                                <li><a href="#">노화</a></li>
                                                <li><a href="#">두뇌</a></li>
                                                <li><a href="#">알레르기</a></li>
                                                <li><a href="#">시력</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">다이어트 식품</a>
                                            <ul class="dropdown">
                                                <li><a href="#">해독</a></li>
                                                <li><a href="#">체중감량</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">에너지/비타민</a>
                                            <ul class="dropdown">
                                                <li><a href="#">아유르베다</a></li>
                                                <li><a href="#">에너지</a></li>
                                                <li><a href="#">수면</a></li>
                                            </ul>
                                        </li>
                                    </ul>

                                </li>
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

        <div class="site-blocks-cover inner-page"
            style="background-image: url('images/Season.jpg'); font-family: 'ibm';">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto align-self-center">
                        <div class=" text-center" style="text-shadow: 2px 2px 2px gray;">
                            <h1>계절별 건강 유의사항</h1>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6">
                        <div class="block-16">
                            <figure>
                                <img src="images/Spring.jpg" alt="Image placeholder" class="img-fluid rounded">


                            </figure>
                        </div>
                    </div>
                    <div class="col-md-5" style="font-family: 'ibm';">
                        <div class="site-section-heading pt-3 mb-4">
                            <h2 class="text-black">◇봄(3~5월) : 알레르기 질환 주의</h2>
                        </div>
                        <p>꽃가루 등으로 비염이나 천식과 같은 알레르기성 질환자가 많아진다.
                            신학기 학생들이 모이면 서로 감염성 질환을 옮기는 경우가 많아 감기와
                            수족구병, 바이러스성 뇌수막염 등이 유행할 수 있다. 따라서 개인위생에 주의해야 한다.
                            손 씻기가 정말 중요하다. 또한 겨울철 움츠렸던 신진대사가 활발해지면서 직장인들이 춘곤증에 시달릴 수 있다.
                            신선한 과일과 고른 영양소 섭취, 운동으로 체력을 키워야 한다.</p>


                    </div>
                </div>
            </div>
        </div>



        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6 order-md-2">
                        <div class="block-16">
                            <figure>
                                <img src="images/Summer.jpg" alt="Image placeholder" class="img-fluid rounded">


                            </figure>
                        </div>
                    </div>
                    <div class="col-md-5 mr-auto" style="font-family: 'ibm';">
                        <div class="site-section-heading pt-3 mb-4">
                            <h2 class="text-black">◇여름(6~8월) : 감염성 질환 주의</h2>
                        </div>
                        <p class="text-black" style="color: #8c92a0;">음식이 상하기 쉬워 식중독 등이 쉽게 발생하므로 음식 관리에 신경 써야 한다. 지친 몸에서
                            탈이 나기 쉽다.
                            여름철은 더운 날씨와 높은 습도로 인해서 몸의 온도조절이 힘들어지고, 진액 손실이 많아지는 시기이다. 진액을 많이 함유하고 있으면서
                            새는 땀을 수렴해주는 오미자차가 손실된 진액을 보충해 주고, 새나가는 땀을 잡아 주므로 좋다. 또한 체온이 올라가서 힘들어지고
                            짜증이 나면서 답답할 때에는 몸 안의 열을 떨어뜨려 식혀주면서 진액을 보충해 주는 칡차가 좋다. 그리고 빠져나가는 진액과 함께 기운도 같이 새어 나가므로,
                            말려서 건조한 홍삼이나 인삼보다는 생으로 쓰는 수삼이 좋다. 수삼이 진액과 기운을 함께 보충해주기 때문이다.</p>

                    </div>
                </div>
            </div>
        </div>



        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6">
                        <div class="block-16">
                            <figure>
                                <img src="images/Autumn.jpg" alt="Image placeholder" class="img-fluid rounded">


                            </figure>
                        </div>
                    </div>
                    <div class="col-md-5" style="font-family: 'ibm';">
                        <div class="site-section-heading pt-3 mb-4">
                            <h2 class="text-black">◇가을(9~11월) : 벌레·곤충 주의</h2>
                        </div>
                        <p style="color: #8c92a0;">가을철은 건조해지면서 기온이 낮아진다. 1년 중 제일 쾌적하지만, 건조한 날씨 탓에 호흡기가 건조한 사람은 비염이 심해지거나
                            마른 기침이 생길 수 있다. 이때에는 한기를 몰아내 주는 생강차나 폐에 진액을 공급하고 기운을 불어넣어 주는 인삼차가 건강에 도움이 된다.</p>
                    </div>
                </div>
            </div>
        </div>



        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6 order-md-2">
                        <div class="block-16">
                            <figure>
                                <img src="images/Winter.jpg" alt="Image placeholder" class="img-fluid rounded">
                            </figure>
                        </div>
                    </div>
                    <div class="col-md-5 mr-auto" style="font-family: 'ibm';padding-right: 0px;">
                        <div class="site-section-heading pt-3 mb-4">
                            <h2 class="text-black" style="padding-right: 0%;">◇겨울(12~2월) : 호흡기질환 주의</h2>
                        </div>
                        <p class="text-black" style="color: #8c92a0;">겨울철은 본격적인 한기가 우리 호흡기 및 전신을 위협하는 시기이다. 면역력이 떨어져 가장
                            질병이 생기기 쉬운 계절이므로,
                            한기를 몰아내주고 움츠러든 근육을 풀어주는 것이 중요하다. 계피와 모과 그리고 생강, 인삼을 함께 차로 끓여서 약차로 마시면 감기도 예방하고 기운도 얻을 수 있다.
                            춥다고 웅크리고 있지만 말고 경직된 신체를 풀어줄 수 있도록 규칙적인 운동을 해야 한다.</p>

                    </div>
                </div>
            </div>
        </div>





        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container" style="font-family: 'ibm';">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 site-section-heading text-center pt-4">
                        <h2>여름철 4가지 필수 비타민</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-6 mb-5">

                        <div class="block-38 text-center">
                            <div class="block-38-img">
                                <div class="block-38-header">
                                    <img src="images/Vitamin-C.jpg" alt="Image placeholder" class="mb-4">
                                    <h3 class="block-38-heading h4">Vitamin C</h3>
                                    <p></p>
                                </div>
                                <div class="block-38-body">
                                    <p>비타민 C (L- 아스코르브 산)는 오렌지에서 잎이 많은 채소, 심지어 기본 흰 감자까지 모든 성분에서 발견되는 항산화제입니다.</p>
                                    <p>아마도 대부분의 환자들이 감기 나 독감에 걸렸을 때 여분의 비타민 C를 섭취하는 데 익숙한 이유 일 것입니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-5">
                        <div class="block-38 text-center">
                            <div class="block-38-img">
                                <div class="block-38-header">
                                    <img src="images/Vitamin-D.png" alt="Image placeholder" class="mb-4">
                                    <h3 class="block-38-heading h4">Vitamin D</h3>
                                    <p></p>
                                </div>
                                <div class="block-38-body">
                                    <p>여름에 비타민D을 복용하는 가장 좋은 이유는 그것이 체계적인 건강과 힘에 직접 기여하기 때문입니다.</p>
                                    <p>뼈를 강하게 만드는 것 외에도 면역 체계를 강화하고 인과 칼슘을 흡수하는 능력을 높이고 신체가
                                        좋은 지구력을 쉽게 발달시킬 수 있기 때문에 여름에 가장 중요한 비타민 중 하나입니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-5">
                        <div class="block-38 text-center">
                            <div class="block-38-img">
                                <div class="block-38-header">
                                    <img src="images/Vitamin-A.jpg" alt="Image placeholder" class="mb-4">
                                    <h3 class="block-38-heading h4">Vitamin A</h3>
                                    <p></p>
                                </div>
                                <div class="block-38-body">
                                    <p>비타민 A는 지용성이며 여름 건강에 가장 중요한 비타민 중 하나입니다.</p>
                                    <p>여름에 비타민 A를 복용하면 햇빛으로 인한 시력 손상을 예방할 수 있고, 보다 선명하고 밝게 보는 데 도움이 될 수 있습니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-5">
                        <div class="block-38 text-center">
                            <div class="block-38-img">
                                <div class="block-38-header">
                                    <img src="images/Vitamin-E.jpg" alt="Image placeholder" class="mb-4">
                                    <h3 class="block-38-heading h4">Vitamin E</h3>
                                    <p></p>
                                </div>
                                <div class="block-38-body">
                                    <p>비타민 E는 계란, 고기, 두부와 같은 식품에서 발견되는 지용성 비타민입니다. 소량이지만 대부분의
                                        청과에서 발견됩니다. 태양 관련 피부 손상을 예방하는 데 도움을 주고 특히 비타민 C와 결합할 때, 그 효과가 큽니다.
                                    </p>
                                </div>
                            </div>
                        </div>
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
                                머신러닝 분석을 통해 <br>당신의 장바구니를 효율적으로 <br>채워주는 시스템을 소개합니다.</p>
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
                                <li class="address" style=" font-family: 'ibm';">광주광역시 남구 송하동 송암로 60 광주CGI센터 2층</li>
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
                            <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is
                            made
                            with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank"
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

</body>
</html>