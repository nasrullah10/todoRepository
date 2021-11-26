<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AchievementUser extends Model
{
    protected $fillable = ['achievement_user_id','achievement_id','user_id','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'achievement_user_id';
}
