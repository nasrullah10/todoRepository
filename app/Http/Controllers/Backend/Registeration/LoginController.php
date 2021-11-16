<?php

namespace App\Http\Controllers\Backend\Registeration;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function LoginForm()
    {
        return view('Backend.Registeration.login');

    }
}
