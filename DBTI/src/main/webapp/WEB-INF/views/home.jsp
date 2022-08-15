<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<style>
.container-xxl.bg-primary.page-header {
	display: none;
}

body {
    background-color: #ffffff;
}


/* 3D 입체버튼 */
.button3d {
  width: 250px;
  height: 50px;
}

.ButtonGeneral * {
  position: relative;
  z-index: 2;
  -webkit-transform: translateY(-.4rem);
  transform: translateY(-.4rem)
}

.ButtonGeneral {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 1.3rem 2.8rem;
  border: none;
  border-radius: 1.2rem;
  outline: transparent;
  -webkit-box-shadow: 0 .5rem 1.5rem 0 rgba(0, 0, 0, .1);
  box-shadow: 0 .5rem 1.5rem 0 rgba(0, 0, 0, .1);
  margin: 0 15px;
  text-decoration: none;
}

.ButtonGeneral:before {
  -webkit-transition: top .1s ease-out;
  transition: top .1s ease-out;
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  /*top: -0.6rem;*/
  top: -0.45rem;
  left: 0;
  border-radius: 1.2rem;
  content: "";
}

.ButtonGeneral:hover:before {
  top: -.25rem
}

.ButtonGeneral span {
  color: #ffffff;
  font-size: 0.9rem;
  font-weight: bold;
  -webkit-transition: transform .1s ease-out;
  transition: transform .1s ease-out
}

.ButtonGeneral:hover span {
  -webkit-transform: translateY(-.2rem) !important;
  transform: translateY(-.2rem) !important
}

.ButtonGeneral__white {
  background-color: #a059b5;
}

.ButtonGeneral__white:before {
  background-color: #7d3393;
}


.row {
    --bs-gutter-x: 8rem;
    --bs-gutter-y: 0;
    }


.container.container-sm.container-md.container-l.container-xl.container-xxl {
    max-width: 1320px;
} 

/* 헤더 크기 늘리기 강제로 important 우선순위 */
.hero-header {
       background-size: 100%  !important;
} 

/* @media (min-width: 1400px){
    .container-xxl {
        max-width: 2000px  !important;
    }   */ 
  
/* /*  @media (min-width: 1400px){
    .container-xxls {
        max-width: 1320px  !important;
        margin-left: 300px;
    }  */ */  
}
</style>

<link href="/resources/css/whole.css" rel="stylesheet">

<!-- <head>
    <meta charset="utf-8">
    <title>BizConsult - Consulting HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    Favicon
    <link href="/resources/img/favicon.ico" rel="icon">

    Google Web Fonts
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet"> 

    Icon Font Stylesheet
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    Libraries Stylesheet
    <link href="/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    Customized Bootstrap Stylesheet
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    Template Stylesheet
    <link href="/resources/css/style.css" rel="stylesheet">
</head> -->

<!-- ---------------------------<header>--------------------------------------- -->
<!-- <body>
    <div class="container-xxl bg-white p-0">
        Spinner Start
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        Spinner End


        Navbar & Hero Start
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.html" class="navbar-brand p-0">
                    <h1 class="m-0">BizConsult</h1>
                    <img src="img/logo.png" alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="feature.html" class="dropdown-item">Features</a>
                                <a href="quote.html" class="dropdown-item">Free Quote</a>
                                <a href="team.html" class="dropdown-item">Our Team</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="404.html" class="dropdown-item">404 Page</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                    <a href="" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">Free Quote</a>
                </div>
            </nav> -->

            <div class="container-xxl bg-primary hero-header">
                <div class="container">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 text-center text-lg-start">
                            <h1 class="text-white mb-4 animated zoomIn">Who am I?</h1>
                            <p class="text-white pb-3 animated zoomIn">자신에 대해 알고싶으면 ! 지금 바로 "성격유형검사" 를 실행해보세요 !</p>
<!--                             <a href="" class="btn btn-outline-light rounded-pill border-2 py-3 px-5 animated slideInRight">검사 시작하기</a>
 -->                        </div>
                        <div class="col-lg-6 text-center text-lg-start">
                            <img class="img-fluid animated zoomIn" src="/resources/img/undraw_co_workers_re_1i6i.svg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->
       

         <button class="nav-link ButtonGeneral DefaultHomeHead__btn ButtonGeneral__white button3d" style=" margin-left: 850px;">
           <span>검사 시작하기</span>
         </button>
<!-- ---------------------------<body>--------------------------------------- -->

       
        <!-- Newsletter Start -->
        <div class="container-xxls bg-primary my-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container px-lg-5">
                <div class="row align-items-center" style="height: 250px;">
                    <div class="col-12 col-md-6">
                        <h3 class="text-white">검사를 완료하셨나요 ?</h3>
                        <small class="text-white">"로그인" 을 하시면, 여러분의 "성격유형검사지" 를 이메일로 보내드립니다 !</small>
                        <div class="position-relative w-100 mt-3">
                            <input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="Enter Your Email" style="height: 48px;">
                            <button type="button" class="btn shadow-none position-absolute top-0 end-0 mt-1 me-2"><i class="fa fa-paper-plane text-primary fs-4"></i></button>
                        </div>
                    </div>
                    <div class="col-md-6 text-center mb-n5 d-none d-md-block">
                        <img class="img-fluid mt-5" style="max-height: 250px;" src="/resources/img/undraw_chatting_re_j55r.svg">
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter End -->


   
<!-- ---------------------------<footer>--------------------------------------- -->
<!--         Footer Start
        <div class="container-fluid bg-dark text-light footer pt-5 wow fadeIn" data-wow-delay="0.1s" style="margin-top: 6rem;">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Quick Link</h5>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Privacy Policy</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Career</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Popular Link</h5>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Privacy Policy</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Career</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulpu</p>
                        <div class="position-relative w-100 mt-3">
                            <input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="Your Email" style="height: 48px;">
                            <button type="button" class="btn shadow-none position-absolute top-0 end-0 mt-1 me-2"><i class="fa fa-paper-plane text-primary fs-4"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 
							
							/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        Footer End -->


<!--         Back to Top
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    JavaScript Libraries
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/wow/wow.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    Template Javascript
    <script src="/resources/js/main.js"></script>
</body> -->

</html>
