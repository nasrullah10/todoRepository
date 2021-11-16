<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Habit extends Model
{
    protected $fillable = ['habit_id','habit_icon','user_id','habit_name','habit_detail','status','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'habit_id';
}
