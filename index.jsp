<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Women's Welfare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="rz_tmp/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
    <link href="rz_tmp/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="rz_tmp/css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"
        rel="stylesheet">
</head>

<body>
    <!-- Slider -->
    <div class="w3-banner-info-w3ltd position-relative">
        <!-- header -->
        <header>
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light p-0">
                    <h1><a class="navbar-brand" href="index.jsp">Women's Welfare

                        </a></h1>
                    <button class="navbar-toggler ml-lg-auto ml-sm-5 bg-light" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="ml-lg-5 navbar-nav mr-lg-auto">
                           
                            <!-- <li class="nav-item mr-lg-4 my-lg-0 mb-sm-4 mb-3">
                                <a href="contact.html">contact</a>
                            </li> -->
                        </ul>
                        <a href="user_regf.jsp"><button type="button" class="btn w3ls-btn text-uppercase font-weight-bold d-block" data-toggle="modal"
                            aria-pressed="false" data-target="#exampleModal1">
                            Register
                        </button></a>
                        <a href="login.jsp"><button type="button" class="btn w3ls-btn btn-2 ml-lg-1 text-uppercase font-weight-bold d-block"
                            data-toggle="modal" aria-pressed="false" data-target="#exampleModal">
                            Login
                        </button></a>
                    </div>
                </nav>
            </div>
        </header>
        <!-- //header -->
        <div class="slider">
            <ul class="rslides" id="slider">
                <li>
                    <div class="d-flex banner-w3pvt-bg1 common-bg">
                        <div class="d-flex mx-auto align-items-center justify-content-center flex-column">
                            <div class="bnr-w3pvt">
                                <h3>Women's Welfare</h3>
                                <div class="d-flex justify-content-between bnr-sub-txt align-items-center">
                                    <span></span>
                                    <p class="text-uppercase text-white">We Share, We Care</p>
                                    <span></span>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </li>
                
            </ul>
        </div>
    </div>
    <!-- //Slider -->

    <!-- js -->
    <script src="rz_tmp/js/jquery-2.2.3.min.js"></script>
    <!-- Slider-JavaScript -->
    <script src="rz_tmp/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider, #slider1").responsiveSlides({
                auto: true,
                nav: false,
                speed: 1500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
    <!-- //Slider-JavaScript -->
    <!-- script for password match -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- script for password match -->
    <!-- //js -->
    <script src="rz_tmp/js/move-top.js"></script>
    <script src="rz_tmp/js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="rz_tmp/js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="rz_tmp/js/bootstrap.min.js"></script>
</body>

</html>