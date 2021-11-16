<?php
namespace App\Http\Controllers\API;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Password;
use Carbon\Carbon;
use App\User;
use App\Events\LoginHistory;
class AuthController extends Controller
{
    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function register(Request $request) { 
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:55', 
            'email' => 'email|required|unique:users',
            'password' => 'required'
       ]);

       if ($validator->fails()) {

          return response()->json(['message'=>$validator->errors()->first(), 'status' => false],401);
       }
        $input = $request->all();
        $input['password'] = Hash::make($request->password);
      
        $user = User::create($input);
        // $details = [
        //     'title' => 'Mail from Todo List',
        //     'body' => '1234'
        // ];
        
        //  $digit = 3; // Amount of digits
        //  $min = pow(10,$digit);
        //  $max = (pow(10,$digit+1)-1);
        //  $code = rand($min, $max);
         
         $email = $request->email;
         $to = $email;
         $subject = "Verify Code From Todo";
         
         $message = "<b>Copy Four Digit Code.</b>";
         $message .= "<h1>1234</h1>";
         
         $header = "From:abc@somedomain.com \r\n";
         $header .= "Cc:afgh@somedomain.com \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
         
         $retval = mail ($to,$subject,$message,$header);
          $accessToken = $user->createToken('authToken')->accessToken;
         if( $retval == true ) {
            return response()->json(['user' => $user, 'access_token' => 'Bearer '.$accessToken,'emailVerifyCode'=>1234 ]);
         }else {
            return response()->json(['error' => 'Try Again!']);
         }
       // \Mail::to($email)->send(new \App\Mail\SendEmailCode($details));
       

       // return response([ 'user' => $user, 'access_token' => $accessToken,'emailVerifyCode'=>1234, 'status' => true]);
        
        }
  
    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function getAllUsers()
    {
        $users =  User::get();
        return response()->json(['success'=>$users]);
    }
    public function deleteUser($id){
        $user=User::find($id);
        $user->delete(); //returns true/false
        return response()->json(['success' => 'User Deleted Successfully!']);
    }
    public function login(Request $request)
    {
       
        $validator = \Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
            'remember_me' => 'boolean'
       ]);

       if ($validator->fails()) {

          return response()->json(['error'=>$validator->errors()],401);
       }

        
        $credentials = request(['email', 'password']);
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);
            
        $user = $request->user();
        
        event(new LoginHistory($user));
        // if ($user->is_admin == 1) {
            
        //     return view('Backend.Dashboard.Dashboard');
        // } else {
        //     return $user;
        //     return redirect()->back()->with('error', 'Oppes! You have no permission ');
        // }
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        $token->save();
        
        return response()->json([
            'user'    => $user,
            'access_token' => 'Bearer '.$tokenResult->accessToken,
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }
    public function resetpassword(Request $request)
    {
        $password = $request->password;
        $user =  User::where('user_id', $request->user_id)->update(['password' => Hash::make($password)]);
        return response()->json(['success' => true]);
    }
    public function editProfile(Request $request)
    {
        
        $user =  User::where('user_id','=', $request->user_id)->update($request->all());
        
        return response()->json(['success' => true]);
    }
    public function forgetpassword(Request $request)
    {
        $input = $request->all();
    $rules = array(
        'email' => "required|email",
    );
    $validator = \Validator::make($input, $rules);
    if ($validator->fails()) {
        $arr = array("status" => 400, "message" => $validator->errors()->first(), "data" => array());
    } else {
        try {
            $response = Password::sendResetLink($request->only('email'), function (Message $message) {
                $message->subject($this->getEmailSubject());
            });
            switch ($response) {
                case Password::RESET_LINK_SENT:
                    return \Response::json(array("status" => 200, "message" => trans($response), "data" => array()));
                case Password::INVALID_USER:
                    return \Response::json(array("status" => 400, "message" => trans($response), "data" => array()));
            }
        } catch (\Swift_TransportException $ex) {
            $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
        } catch (Exception $ex) {
            $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
        }
    }
    return \Response::json($arr);
        $user = User::where("email",$request->email)->first();
        if ($user) {
            
         $to = $request->email;
         $subject = "Verify Code From Todo";
         
         $message = "<b>Copy Four Digit Code.</b>";
         $message .= "<h1>1234</h1>";
         
         $header = "From:abc@somedomain.com \r\n";
         $header .= "Cc:afgh@somedomain.com \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
         
         $retval = mail ($to,$subject,$message,$header);
        return response()->json(['status' => true]);
         
            // $code =1234;
            // $details = [
            //     'title' => 'Mail from Todo List',
            //     'body' => "Copy This Four Digit Code ".'1234'
            // ];
            // $email = $request->email;
            // \Mail::to($email)->send(new \App\Mail\SendEmailCode($details));
            // return response()->json([
            //     "message" => "Code Send on your Email",
            //     "verifyCode" => $code
            // ]);
        }else{
            return response()->json([
                "message" => "Invalid Email"
            ]);
        }
    }
    public function change_password(Request $request)
{
    $input = $request->all();
    $userid = Auth::guard('api')->user()->id;
    $rules = array(
        'old_password' => 'required',
        'new_password' => 'required|min:6',
        'confirm_password' => 'required|same:new_password',
    );
    $validator = \Validator::make($input, $rules);
    if ($validator->fails()) {
        $arr = array("status" => 400, "message" => $validator->errors()->first(), "data" => array());
    } else {
        try {
            if ((Hash::check(request('old_password'), Auth::user()->password)) == false) {
                $arr = array("status" => 400, "message" => "Check your old password.", "data" => array());
            } else if ((Hash::check(request('new_password'), Auth::user()->password)) == true) {
                $arr = array("status" => 400, "message" => "Please enter a password which is not similar then current password.", "data" => array());
            } else {
                User::where('id', $userid)->update(['password' => Hash::make($input['new_password'])]);
                $arr = array("status" => 200, "message" => "Password updated successfully.", "data" => array());
            }
        } catch (\Exception $ex) {
            if (isset($ex->errorInfo[2])) {
                $msg = $ex->errorInfo[2];
            } else {
                $msg = $ex->getMessage();
            }
            $arr = array("status" => 400, "message" => $msg, "data" => array());
        }
    }
    return \Response::json($arr);
}
    public function regenerateCode(Request $request)
    {
        $user = User::where("email",$request->email)->first();
        
        if ($user) {
             $to = $user->email;
             $subject = "Verify Code From Todo";
             
             $message = "<b>Copy Four Digit Code.</b>";
             $message .= "<h1>1234</h1>";
             
             $header = "From:abc@somedomain.com \r\n";
             $header .= "Cc:afgh@somedomain.com \r\n";
             $header .= "MIME-Version: 1.0\r\n";
             $header .= "Content-type: text/html\r\n";
             
             $retval = mail ($to,$subject,$message,$header);
            return response()->json(['status' => true]);
            // $code =1234;
            // $details = [
            //     'title' => 'Mail from Todo List',
            //     'body' => "Copy This Four Digit Code ".'1234'
            // ];
            // $email = $request->email;
            // \Mail::to($email)->send(new \App\Mail\SendEmailCode($details));
            // return response()->json([
            //     "message" => "Code Send on your Email",
            //     "verifyCode" => $code
            // ]);
        }else{
            return response()->json([
                "message" => "Invalid Email"
            ]);
        }
    }
  
    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        //$request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
  
    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }
}