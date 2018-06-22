<?php
namespace App;
use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

use App\PiplModules\roles\Traits\HasRoleAndPermission;
use App\PiplModules\roles\Contracts\HasRoleAndPermission as HasRoleAndPermissionContract;

class User extends Model
{
    use Authenticatable,  CanResetPassword;
	
	   /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['email', 'password'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = ['password', 'remember_token'];

    public function userInformation()
    {
          return $this->hasOne('App\UserInformation');
    }
    public function userAddress()
    {
          return $this->hasMany('App\UserAddress');
    }	
    
    /**
     * Set the password to be hashed when saved
     */
    public function setPasswordAttribute($password)
    {
            $this->attributes['password'] = \Hash::make($password);
    }
    public function getRememberToken()
    {   
        return $this->remember_token;
    }

    public function setRememberToken($value)
    {
         $this->remember_token = $value;
    }   

    public function getRememberTokenName()
    {
        return 'remember_token';
    }
    
    public function salesPeople()
    {
          return $this->hasOne('App\PiplModules\salespeople\Models\Salespeople','user_id2','id');
    }
    
    public function getCustomer()
    {
          return $this->hasOne('App\Customer','user_id2','id');
    }
    
}
