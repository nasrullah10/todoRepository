<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Achievement extends Model
{
    protected $fillable = ['achievement_id','name','description','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'achievement_id';
}
