<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $fillable = ['task_id','user_id','section_id','project_id','tags','title','description','note','voice','reminder','date','time','task_expiration_date','priority','status','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'task_id';
}
