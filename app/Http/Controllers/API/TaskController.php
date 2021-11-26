<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\Task;
use App\Comment;
use App\SubTask;
use App\Habit;
use App\HabitDetail;
use App\LevelHistory;
use App\GroceryCategory;
use App\GroceryList;
use App\GroceryItem;
use App\LogsDetails;
use App\Event;
use DB;
class TaskController extends Controller
{
    public function test(){
        return "test";
    }
    
    // add task
    public function addTask(Request $request)
    {
        
        $timeZone = $request->timezone;
        date_default_timezone_set($timeZone);
        //$task = Task::create($request->all());
        //$todayDate = Carbon::now()->format('d-n-Y');
        //$todaytime = Carbon::now()->format('H:i:m');
        
        
        $time = $request->time;
        $newtime =  date("G:i:m", strtotime($time));
        
        $start_tim = $request->start_time;
        $start_time =  date("G:i:m", strtotime($start_tim));
        // $date = new \DateTime();
        //$date->setTimezone(new \DateTimeZone('+0500')); //GMT
        //return  $date->setTimezone(new \DateTimeZone('+0500'));
        $date = $request->date;
        $newDate = Carbon::createFromFormat('d-n-Y', $date)
                    ->format('Y-m-d');
        $month = explode('-',$newDate);
                    
        $start_date = Carbon::createFromFormat('d-n-Y', $date)
                    ->format('Y-m-d');            
        //$newtime = date("H:i:m", strtotime($time));
                    //return $newtime;
        /*$task = new Task();
        $task->user_id = $request->user_id;
        $task->tags = $request->tags;
        $task->title = $request->title;
        $task->month = $month[1];
        $task->description = $request->description;
        $task->repeated = $request->repeated;
        //$task->reminder = $request->reminder;
        $task->repeat_description = $request->repeat_description;*/
        
        //return $request->repeat_description;
        if($request->repeated == "Daily")
        {
            $task = new Task();
            $task->user_id = $request->user_id;
            $task->tags = $request->tags;
            $task->title = $request->title;
            $task->month = $month[1];
            $task->description = $request->description;
            $task->repeated = $request->repeated;
            //$task->reminder = $request->reminder;
            $task->repeat_description = $request->repeat_description;
            $task->reminder = $request->reminder;
            $task->project_id = $request->project_id;
            $task->section_id = $request->section_id;
            $task->start_date = $start_date;
            $task->start_time = $start_time;
            $task->repeat_days = $request->repeat_days;
            $task->repeat_months = $request->repeat_months;
            $task->date = $newDate;
            $task->time = $newtime;
            $task->priority = $request->priority;
            $task->save();
            return response([ 'task'=> $task,'success' => true]);
        }else if($request->repeated == "Weekly")
        {
            $task = new Task();
            $task->user_id = $request->user_id;
            $task->tags = $request->tags;
            $task->title = $request->title;
            $task->month = $month[1];
            $task->description = $request->description;
            $task->repeated = $request->repeated;
            //$task->reminder = $request->reminder;
            $task->repeat_description = $request->repeat_description;
            $task->reminder = $request->reminder;
            $repeat_on_day = $request->repeat_day_name;
            
            $repeat_days = implode(",",$repeat_on_day);
            //$serializedArr = serialize($repeat_on_day);
            $task->project_id = $request->project_id;
            $task->section_id = $request->section_id;
            //$task->repeat_description = $request->repeat_description;
            $task->start_date = $start_date;
            $task->start_time = $start_time;
            $task->repeat_weaks = $request->repeat_weaks;
            $task->repeat_day_name = $repeat_days;
            $task->repeat_months = $request->repeat_months;
            $task->date = $newDate;
            $task->time = $newtime;
            $task->priority = $request->priority;
            $task->save();
            return response([ 'task'=> $task,'success' => true]);
        }else if($request->repeated == "Monthly")
        {
            $task = new Task();
            $task->user_id = $request->user_id;
            $task->tags = $request->tags;
            $task->title = $request->title;
            $task->month = $month[1];
            $task->description = $request->description;
            $task->repeated = $request->repeated;
            //$task->reminder = $request->reminder;
            $task->repeat_description = $request->repeat_description;
            $task->project_id = $request->project_id;
            $task->section_id = $request->section_id;
            $task->reminder = $request->reminder;
            //$task->repeat_description = $request->repeat_description;
            $task->start_date = $start_date;
            $task->start_time = $start_time;
            $task->repeat_by = $request->repeat_by;
            $task->repeat_how_many_months = $request->repeat_how_many_months;
            $task->repeat_months = $request->repeat_months;
            $task->date = $newDate;
            $task->time = $newtime;
            $task->priority = $request->priority;
            $task->save();
            return response([ 'task'=> $task,'success' => true]);
        }else if($request->repeated == "Yearly")
        {
            $task = new Task();
            $task->user_id = $request->user_id;
            $task->tags = $request->tags;
            $task->title = $request->title;
            $task->month = $month[1];
            $task->description = $request->description;
            $task->repeated = $request->repeated;
            //$task->reminder = $request->reminder;
            $task->repeat_description = $request->repeat_description;
            //return $newDate;
            $task->project_id = $request->project_id;
            $task->section_id = $request->section_id;
            $task->reminder = $request->reminder;
            //$task->repeat_description = $request->repeat_description;
            $task->start_date = $start_date;
            $task->start_time = $start_time;
            $task->repeat_how_many_year = $request->repeat_how_many_year;
            $task->repeat_months = $request->repeat_months;
            $task->date = $newDate;
            $task->time = $newtime;
            $task->priority = $request->priority;
            $task->save();
            return response([ 'task'=> $task,'success' => true]);
         }
         
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Task";
        $logs->option_name = "Task";
        $logs->device_id = $request->device_id;
        $logs->save();
         
    }
    
    
    // get over due date task
    public function overDueDateTask(Request $request)
    {
        //date_default_timezone_set("Asia/Karachi");
        //$todaytime = Carbon::now()->format('H:i:m');
       //$time  = date("h:i A", strtotime($todaytime));
       //return $todaytime;
       //$time  = date("H:i:m", strtotime($todaytime));
       //return $time;
       //$date = date('Y-n-d');
         $todayDate = Carbon::now()->format('Y-n-d');
         $todaytime = Carbon::now()->format('H:i:m');
         
      // $overDueDateTask = DB::select("SELECT * FROM tasks WHERE time < '$time' and date <= '$date' and user_id = 77");
       //return $todayDate;
        $overDueDateTask = Task::where('user_id','=',$request->user_id)
                            ->where('date', '=', $todayDate)
                            ->Where('time', '<', $todaytime)
                            ->where('status','=','1')
                            ->get();
        
        return response([ 'overDueDateTask'=> $overDueDateTask,'success' => true]);
    }
    
    // add comment
    public function addComment(Request $request)
    {
        $comment = Comment::create($request->all());
        
        function sendGoogleCloudMessage( $data, $ids ) {
            $apiKey = 'AAAA86biV8M:APA91bHyMc6JNF3mhwadXgDvwtVbmKNshqsdyumLb_LgQlVAzeSUKi_LkSQmx08MRVymC6Jdp6XbGmQ9pvziUeMkVgegEeIW8sQ3oUb0KlZOCp-FMI1gnCzldAgAg6HilzPYretRlEAG';
            $url = 'https://android.googleapis.com/gcm/send';
            $post = array(
                            'registration_ids'  => $ids,
                            'data'              => $data,
                            );
            $headers = array( 
                                'Authorization: key=' . $apiKey,
                                'Content-Type: application/json'
                            );
            $ch = curl_init();
            curl_setopt( $ch, CURLOPT_URL, $url );
            curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4 );
            curl_setopt( $ch, CURLOPT_POST, true );
            curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers );
            curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
            curl_setopt( $ch, CURLOPT_POSTFIELDS, json_encode( $post ) );
            $result = curl_exec( $ch );
            if ( curl_errno( $ch ) ) {
                $result = $result . 'GCM error: ' . curl_error( $ch );
            }
            curl_close( $ch );
            return $result;
        }

        $response = array();
        $response["title"] = "title";
        $response["message"] = "Notification message.";
        $data = array( 'response' =>  json_encode($response));
        $result = sendGoogleCloudMessage($data, 1);
            
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Comment";
        $logs->option_name = "Comment";
        $logs->device_id = $request->device_id;
        $logs->save();
        return response([ 'comment'=> $comment,'result'=>$result,'success' => true]);
    }
    
    // add grocery category
    public function addGroceryCategory(Request $request)
    {
        
        //$valueUp    = strtoupper($request->grocery_category_name);
        $valueLower = strtolower($request->grocery_category_name);
        
       $GroceryCategory =  GroceryCategory::whereRaw('LOWER(grocery_category_name) like "%'.$valueLower.'%"')->count();
       
        if($GroceryCategory == 0){
            $GroceryCategory = GroceryCategory::create($request->all());
             return response([ 'GroceryCategory'=> $GroceryCategory,'success' => true]);
        }
        else{
            
            return response([ 'message'=>'This Grocerry Category Already Exists','success' => false]);
        }
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Grocery";
        $logs->option_name = "Grocery";
        $logs->device_id = $request->device_id;
        $logs->save();
       
    }
    
    // get all grocery categories
    public function getAllGroceryCategories(Request $request)
    {
        $getAllGroceryCategories = GroceryCategory::Where('status',1)->get();
        
        return response([ 'getAllGroceryCategories'=> $getAllGroceryCategories,'success' => true]);
    }
    
    // add grocery item
    public function addGroceryItem(Request $request)
    {
        // $todayDate = Carbon::now()->format('Y-m-d');
        // $todaytime = Carbon::now()->format('H:i:m');
        $addGroceryItem = new GroceryItem;
        $addGroceryItem->grocery_category_id = $request->grocery_category_id;
        $addGroceryItem->user_id = $request->user_id;
        $addGroceryItem->grocery_list_id = $request->grocery_list_id;
        //$addGroceryItem->grocery_category_name = $request->grocery_category_name;
        $addGroceryItem->status = 1;
        $addGroceryItem->item_grocery_name = $request->item_grocery_name;
        $addGroceryItem->item_grocery_description = $request->item_grocery_description;
        $addGroceryItem->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Grocery Item";
        $logs->option_name = "Grocery Item";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'GroceryItem'=> $addGroceryItem,'success' => true]);
    }
    
    // add grocery list
    public function addGroceryList(Request $request)
    {
        $todayDate = Carbon::now()->format('Y-m-d');
        $todaytime = Carbon::now()->format('H:i:m');
        
        $addGroceryList = new GroceryList;
        $addGroceryList->grocery_list_name = $request->grocery_list_name;
        $addGroceryList->grocery_list_id = $request->grocery_list_id;
        $addGroceryList->user_id = $request->user_id;
        $addGroceryList->status = 1;
        $addGroceryList->date = $todayDate;
        $addGroceryList->time = $todaytime;
        $addGroceryList->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Grocery List";
        $logs->option_name = "Grocery List";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'GroceryList'=> $addGroceryList,'success' => true]);
    }
    
     
    // update grocery list
    public function updateGroceryList(Request $request)
    {
        
        $todayDate = Carbon::now()->format('Y-m-d');
        $todaytime = Carbon::now()->format('H:i:m');
        // $addGroceryList = new GroceryList;
        // $addGroceryList->grocery_list_name = $request->grocery_list_name;
        // $addGroceryList->user_id = $request->user_id;
        // $addGroceryList->status = 1;
        // $addGroceryList->date = $todayDate;
        // $addGroceryList->time = $todaytime;
        // $addGroceryList->save();
        $updateGroceryList = GroceryList::where('grocery_list_id','=',$request->grocery_list_id)
                                ->update([
                                    'grocery_list_name'=>$request->grocery_list_name,
                                    'date'=>$todayDate,
                                    'time'=>$todaytime
                                    ]);
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Grocery List";
        $logs->option_name = "Grocery List";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'updateGroceryList'=> $updateGroceryList,'success' => true]);
    }
    
    // delete grocery list
    public function deleteGroceryList(Request $request)
    {
        
        $deleteGroceryList = GroceryList::Where('grocery_list_id',$request->grocery_list_id)
                            ->Where('user_id',$request->user_id)->update([
                             'status' => 2
                            ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Grocery List";
        $logs->option_name = "Grocery List";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteGroceryList'=> $deleteGroceryList,'success' => true]);
    }
    
    // delete grocery item
    public function deleteGroceryItem(Request $request)
    {
        
        $deleteGroceryList = GroceryItem::Where('grocery_item_id',$request->grocery_item_id)
                            ->Where('user_id',$request->user_id)->update([
                             'status' => 2
                            ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Grocery Item";
        $logs->option_name = "Grocery Item";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteGroceryList'=> $deleteGroceryList,'success' => true]);
    }
    
    // delete grocery item
    public function deleteHabit(Request $request)
    {
        
        $deleteHabit = Habit::Where('habit_id',$request->habit_id)
                            ->update([
                             'status' => 2
                            ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Habit Item";
        $logs->option_name = "Habit";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteHabit'=> $deleteHabit,'success' => true]);
    }
    
    // update grocery item
    public function updateGroceryItem(Request $request)
    {
        $updateGroceryItem = GroceryItem::where('status','=',1)->Where('grocery_item_id',$request->grocery_item_id)->update($request->all());
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Grocery Item";
        $logs->option_name = "Grocery Item";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'updateGroceryItem'=> $updateGroceryItem,'success' => true]);
    }
    
    // get all grocery lists
    public function getAllGroceryLists(Request $request)
    {
        $ViewGroceryList = GroceryList::where('user_id',$request->user_id)
                                        ->Where('status','=',1)
                                        ->orderBy('date','DESC')
                                        ->get();
                            
        
        return response([ 'ViewGroceryList'=> $ViewGroceryList,'success' => true]);
    }
    
    // get all grocery items
    public function getAllGroceryItems(Request $request)
    {
        /*$ViewGroceryItem = GroceryItem::where('grocery_list_id',$request->grocery_list_id)
                                        ->Where('status','=',1)
                                        //->orderBy('date','DESC')
                                        ->get();*/
                            
        $ViewGroceryItem = DB::table('grocery_items')
                            ->join('grocery_categories', 'grocery_categories.grocery_category_id', '=', 'grocery_items.grocery_category_id')
                            ->join('grocery_lists', 'grocery_lists.grocery_list_id', '=', 'grocery_items.grocery_list_id')
                            ->where('grocery_items.grocery_list_id',$request->grocery_list_id)
                            ->where('grocery_items.status', '=', 1)
                            ->get();
        
        return response([ 'ViewGroceryItem'=> $ViewGroceryItem,'success' => true]);
    }
    
    // get habit and details
    public function getHabitAndHabitDetails(Request $request)
    {
        // $ViewGroceryItem = GroceryItem::where('grocery_list_id',$request->grocery_list_id)
        //                                 ->Where('status','=',1)
        //                                 //->orderBy('date','DESC')
        //                                 ->get();
                            
        $getHabitAndHabitDetails = DB::table('habits')
            ->join('habit_details', 'habits.habit_id', '=', 'habit_details.habit_id')
            //->join('grocery_lists', 'grocery_lists.grocery_list_id', '=', 'grocery_items.grocery_list_id')
            ->where('habits.user_id',$request->user_id)
            ->where('habits.status', '=', 1)
            ->get();
        
        return response([ 'getHabitAndHabitDetails'=> $getHabitAndHabitDetails,'success' => true]);
    }
    
    // view Comment
    public function viewComments(Request $request)
    {
        $comments = Comment::where('status','=',1)->Where('task_id',$request->task_id)->get();
        
        return response([ 'comments'=> $comments,'success' => true]);
    }
    
    // update comment
    public function updateComment(Request $request)
    {
        $updateComment = Comment::where('status','=',1)->Where('comment_id',$request->comment_id)->update($request->all());
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Comment";
        $logs->option_name = "Comment";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'updateComment'=> $updateComment,'success' => true]);
    }
    
    // delete task
    public function deleteTask(Request $request)
    {
        
        $deleteTask = Task::Where('task_id',$request->task_id)->update(
                            [
                             'status' => 2
                            ]
            );
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Task";
        $logs->option_name = "Task";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteTask'=> $deleteTask,'success' => true]);
    }
    
    // delete comment 
    public function deleteComment(Request $request)
    {
       
        $deleteComment = Comment::Where('comment_id',$request->comment_id)->update([
                             'status' => 2
                            ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Comment";
        $logs->option_name = "Comment";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteComment'=> $deleteComment,'success' => true]);
    }
    
    // add sub task
    public function addSubTask(Request $request)
    {
        $subtask = new SubTask();
        $subtask->task_id = $request->task_id;
        $subtask->sub_task = $request->sub_task;
        $subtask->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Sub Task";
        $logs->option_name = "Sub Task";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'subtask'=> $subtask,'success' => true]);
        
    }

    // get all tasks
    public function getAllTasks(Request $request)
    {
        
        $todaytime = Carbon::now()->format('H:i:m');
        //$time  = date("g:i A", strtotime($todaytime));
        //return $time;
        //$expire = date("H:i", strtotime('+1 hour'));
        //return $expire;
        //$tasks = Task::find(161);
        //return unserialize($tasks->repeat_day_name);
        $project_id = $request->project_id;
        // $tasks = Task::where('user_id', '=', $request->user_id)
        //                 ->WhereDate('date', '>=', date('Y-n-d'))
        //                 ->orderBy('date', 'DESC')
        //                 //->Where('time', '>', $todaytime)
        //                 ->where('status',1)
        //                 ->get();
        if (is_null($project_id) || is_null($request->section))
            {
                $tasks = Task::where('user_id', '=', $request->user_id)
                        ->WhereDate('date', '>=', date('Y-n-d'))
                        ->orderBy('date', 'DESC')
                        ->whereNull('project_id')
                        ->whereNull('section_id')
                        ->where('status',1)
                        ->get();
                
            }
            if (!(is_null($project_id)) || !(is_null($request->section_id)))
            {
                $tasks = Task::where('user_id', '=', $request->user_id)
                        ->WhereDate('date', '>=', date('Y-n-d'))
                        ->orderBy('date', 'DESC')
                        ->where('project_id',$project_id)
                        ->where('section_id',$request->section_id)
                        ->where('status',1)
                        ->get();
                
            }    
        //return $todaytime;
        return response([ 'tasks'=> $tasks,'success' => true]);
    }
    
    // get sub task
    public function getSubTasks(Request $request)
    {
        
        $getSubTasks = SubTask::where('task_id', '=', $request->task_id)->get();
        
        return response([ 'SubTasks'=> $getSubTasks,'success' => true]);
    }
    
    // get today task
     public function getTodayTask(Request $request)
    {
        $todayDate = Carbon::now()->format('Y-n-d');
        //return $todayDate;
        $user_id = $request->user_id;
        
         $todaytime = Carbon::now()->format('H:i:m');
        //return $todaytime;$to
        $todayTask = Task::where('status','=',1)->where('user_id','=',$user_id)->where('date','=', $todayDate)->get();
        return response()->json(['todayTask' => $todayTask]);
    }
    
    // filter task
    public function filterTasks(Request $request)
    {
            
        $date = $request->date;
            
        $month = $request->month;
        $user_id = $request->user_id;
        $priority = $request->priority;
       
        if(($priority && $date)){
           
            $date = Carbon::createFromFormat('d-n-Y', $date)
                            ->format('Y-m-d');
            $filtertask = Task::select("*")
                           ->where('user_id','=',$user_id)
                           ->where('status','=',1)
                           ->where('date','=', $date)
                           ->WhereIn('priority', $priority)
                            ->get();
        }
        if($priority){
           
            $filtertask = Task::select("*")
                           ->where('user_id','=',$user_id)
                           ->where('status','=',1)
                           ->WhereIn('priority', $priority)
                            ->get();
        }
        if($date){
           
            $date = Carbon::createFromFormat('d-n-Y', $date)
                            ->format('Y-m-d');
            $filtertask = Task::select("*")
                           ->where('user_id','=',$user_id)
                           ->where('status','=',1)
                           ->where('date','=', $date)
                            ->get();
        }
        if($month){
             $filtertask = Task::select("*")
                           ->where('user_id','=',$user_id)
                           ->where('status','=',1)
                           ->where('month','=', $month)
                           ->get();
        }
        
             
     return response()->json(['filtertask' => $filtertask]);
    }
    
    // single task
    public function getSingleTask(Request $request, $id)
    {
            $task =  Task::where('status','=',1)->where('task_id','=',$id)->first();
            return response()->json(['task' => $task]);
    }
    
    // update task 
    public function updateTask(Request $request)
    {
        $timeZone = $request->timezone;
        date_default_timezone_set($timeZone);
       
        $time = $request->time;
        $newtime =  date("G:i:m", strtotime($time));
        
        $start_tim = $request->start_time;
        $start_time =  date("G:i:m", strtotime($start_tim));
        
        $date = $request->date;
        $newDate = Carbon::createFromFormat('d-n-Y', $date)
                    ->format('Y-m-d');
        $month = explode('-',$newDate);
                    
        $start_date = Carbon::createFromFormat('d-n-Y', $date)
                    ->format('Y-m-d');            
        
        if($request->repeated == "Daily")
        {
            
            $task =  Task::where('status','=',1)->where('task_id','=',$request->task_id)->update([
                    'tags' =>$request->tags,
                    'title'=>$request->title,
                    'month'=>$month[1],
                    'reminder'=>$request->reminder,
                    'description'=>$request->description,
                    'repeat_description'=>$request->repeat_description,
                    'start_date'=>$start_date,
                    'start_time'=>$start_time,
                    'repeat_days'=>$request->repeat_days,
                    'repeat_months'=>$request->repeat_months,
                    'date'=>$newDate,
                    'time'=>$newtime,
                    'repeated'=>$request->repeated,
                    'priority'=>$request->priority
                
                ]);
            
        }else if($request->repeated == "Weakly")
        {
            $task->reminder = $request->reminder;
            $repeat_on_day = $request->repeat_day_name;
            
            $repeat_days = implode(",",$repeat_on_day);
            $task =  Task::where('status','=',1)->where('task_id','=',$request->task_id)->update([
                    'tags' =>$request->tags,
                    'title'=>$request->title,
                    'month'=>$month[1],
                    'repeated'=>$request->repeated,
                    'reminder'=>$request->reminder,
                    'description'=>$request->description,
                    'repeat_description'=>$request->repeat_description,
                    'start_date'=>$start_date,
                    'start_time'=>$start_time,
                    'repeat_day_name'=>$repeat_days,
                    'repeat_weaks'=>$request->repeat_weaks,
                    'repeat_months'=>$request->repeat_months,
                    'date'=>$newDate,
                    'time'=>$newtime,
                    'priority'=>$request->priority
                
                ]);
            
        }else if($request->repeated == "Monthly")
        {
            $task =  Task::where('status','=',1)->where('task_id','=',$request->task_id)->update([
                    'tags' =>$request->tags,
                    'title'=>$request->title,
                    'month'=>$month[1],
                    'repeated'=>$request->repeated,
                    'reminder'=>$request->reminder,
                    'description'=>$request->description,
                    'repeat_description'=>$request->repeat_description,
                    'start_date'=>$start_date,
                    'start_time'=>$start_time,
                    'repeat_by'=>$request->repeat_by,
                    'repeat_months'=>$request->repeat_months,
                    'repeat_how_many_months'=>$request->repeat_how_many_months,
                    'date'=>$newDate,
                    'time'=>$newtime,
                    'priority'=>$request->priority
                
                ]);
            
        }else if($request->repeated == "Yearly")
        {
            $task =  Task::where('status','=',1)->where('task_id','=',$request->task_id)->update([
                    'tags' =>$request->tags,
                    'title'=>$request->title,
                    'month'=>$month[1],
                    'repeated'=>$request->repeated,
                    'reminder'=>$request->reminder,
                    'description'=>$request->description,
                    'repeat_description'=>$request->repeat_description,
                    'start_date'=>$start_date,
                    'start_time'=>$start_time,
                    'repeat_months'=>$request->repeat_months,
                    'repeat_how_many_year'=>$request->repeat_how_many_year,
                    'date'=>$newDate,
                    'time'=>$newtime,
                    'priority'=>$request->priority
                
                ]);
            
         }
         
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Task";
        $logs->option_name = "Task";
        $logs->device_id = $request->device_id;
        $logs->save();
            
            
            return response()->json(['success' => true]);
    }
    
    // completed Task
    public function completeTask(Request $request)
    {
            
            $completeTask =  Task::where('task_id','=',$request->task_id)
                                ->where('user_id','=',$request->user_id)
                                ->update(['status' => 2]);
                 $task_id = $request->task_id;
        
    //     $levels = DB::table('tasks')->where('user_id', $request->user_id)->count();
        
    //   if($levels == 1){
    //         $data['user_id'] = $request->user_id;
    //         $data['task_id'] = $task_id;
    //         $data['levels'] = "Begginer";
    //         $data['change_level_on'] = "Begginer";
    //         $level_history_id = LevelHistory::create($data)->level_history_id;
    //   }
    //     else if($levels == 2)
    //     {
    //         //$levels = DB::table('level_histories')->where('user_id', $request->user_id)->delete();
            
    //         $data['user_id'] = $request->user_id;
    //         $data['task_id'] = $task_id;
    //         $data['levels'] = "Intermediate";
    //         $data['change_level_on'] = "Intermediate";
    //         LevelHistory::where('user_id',$request->user_id)->update($data);
    //     }else if($levels >= 3){
            
    //         //$levels = DB::table('level_histories')->where('user_id', $request->user_id)->delete();
            
    //         $data['user_id'] = $request->user_id;
    //         $data['task_id'] = $task_id;
    //         $data['levels'] = "Experience";
    //         $data['change_level_on'] = "Experience";
    //         LevelHistory::where('user_id',$request->user_id)->update($data);
    //     }                    
            return response()->json(['completeTask' =>$completeTask,'success' => true]);
    }
    
    
    // add Habbit
    
    public function addHabbit(Request $request)
    {
        
        $habitId = $request->habit_id;
        
        $habitName = Habit::find($habitId);
        
        if($habitId > 0)
        {
        
        $habitDetails = new HabitDetail();
        $habitDetails->habit_id = $habitId;
        $habitDetails->types = $request->types;
       
        if($request->goals == 1){
            $habitDetails->goals = $request->goals;
            $habitDetails->achieve_it_all = $request->achieve_it_all;
        }else{
            $habitDetails->goals = $request->goals;
            $habitDetails->daily = $request->daily;
            $habitDetails->count_type = $request->count_type;
            $habitDetails->when_checking = $request->when_checking;
        }
        
        $habitDetails->select_days = $request->select_days;
        $reminders = $request->reminder;
            
        $reminder = implode(",",$reminders);
        $habitDetails->reminder = $reminder;
        $habitDetails->save();
        
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Habbit";
        $logs->option_name = "Habit";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        }else{
            
            $habit = new Habit();
            $habit->user_id = $request->user_id;
            $habit->habit_name = $request->habit_name;
            $habit->habit_icons = $request->habit_icons;
            $habit->habit_detail = $request->habit_detail;
            $habit->save();
            
            $habitId = $habit->habit_id;
            
            $habitDetails = new HabitDetail();
            $habitDetails->habit_id = $habitId;
            $habitDetails->types = $request->types;
       
        if($request->goals == 1){
            $habitDetails->goals = $request->goals;
            $habitDetails->achieve_it_all = $request->achieve_it_all;
        }else{
            $habitDetails->goals = $request->goals;
            $habitDetails->daily = $request->daily;
            $habitDetails->count_type = $request->count_type;
            $habitDetails->when_checking = $request->when_checking;
        }
        
        $habitDetails->select_days = $request->select_days;
        $reminders = $request->reminder;
            
        $reminder = implode(",",$reminders);
        $habitDetails->reminder = $reminder;
        $habitDetails->save();
        
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Add Habbit";
        $logs->option_name = "Habit";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        }
        
        return response([ 'habitName'=> $habitName['habit_name'],'habitDetails' =>$habitDetails,'success' => true]);
    }
    public function viewHabit(Request $request)
    {
        $habit =  Habit::where('status','=',1)->get();
            return response()->json(['habit' => $habit]);
    }
    
    public function addEvent(Request $request)
    {
        $date = $request->event_date;
        $eventDate = Carbon::createFromFormat('d-n-Y', $date)
                    ->format('Y-m-d');
                    
        $event = new Event();
        $event->user_id = $request->user_id;
        $event->event_title = $request->event_title;
        $event->event_date = $eventDate;
        $start_event_time = $request->event_start_time;
        $end_event_time = $request->event_end_time;
        $event_start_time =  date("G:i:m", strtotime($start_event_time));
        $event_end_time =  date("G:i:m", strtotime($end_event_time));
        
        if(is_null($request->event_start_time) || is_null($request->event_end_time))
        {
            $event->event_repeat_desc = $request->event_repeat_desc;
            $event->event_alarm_desc = $request->event_alarm_desc;
            $event->all_day_event = $request->all_day_event;
            $event->save();
        }else
        {
            $event->event_repeat_desc = $request->event_repeat_desc;
            $event->event_alarm_desc = $request->event_alarm_desc;
            $event->event_start_time = $event_start_time;
            $event->event_end_time = $event_end_time;
            $event->save();
        }
        
        return response([ 'event'=> $event,'success' => true]);
    }    
    
    public function deleteEvent(Request $request)
    {
       
        $deleteEvent = Event::Where('event_id',$request->event_id)->update([
                             'status' => 2
                            ]);
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Delete Event";
        $logs->option_name = "Event";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'deleteEvent'=> $deleteEvent,'success' => true]);
    }
    
    public function getEvent(Request $request)
    {
        
        $user_id = $request->user_id;
        $getEvents = Event::where('user_id','=',$user_id)->where('status','=',1)->get();
        return response()->json(['getEvents' => $getEvents]);
    }
    public function updateEvent(Request $request)
    {
        $updateEvent = Event::Where('event_id',$request->event_id)->update($request->all());
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Grocery Item";
        $logs->option_name = "Grocery Item";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        return response([ 'updateEvent'=> $updateEvent,'success' => true]);
    }
    public function updateHabbit(Request $request)
    {
            Habit::Where('habit_id',$request->habit_id)->delete();
            HabitDetail::Where('habit_id',$request->habit_id)->delete();
        
            $habit = new Habit();
            $habit->user_id = $request->user_id;
            $habit->habit_name = $request->habit_name;
            $habit->habit_detail = $request->habit_detail;
            $habit->save();
            
            $habitId = $habit->habit_id;
            
            $habitDetails = new HabitDetail();
            $habitDetails->habit_id = $habitId;
            $habitDetails->types = $request->types;
       
        if($request->goals == 1){
            $habitDetails->goals = $request->goals;
            $habitDetails->achieve_it_all = $request->achieve_it_all;
        }else{
            $habitDetails->goals = $request->goals;
            $habitDetails->daily = $request->daily;
            $habitDetails->count_type = $request->count_type;
            $habitDetails->when_checking = $request->when_checking;
        }
        
        $habitDetails->select_days = $request->select_days;
        $reminders = $request->reminder;
            
        $reminder = implode(",",$reminders);
        $habitDetails->reminder = $reminder;
        $habitDetails->save();
        
        $logs = new LogsDetails();
        $logs->user_id = $request->user_id;
        $logs->option_type = "Update Habbit";
        $logs->option_name = "Habit";
        $logs->device_id = $request->device_id;
        $logs->save();
        
        
        return response([ 'updateHabbit'=> $habit,'habitDetails' =>$habitDetails,'success' => true]);
    }
    
    public function getCompletedTask(Request $request)
    {
        
        $user_id = $request->user_id;
        $getCompletedTask = Task::where('status','=',2)->where('user_id','=',$user_id)->get();
        return response()->json(['getCompletedTask' => $getCompletedTask]);
    }
}
