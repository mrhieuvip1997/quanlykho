<section id="main-slider">
    <div class="owl-carousel">
        @foreach($slide as $sl)
        <div class="item" style="background-image: url(public/anh/{{$sl->ten_anh}});">
            <div class="slider-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <div class="carousel-content">
                                <h1 class="card" style="color: #000;"><b style="background-color: #c9c9c9; padding: 7px 20px; border-radius: 15px;">Cửa hàng vật tư</h1><br>
                                <h2 class="card" style="color: #000; background-color: #c9c9c9; padding: 10px 15px; border-radius: 15px;">{{$sl->noi_dung}}</h2></b>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/.item-->
        @endforeach
    </div><!--/.owl-carousel-->
</section><!--/#main-slider-->