<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



 Route::get('/','Frontend\FrontendController@Index');
//Route::get('/','Backend\Dashboard\DashboardController@Dashboard');
//Route::get('/','Backend\Registeration\RegisterationController@Registeration');
Route::get('/registrationForm','Backend\Registeration\RegisterationController@Registeration');
Route::get('/loginForm','Backend\Registeration\LoginController@LoginForm');
Route::get('/user/verify/{token}', 'Auth\RegisterController@verifyUser');

Route::get('/admin', 'Backend\Dashboard\DashboardController@Dashboard');
Route::get('/beginnerLevel', 'Backend\Dashboard\DashboardController@beginnerLevel');
Route::get('/intermediateLevel', 'Backend\Dashboard\DashboardController@intermediateLevel');
Route::get('/expertLevel', 'Backend\Dashboard\DashboardController@expertLevel');
Route::get('/viewAllUsers', 'Backend\Dashboard\DashboardController@ViewAllUsers');
Route::post('/register','Auth\RegisterController@register');
Route::post('/login','Auth\LoginController@login');

// frontend code

Route::post('/addTask', 'Frontend\FrontendController@addTask');
Route::get('/addTaskForm', 'Frontend\FrontendController@addTaskForm');
Auth::routes();
//Auth::routes(['verify' => true]);
Route::get('/home', 'HomeController@index')->name('home');
