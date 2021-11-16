<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Auth;
use App\User;
use App\Task;
class FrontendController extends Controller
{
    public function Index()
    {
        $user = Auth::User();
        //return "test";
        Session::put('user', $user);
        //$user_id = Auth::User()->user_id;
        $tasks = Task::where('user_id', '=', 77)
                        //->WhereDate('date', '>=', date('Y-n-d'))
                        ->orderBy('date', 'DESC')
                        //->where('project_id',$taskId)
                        ->where('status',1)
                        ->get();
        return view('Frontend.index',compact('tasks'));

    }
    public function addTaskForm(){
        return view('Frontend.addTaskForm');
    }
    public function addTask(Request $request)
    {
        dd($request->all());
    }
}
