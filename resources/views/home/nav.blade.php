<header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top top-nav-collapse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{{url('/sanpham')}}"><span><img src="{{ asset('public/anh/vong bi.jpg') }}" alt="logo" width="25">Cửa hàng vật tư</span></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="{{url('/sanpham')}}#home">Trang chủ </a></li>
                        <li class="scroll"><a href="{{url('/sanpham')}}#services">Sản Phẩm </a></li>
                        <li class="scroll"><a href="{{url('/sanpham')}}#pricing">Top giá</a></li>
                       <li class="scroll"><a href="{{url('/sanpham')}}#get-in-touch">Liên hệ</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
