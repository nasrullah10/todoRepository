<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HabitDetail extends Model
{
    protected $fillable = ['habit_details_id','habit_id','types','daily','count_type','when_checking','select_days','reminder','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'habit_details_id';
}
