<?php

namespace App\Http\Controllers\Auth;


use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use App\VerifyUser;
use Mail;
use \Illuminate\Http\Request;
use App\Mail\VerifyMail;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;
    protected function registered(Request $request, $user)
    {
      $this->guard()->logout();
      return redirect('/loginForm')->with('status', 'We sent you an activation code. Check your email and click on the link to verify.');
    }
    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
    public function verifyUser($token)
    {
      $verifyUser = VerifyUser::where('token', $token)->first();
      if(isset($verifyUser) ){
        $user = $verifyUser->user;
        if(!$user->verified) {
          $verifyUser->user->verified = 1;
          $verifyUser->user->save();
          $status = "Your e-mail is verified. You can now login.";
        } else {
          $status = "Your e-mail is already verified. You can now login.";
        }
      } else {
        return redirect('/loginForm')->with('warning', "Sorry your email cannot be identified.");
      }
      return redirect('/loginForm')->with('status', $status);
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone_number' => ['required', 'string', 'max:20'],
            'password' => ['required', 'string', 'min:8'],
            //'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
     public function register(Request $request) { 
        
        $validator = \Validator::make($request->all(), [
            'name' => 'required|max:55', 
           'email' => 'email|required|unique:users',
           'password' => 'required'
       ]);

       if ($validator->fails()) {
             return redirect('/register')->with('warning','Something Wrong!');
          //return response()->json(['message'=>$validator->errors()],401);
       }
        $input = $request->all();
        $email = $request->email;
        $input['password'] = Hash::make($request->password);
      
        $user = User::create($input);
        $details = [
            'title' => 'Mail from Todo List',
            'body' => '1234'
        ];
       
        \Mail::to($email)->send(new \App\Mail\SendEmailCode($details));
        $accessToken = $user->createToken('authToken')->accessToken;

        
        return redirect('/login')->with('status','We have Send a Verification code To Your mail!');
         }
    protected function create(array $data)
    {
      $user = User::create([
        'name' => $data['name'],
        'email' => $data['email'],
        'phone_number' => $data['phone_number'],
        'is_admin' =>1,
        'password' => bcrypt($data['password']),
      ]);
      $verifyUser = VerifyUser::create([
        'user_id' => $user->id,
        'token' => sha1(time())
      ]);
      \Mail::to($user->email)->send(new VerifyMail($user));
    
      return $user;
    }
}
