<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
// Route::get('/registrationForm','Backend\Registeration\RegisterationController@Registeration');
// Route::post('/register','Auth\RegisterController@create');
// Route::get('/userList','Backend\Dashboard\UserController@userList');
// Route::get('/user/{id}','Backend\Dashboard\UserController@user');
// Auth::routes();
// Route::get('/home', 'HomeController@index')->name('home');

    Route::post('/register','API\AuthController@register');
    Route::post('/login','API\AuthController@login');
    Route::get('/logout','API\AuthController@logout');
    Route::post('/regenerateCode','API\AuthController@regenerateCode');

   // Route::post('/addTask','API\TaskController@addTask');
// Route::group(['middleware'=>"auth:api"],function(){
    
    // user
    Route::post('/forgetpassword','API\AuthController@forgetpassword');
    Route::post('/deleteUser/{id}','API\AuthController@deleteUser');
    Route::post('/reset-password', 'API\AuthController@resetpassword');
    Route::post('/editProfile', 'API\AuthController@editProfile');
    Route::post('change-password', 'Api\AuthController@change_password');
    // Add Projects
    Route::get('/getAllUsers','API\AuthController@getAllUsers');
    Route::post('/addProject','API\ProjectController@addProject');
    Route::post('/duplicateProject','API\ProjectController@duplicateProject');
    Route::post('/updateProject','API\ProjectController@updateProject');
    Route::get('/deleteProject','API\ProjectController@deleteProject');
    Route::get('/getAllProjects','API\ProjectController@getAllProjects');
    Route::get('/getSingleProject','API\ProjectController@getSingleProject');

    // sections  
    Route::post('/addSection','API\ProjectController@addSection');
    Route::post('/updateSection','API\ProjectController@updateSection');
    Route::get('/getSectionDetails','API\ProjectController@getSectionDetails');
    Route::get('/deleteSection','API\ProjectController@deleteSection');
    
    Route::post('/test','API\TaskController@test');
    // add task
    Route::post('/addTask','API\TaskController@addTask');
    Route::get('/getAllTasks','API\TaskController@getAllTasks');
    Route::get('/getTodayTask','API\TaskController@getTodayTask');
    Route::get('/getSingleTask/{id}','API\TaskController@getSingleTask');
    Route::post('/updateTask','API\TaskController@updateTask');
    Route::post('/completeTask','API\TaskController@completeTask');
    Route::get('/getCompletedTask','API\TaskController@getCompletedTask');
    Route::get('/overDueDateTask','API\TaskController@overDueDateTask');
    Route::get('/deleteTask','API\TaskController@deleteTask');
    Route::get('/filterTasks','API\TaskController@filterTasks');
    //add comments
    Route::post('/addComment','API\TaskController@addComment');
    Route::get('/viewComments','API\TaskController@viewComments');
    Route::post('/updateComment','API\TaskController@updateComment');
    Route::get('/deleteComment','API\TaskController@deleteComment');
    
    
    // add sub task
    Route::post('/addSubTask','API\TaskController@addSubTask');
    Route::get('/getSubTasks','API\TaskController@getSubTasks');
    
    // add Habbit
    
    Route::post('/addHabbit','API\TaskController@addHabbit');
    Route::post('/updateHabbit','API\TaskController@updateHabbit');
    Route::get('/viewHabit','API\TaskController@viewHabit');
    Route::get('/deleteHabit','API\TaskController@deleteHabit');
    // Add Event
    Route::post('/addEvent','API\TaskController@addEvent');
    Route::post('/updateEvent','API\TaskController@updateEvent');
    Route::get('/deleteEvent','API\TaskController@deleteEvent');
    Route::get('/getEvent','API\TaskController@getEvent');
    // Add Grocery List
    //Route::post('/addGrocery','API\TaskController@addGrocery');
    Route::post('/addGroceryCategory','API\TaskController@addGroceryCategory');
    Route::get('/getAllGroceryCategories','API\TaskController@getAllGroceryCategories');
    Route::post('/addGroceryList','API\TaskController@addGroceryList');
    Route::post('/updateGroceryList','API\TaskController@updateGroceryList');
    Route::post('/deleteGroceryList','API\TaskController@deleteGroceryList');
    Route::post('/addGroceryItem','API\TaskController@addGroceryItem');
    Route::post('/updateGroceryItem','API\TaskController@updateGroceryItem');
    Route::post('/deleteGroceryItem','API\TaskController@deleteGroceryItem');
    Route::get('/getAllGroceryItems','API\TaskController@getAllGroceryItems');
    Route::get('/getHabitAndHabitDetails','API\TaskController@getHabitAndHabitDetails');
    
    Route::get('/getAllGroceryLists','API\TaskController@getAllGroceryLists');
    
    
//});