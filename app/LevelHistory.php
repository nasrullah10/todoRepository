<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LevelHistory extends Model
{
    protected $fillable = ['level_history_id','user_id','task_id','levels','change_level_on','status','time','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'level_history_id';
}
