<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Http\Request;
use App\Helper;
use Carbon\Carbon;
use App\Task;
use App\User;
class taskTimeRemaining30Minutes extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'taskTimeRemaining30Minutes:check';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Task remaining 30 minutes ';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(User $user)
    {
        $this->user =$user;
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle(Request $request)
    {
        
        $todayDate = Carbon::now()->format('Y-n-d');
                
                $todaytime = Carbon::now()->format('h:i:s');
               
                 $users = User::select("user_id","fcm_token")->where("status",1)->get();
                 $tasks = Task::select('user_id','time','date','task_id')
                                    ->where('date', '=', $todayDate)
                                    ->where('status','=','1')
                                    ->get();
                 $user_id = [];
                foreach($users as $user){
                    $user_id[$user->user_id] = [$user->fcm_token];     
                }     
                
                foreach($tasks as $value){
                    $to_time = strtotime($value['date'].' '.$value['time']);
                    //return $to_time;
                    $from_time = strtotime(date("Y-n-d h:i:s"));
                    $difMint = round(abs($to_time-$from_time) / 60);
                    echo $difMint;
                    //  list($hour, $mint) = explode(':', $value['time']);
                    //  list($cHour, $cMint) = explode(':', date('H:i'));
                    //  $difMint =  ($hour * 60 + $mint) - ($cHour * 60 + $cMint);
                    //  return $difMint;
                     if($difMint == 30){
                         echo "s";
                         if(array_key_exists($value['user_id'], $user_id)){
                            $fcm_token = $user_id[$value['user_id']];
                            $title ="title";
                            $message="message one";
                            $a =Helper::sendPushNotification($title,$message,$fcm_token);
                         }
                     //    return "ts";
                    
          
                     }
                     
                
    }
}
}
