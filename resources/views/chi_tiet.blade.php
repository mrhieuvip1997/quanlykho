@extends('home.master')
@section('content')
<!-- Page Content -->
<div class="container">
  <!-- Portfolio Item Heading -->
  <h1 class="my-4">{{$chitiet->vt_ten}}
  </h1>
  <hr>
  <!-- Portfolio Item Row -->
  <div class="row pb-5">
    <div class="col-md-8" style="border-right: solid 1px #c9c9c9; ">
      <img class="img" src="{{ asset('public/anh')}}/{{$chitiet->image}}" alt="" width="500" height="500">
    </div>
    <div class="col-md-4">
      <h3 class="my-3">Sản phẩm: {{$chitiet->vt_ten}}</h3>
      <p>{{$chitiet->mo_ta}}</p>
      <h3 class="my-3">Giá: {{number_format($chitiet->vt_gia)}} VNĐ</h3>
      <!-- <ul style="list-style-type: none;">
        <li><a href="" class="btn btn-primary">Thêm vào giỏ hàng</a></li>
        <br>
        <li><a href="" class="btn btn-primary">Thanh toán</a></li>
      </ul> -->
    </div>

  </div>
  <!-- /.row -->
</div>
<br>
<!-- /.container -->
@endsection