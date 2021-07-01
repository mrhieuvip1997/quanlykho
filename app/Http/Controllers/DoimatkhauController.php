<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

// use Illuminate\Http\Request;
use Hash,DB,Request;
use Input;
class DoimatkhauController extends Controller {

	public function getEdit()
	{
		return view('hethong.doimatkhau.doimatkhau');
	}

	public function postEdit()
	{
		$user_id = Request::input('user_id');// Lấy id đang đăng nhập
		$user = DB::table('users')->where('id',$user_id)->first();//Lấy thông tin user theo user_id
		$mkcu = Request::input('mkcu');
		$mkmoi = Request::input('mkmoi');
		$xacnhan = Request::input('xacnhan');
		
		//Hash check kiểm tra mk đã mã hóa có giống với mk trên DB (true/false)
		if (Hash::check($mkcu, $user->password) && $mkmoi == $xacnhan) {
			DB::table('users')->where('id',$user_id)->update([
					'password' => Hash::make($mkmoi)
				]);
			echo "<script>
				alert('Đổi mật khẩu thành công!!!Xin vui lòng đăng nhập với mật khẩu mới');
				
			</script>";
			return redirect('logout');
		} else {
			echo "<script>
				alert('Đổi mật khẩu không thành công');
			</script>";
			return redirect()->route('hethong.doimatkhau.getEdit');
		}
		
	}
}
