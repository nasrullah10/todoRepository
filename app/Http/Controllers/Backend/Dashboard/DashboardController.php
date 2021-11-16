<?php

namespace App\Http\Controllers\Backend\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Auth;
use App\User;
class DashboardController extends Controller
{
    public function Dashboard()
    {
        $user = Auth::User();
        Session::put('user', $user);
        return view('Backend.Dashboard.Dashboard');

    }
    
    public function ViewAllUsers()
    {
        $users = User::get()->toArray();
        return view('Backend.Dashboard.ViewAllUsers',compact('users'));

    }
    public function beginnerLevel()
    {
        $BegginerLevelUsers = User::where('status', '=' ,1)->where('current_level', '=' ,1)->get()->toArray();
       
        return view('Backend.Dashboard.BegginerLevelUsers',compact('BegginerLevelUsers'));

    }
    public function intermediateLevel()
    {
        $intermediateLevel = User::where('status', '=' ,1)->where('current_level', '=' ,2)->get()->toArray();
        return view('Backend.Dashboard.IntermediateLevelUsers',compact('intermediateLevel'));

    }
    public function expertLevel()
    {
        $expertLevel = User::where('status', '=' ,1)->where('current_level', '=' ,3)->get()->toArray();
        return view('Backend.Dashboard.ExpertLevelUser',compact('expertLevel'));

    }
}
