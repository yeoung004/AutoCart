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
                                            <a href="#">������ �ǰ���ǰ</a>
                                            <ul class="dropdown">
                                                <li><a href="#">��ȭ���</a></li>
                                                <li><a href="#">��ȯ���</a></li>
                                                <li><a href="#">ȣ����</a></li>
                                                <li><a href="#">�汤</a></li>
                                                <li><a href="#">��</a></li>
                                                <li><a href="#">�γ�</a></li>
                                                <li><a href="#">����</a></li>
                                                <li><a href="#">��</a></li>
                                                <li><a href="#">���</a></li>
                                                <li><a href="#">����</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">��� �ǰ���ǰ</a>
                                            <ul class="dropdown">
                                                <li><a href="#">���</a></li>
                                                <li><a href="#">����</a></li>
                                                <li><a href="#">����</a></li>
                                                <li><a href="#">����</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">ȿ�ɺ� �ǰ���ǰ</a>
                                            <ul class="dropdown">
                                                <li><a href="#">�鿪</a></li>
                                                <li><a href="#">������ȭ</a></li>
                                                <li><a href="#">��ȭ</a></li>
                                                <li><a href="#">�γ�</a></li>
                                                <li><a href="#">�˷�����</a></li>
                                                <li><a href="#">�÷�</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">���̾�Ʈ ��ǰ</a>
                                            <ul class="dropdown">
                                                <li><a href="#">�ص�</a></li>
                                                <li><a href="#">ü�߰���</a></li>
                                            </ul>
                                        </li>
                                        <li class="has-children">
                                            <a href="#">������/��Ÿ��</a>
                                            <ul class="dropdown">
                                                <li><a href="#">����������</a></li>
                                                <li><a href="#">������</a></li>
                                                <li><a href="#">����</a></li>
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
                            <h1>������ �ǰ� ���ǻ���</h1>
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
                            <h2 class="text-black">�޺�(3~5��) : �˷����� ��ȯ ����</h2>
                        </div>
                        <p>�ɰ��� ������ ���̳� õ�İ� ���� �˷����⼺ ��ȯ�ڰ� ��������.
                            ���б� �л����� ���̸� ���� ������ ��ȯ�� �ű�� ��찡 ���� �����
                            ��������, ���̷����� �������� ���� ������ �� �ִ�. ���� ���������� �����ؾ� �Ѵ�.
                            �� �ıⰡ ���� �߿��ϴ�. ���� �ܿ�ö �����ȴ� ������簡 Ȱ�������鼭 �����ε��� ������� �ô޸� �� �ִ�.
                            �ż��� ���ϰ� �� ����� ����, ����� ü���� Ű���� �Ѵ�.</p>


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
                            <h2 class="text-black">�޿���(6~8��) : ������ ��ȯ ����</h2>
                        </div>
                        <p class="text-black" style="color: #8c92a0;">������ ���ϱ� ���� ���ߵ� ���� ���� �߻��ϹǷ� ���� ������ �Ű� ��� �Ѵ�. ��ģ ������
                            Ż�� ���� ����.
                            ����ö�� ���� ������ ���� ������ ���ؼ� ���� �µ������� ���������, ���� �ս��� �������� �ñ��̴�. ������ ���� �����ϰ� �����鼭
                            ���� ���� �������ִ� ���������� �սǵ� ������ ������ �ְ�, �������� ���� ��� �ֹǷ� ����. ���� ü���� �ö󰡼� ���������
                            ¥���� ���鼭 ����� ������ �� ���� ���� ����߷� �����ָ鼭 ������ ������ �ִ� Ħ���� ����. �׸��� ���������� ���װ� �Բ� �� ���� ���� �����Ƿ�,
                            ������ ������ ȫ���̳� �λﺸ�ٴ� ������ ���� ������ ����. ������ ���װ� ����� �Բ� �������ֱ� �����̴�.</p>

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
                            <h2 class="text-black">�ް���(9~11��) : ���������� ����</h2>
                        </div>
                        <p style="color: #8c92a0;">����ö�� ���������鼭 ����� ��������. 1�� �� ���� ����������, ������ ���� ſ�� ȣ��Ⱑ ������ ����� ���� �������ų�
                            ���� ��ħ�� ���� �� �ִ�. �̶����� �ѱ⸦ ���Ƴ� �ִ� �������� �� ������ �����ϰ� ����� �Ҿ�־� �ִ� �λ����� �ǰ��� ������ �ȴ�.</p>
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
                            <h2 class="text-black" style="padding-right: 0%;">�ްܿ�(12~2��) : ȣ�����ȯ ����</h2>
                        </div>
                        <p class="text-black" style="color: #8c92a0;">�ܿ�ö�� �������� �ѱⰡ �츮 ȣ��� �� ������ �����ϴ� �ñ��̴�. �鿪���� ������ ����
                            ������ ����� ���� �����̹Ƿ�,
                            �ѱ⸦ ���Ƴ��ְ� �������� ������ Ǯ���ִ� ���� �߿��ϴ�. ���ǿ� ��� �׸��� ����, �λ��� �Բ� ���� ������ ������ ���ø� ���⵵ �����ϰ� �� ���� �� �ִ�.
                            ��ٰ� ��ũ���� ������ ���� ������ ��ü�� Ǯ���� �� �ֵ��� ��Ģ���� ��� �ؾ� �Ѵ�.</p>

                    </div>
                </div>
            </div>
        </div>





        <div class="site-section bg-light custom-border-bottom" data-aos="fade">
            <div class="container" style="font-family: 'ibm';">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 site-section-heading text-center pt-4">
                        <h2>����ö 4���� �ʼ� ��Ÿ��</h2>
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
                                    <p>��Ÿ�� C (L- �ƽ��ڸ��� ��)�� ���������� ���� ���� ä��, ������ �⺻ �� ���ڱ��� ��� ���п��� �߰ߵǴ� �׻�ȭ���Դϴ�.</p>
                                    <p>�Ƹ��� ��κ��� ȯ�ڵ��� ���� �� ������ �ɷ��� �� ������ ��Ÿ�� C�� �����ϴ� �� �ͼ��� ���� �� ���Դϴ�.</p>
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
                                    <p>������ ��Ÿ��D�� �����ϴ� ���� ���� ������ �װ��� ü������ �ǰ��� ���� ���� �⿩�ϱ� �����Դϴ�.</p>
                                    <p>���� ���ϰ� ����� �� �ܿ��� �鿪 ü�踦 ��ȭ�ϰ� �ΰ� Į���� ����ϴ� �ɷ��� ���̰� ��ü��
                                        ���� �������� ���� �ߴ޽�ų �� �ֱ� ������ ������ ���� �߿��� ��Ÿ�� �� �ϳ��Դϴ�.</p>
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
                                    <p>��Ÿ�� A�� ���뼺�̸� ���� �ǰ��� ���� �߿��� ��Ÿ�� �� �ϳ��Դϴ�.</p>
                                    <p>������ ��Ÿ�� A�� �����ϸ� �޺����� ���� �÷� �ջ��� ������ �� �ְ�, ���� �����ϰ� ��� ���� �� ������ �� �� �ֽ��ϴ�.</p>
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
                                    <p>��Ÿ�� E�� ���, ���, �κο� ���� ��ǰ���� �߰ߵǴ� ���뼺 ��Ÿ���Դϴ�. �ҷ������� ��κ���
                                        û������ �߰ߵ˴ϴ�. �¾� ���� �Ǻ� �ջ��� �����ϴ� �� ������ �ְ� Ư�� ��Ÿ�� C�� ������ ��, �� ȿ���� Ů�ϴ�.
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
                                �ӽŷ��� �м��� ���� <br>����� ��ٱ��ϸ� ȿ�������� <br>ä���ִ� �ý����� �Ұ��մϴ�.</p>
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
                                <li class="address" style=" font-family: 'ibm';">���ֱ����� ���� ���ϵ� �۾Ϸ� 60 ����CGI���� 2��</li>
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

</body>
</html>