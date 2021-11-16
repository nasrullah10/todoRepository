<?php

namespace App\Http\Controllers\Backend\Registeration;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RegisterationController extends Controller
{
    public function Registeration(Request $request)
    {
        
        //print_r($request->all());
        return view('Backend.Registeration.registeration');

    }
}
