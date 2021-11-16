<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = ['event_id','user_id','event_time','event_start_time','event_alarm_desc','event_repeat_desc','event_end_time','event_title','all_day_event','status','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'event_id';
}
