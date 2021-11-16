<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $fillable = ['section_id','project_id','section_name','status','created_at','updated_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'section_id';
}
