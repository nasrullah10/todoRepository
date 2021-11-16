<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogsDetails extends Model
{
    protected $fillable = ['log_id','user_id','device_id','option_name','option_type','status','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'log_id';
}
