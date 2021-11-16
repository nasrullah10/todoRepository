<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GroceryItem extends Model
{
    protected $fillable = ['grocery_item_id','grocery_category_name','grocery_list_id','item_grocery_name','item_grocery_description','user_id','status','created_at','updated_at'];
    
    protected $primaryKey = 'grocery_item_id';
}
