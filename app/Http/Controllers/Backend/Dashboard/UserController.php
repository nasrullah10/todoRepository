<?php

namespace App\Http\Controllers\Backend\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
class UserController extends Controller
{
    public function userList(Request $request)
    {
        $users  =    User::all();
        return $users;
    }
    public function user($id)
    {
        $users  =    User::find($id);
        return $users;
    }
}
