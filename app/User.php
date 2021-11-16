<?php

namespace App;
use Illuminate\Foundation\Auth\User as Authenticatable;
//use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\MustVerifyEmail;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
class User extends Authenticatable 
{
//implements MustVerifyEmail    
    use HasApiTokens, Notifiable;
    protected $fillable = ['name','is_admin','verified','profile','phone_number','device_id','email','password','updated_at','created_at'];
    //protected $guarded = [`name`, `email`, `password`, `updated_at`, `created_at`];  
    protected $primaryKey = 'user_id';
    public function verifyUser()
    {
    return $this->hasOne('App\VerifyUser');
    }
    // public function userRole()
    // {
    //     return $this->belongsTo('App\userRole', 'role_id');
    // }
}
