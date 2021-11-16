<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GroceryList extends Model
{
    protected $fillable = ['grocery_list_id','grocery_list_name','user_id','date','time','status','created_at','updated_at'];
    
    protected $primaryKey = 'grocery_list_id';
}
