<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <title>Phần mêm quản lý cửa hàng vật tư</title>
		<!-- core CSS -->
    	<link href="{{ asset('public/lib/css/animate.min.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/bootstrap.min.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/font-awesome.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/owl.carousel.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/owl.transitions.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/owl.transitions.css')}}" rel="stylesheet" />
    	<link href="{{ asset('public/lib/css/main.css')}}" rel="stylesheet" />
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
	    <![endif]-->       
	  
	</head><!--/head-->
	<body id="home" class="homepage">
	@include('home.nav')

	@yield('content')

	<section id="get-in-touch" class="pt-5">
		        <div class="container">
		            <div class="section-header">
		                <h2 class="section-title text-center wow fadeInDown">LIÊN HỆ</h2>
		                <p class="text-center wow fadeInDown">Mua hàng trực tuyến mang lại sự tiện lợi, chủ động, lựa chọn đa dạng, với các dịch vụ hỗ trợ mua hàng, bán hàng, thanh toán an toàn, giao hàng chuyên nghiệp. <br> </p>
		            </div>
		            
		            <div class="row">
		            <div class="col-sm-6">
		            <div class="address">
		            <h4>Địa chỉ</h4>
		            " <u>Cửa hàng vật tư</u> <i>Số 06 - Phố Đức Minh- Phường Thanh Bình - TP Hải Dương - Tỉnh Hải Dương</i>
		            </div>
		            
		            <div class="address">
		            <h4>Điện thoại </h4>
		            <p>0868.xxx.xxx</p>
		            </div>
		            
		            
		            </div>
		            
		            <div class="col-sm-6">
		            
		            <div class="address">
		            <h4>Email</h4>
		            <p><a href="#">trinhtrunghieu@gmail.com </a></p>
		            </div>
		            
		            <div class="address">
		            <h4>Theo dõi</h4>
		            <p><a href="#"><i class="fa fa-facebook"></i></a>  &nbsp; <a href="#"><i class="fa fa-twitter"></i></a> &nbsp; <a href="#"><i class="fa fa-google-plus"></i></a></p>
		            </div>
		            </div>
		            
		            
		            </div>
		            
		            
		        </div>
		    </section><!--/#get-in-touch-->
	    <footer id="footer">
	        <div class="container text-center">
	          Code by TH © 2021</a>
	        </div>
	    </footer><!--/#footer-->
		
    	<script src="{{ asset('public/lib/js/jquery/jquery-1.12.3.min.js')}}"></script>
	    <script src="{{ asset('public/lib/js/jquery.js')}}"></script>
	    <script src="{{ asset('public/lib/js/bootstrap.min.js')}}"></script>
	    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	    <script src="{{ asset('public/lib/js/owl.carousel.min.js')}}"></script>
	    <script src="{{ asset('public/lib/js/mousescroll.js')}}"></script>
	    <script src="{{ asset('public/lib/js/smoothscroll.js')}}"></script>
	    <script src="{{ asset('public/lib/js/jquery.prettyPhoto.js')}}"></script>
	    <script src="{{ asset('public/lib/js/jquery.isotope.min.js')}}"></script>
	    <script src="{{ asset('public/lib/js/jquery.inview.min.js')}}"></script>
	    <script src="{{ asset('public/lib/js/wow.min.js')}}"></script>
	    <script src="{{ asset('public/lib/js/main.js')}}"></script>
		<script src="{{ asset('public/lib/js/scrolling-nav.js')}}"></script>
	<script>

	    $(document).ready(function($) {
	      $("#owl-example").owlCarousel();
	    });

	    $("body").data("page", "frontpage");

	$("#owl-example").owlCarousel({ 
	        items:3,   
	/*        itemsDesktop : [1199,3],
	        itemsDesktopSmall : [980,9],
	        itemsTablet: [768,5],
	        itemsTabletSmall: false,
	        itemsMobile : [479,4]*/
	})

	    </script>
	</body>
</html>