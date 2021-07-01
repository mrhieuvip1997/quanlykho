@extends('home.master')
@section('content')
@include('home.slide')
		<section id="services" >
	        <div class="container">

	            <div class="section-header">
	                <h2 class="section-title text-center wow fadeInDown">Sản phẩm</h2>
	                <p class="text-center wow fadeInDown">Sản phẩm được cung cấp</p>
	                <p class="text-center hidden">{{count($vattu)}}</p>
	            </div>
					
	            <div class="row">

	                <div class="features">
	                	@foreach($vattu as $vt)
	                    <div class="col-md-4 col-sm-6 wow fadeInUp" style="border: 2px solid black;" data-wow-duration="300ms" data-wow-delay="0ms">
	                        <div class="media service-box" >
	                            <div class="pull-left" style="border-bottom: 1px solid black;">
	                                <a href="{{route('chi-tiet',$vt->id)}}"><img src="{{ asset('public/anh')}}/{{$vt->image }}" alt="img" width="300px" height="150px"></a>
	                            </div>
	                            <div class="media-body text-center">
	                                <a href="{{route('chi-tiet',$vt->id)}}"><h4 class="media-heading">{{$vt->vt_ten}}</h4></a>
	                                <p>Giá: {{number_format($vt->vt_gia)}} VNĐ</p>
	                            </div>
	                        </div>
	                    </div><!--/.col-md-4-->
						@endforeach
	                </div>
	            </div><!--/.row-->   
	            <div class="row text-center">{!!$vattu->render()!!}</div> 
	        </div><!--/.container-->
	    </section><!--/#services-->
	    
	    <section id="pricing">
	        <div class="container">
	            <div class="section-header">
	                <h2 class="section-title text-center wow fadeInDown">Top giá</h2>
	                <p class="text-center wow fadeInDown">Sản phẩm có giá cao nhất</p>
	            </div>

	            <div class="row">
	            	@foreach($top_product as $tp)
	                <div class="col-sm-4">
	                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">
	                        <ul class="pricing">
	                            <li class="plan-header">
	                                <div class="plan-name">
	                                   {{$tp->vt_ten}}
	                                </div>
	                                <div class="pull-left" style="border-bottom: 1px solid black;">
		                                <a href="{{route('chi-tiet',$tp->id)}}"><img src="{{ asset('public/anh')}}/{{$tp->image }}" alt="img" width="300px" height="150px"></a>
		                            </div>
	                                <div class="">
	                                    Giá:  <span>{{$tp->vt_gia}} VNĐ</span> 
	                                </div>
	                                
	                            </li>
	                            
	                            <li style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">{{$tp->mo_ta}}</li>
	                            <li class="plan-purchase"><a class="btn btn-primary" href="{{route('chi-tiet',$tp->id)}}">Chi tiết</a></li>
	                        </ul>
	                    </div>
	                </div>
	                @endforeach
	            </div>
	        </div>

@endsection

