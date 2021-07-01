<!DOCTYPE html>
<html lang="en">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
    <title>Phần mềm quản lý cửa hàng vật tư</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <meta name="layout" content="main"/>

    <script src="{{ asset('public/lib/js/myjs.js')}}"></script>

    <script src="{{ asset('public/bootstrapnew/js/bootstrap.min.js')}}"></script>

    <script src="{{ asset('public/bootstrapnew/css/bootstrap.min.css')}}"></script>
    
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>

    <script src="{{ asset('public/lib/js/jquery/jquery-1.12.3.min.js')}}" type="text/javascript" ></script>

    <link href="{{ asset('public/lib/css/customize-template.css')}}" type="text/css" media="screen, projection" rel="stylesheet" />

</head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button class="btn btn-navbar" data-toggle="collapse" data-target="#app-nav-top-bar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    <div id="app-nav-top-bar" class="nav-collapse">
                        @if(Auth::user()->nguoidung_id == 1) 
                        <ul class="nav">
                            <li class="dropdown">
                                <a href="{!! URL::route('hethong.hethong') !!}">HỆ THỐNG</a>
                            </li>
							<li class="dropdown">
                                <a href="{!! URL::route('danhmuc.danhmuc') !!}">DANH MỤC</a>
                            </li>
							<li class="dropdown">
                                <a href="{!! URL::route('chucnang.chucnang') !!}">CHỨC NĂNG</a>
                            </li>
							<li class="dropdown">
                                <a href="{!! URL::route('trogiup.trogiup') !!}">TRỢ GIÚP</a>
                            </li>
                        </ul>
                        @elseif (Auth::user()->nguoidung_id == 2)
                        <ul class="nav">
                            <li class="dropdown">
                                <a href="{!! URL::route('hethong.hethong') !!}">HỆ THỐNG</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('chucnang.chucnang') !!}">CHỨC NĂNG</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('trogiup.trogiup') !!}">TRỢ GIÚP</a>
                            </li>
                        </ul>
                        @elseif (Auth::user()->nguoidung_id == 3)
                        <ul class="nav">
                            <li class="dropdown">
                                <a href="{!! URL::route('hethong.hethong') !!}">HỆ THỐNG</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('danhmuc.danhmuc') !!}">DANH MỤC</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('trogiup.trogiup') !!}">TRỢ GIÚP</a>
                            </li>
                        </ul>
                        @else
                        <ul class="nav">
                            <li class="dropdown">
                                <a href="{!! URL::route('hethong.hethong') !!}">HỆ THỐNG</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('chucnang.chucnang') !!}">CHỨC NĂNG</a>
                            </li>
                            <li class="dropdown">
                                <a href="{!! URL::route('trogiup.trogiup') !!}">TRỢ GIÚP</a>
                            </li>
                        </ul>
                        @endif
                        <ul class="nav pull-right">
                            <li>
                                <a href="{!! url('logout') !!}">{{ Auth::user()->name }}</a>
                                <input type="hidden" name="idNV" value="{{ Auth::user()->id }}">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="body-container">
            <div id="body-content">
                @yield('danhmuc')
                @yield('hethong')
                @yield('chucnang')
                @yield('trogiup')
                @yield('header')

            <section class="page container" >
                    <div class="row">
                        <div class="span16">
                        @if (Session::has('flash_message'))
                            <div class="alert alert-{!! Session::get('flash_level') !!}">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                {!! Session::get('flash_message') !!}
                            </div>
                        @endif
                        @yield('content')
                        </div>
                    </div>
            </section>
        </div>
        </div>


        <div id="spinner" class="spinner" style="display:none;">
            Loading&hellip;
        </div>


        <script src="{{ asset('public/lib/js/jquery/jquery-tablesorter.js')}}" type="text/javascript" ></script>

        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-collapse.js')}}" type="text/javascript" ></script>

        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-modal.js')}}" type="text/javascript" ></script>

        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-transition.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-alert.js')}}" type="text/javascript" ></script>
        
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-dropdown.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-scrollspy.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-tab.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-tooltip.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-popover.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-button.js')}}" type="text/javascript" ></script>
        
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-carousel.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-typeahead.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-affix.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/bootstrap/bootstrap-datepicker.js')}}" type="text/javascript" ></script>

        <script src="{{ asset('public/lib/js/jquery/jquery-chosen.js')}}" type="text/javascript" ></script>
        <script src="{{ asset('public/lib/js/jquery/virtual-tour.js')}}" type="text/javascript" ></script>

        <script type="text/javascript">
            $(function() {
                $('#sample-table').tablesorter();
                //$('#datepicker').datepicker();
                //$(".chosen").chosen();
            });
        </script>

        <footer class="application-footer">
            <div class="container">
                        <b> <p>Công ty linh kiện TH</p></b>
                        <div class="disclaimer">
                            <p>Địa chỉ: Số 168 - Phố Đức Minh- Phường Thanh Bình - TP Hải Dương - Tỉnh Hải Dương</p>
                            <p>Điện thoại:0868xxxxx - Fax: 0868xxxxx;  Email: mrhieuvip@gmail.com</p>
                        </div>
            </div>
        </footer>
	</body>
</html>