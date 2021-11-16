<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use \Illuminate\Http\Request;
use App\User;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;
    public function authenticated(Request $request, $user)
    {
      // if (!$user->verified) {
      //   auth()->logout();
      //   return back()->with('warning', 'You need to confirm your account. We have sent you an activation code, please check your email.');
      // }
      // return redirect()->intended($this->redirectPath());
    }
    public function login(Request $request)
   {  
       $inputVal = $request->all();
  
       $this->validate($request, [
           'email' => 'required|email',
           'password' => 'required',
       ]);
  
       if(auth()->attempt(array('email' => $inputVal['email'], 'password' => $inputVal['password']))){
           if (auth()->user()->is_admin == 0) {
               
               return redirect('admin');
           }else{
               return redirect('home');
           }
       }else{
        return redirect('/login')->with('status','Email & Password are incorrect.');
       }     
   }
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
