<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GroceryCategory extends Model
{
    protected $fillable = ['grocery_category_id','grocery_category_name','user_id','grocery_list_id','status','created_at','updated_at'];
    
    protected $primaryKey = 'grocery_category_id';
}
