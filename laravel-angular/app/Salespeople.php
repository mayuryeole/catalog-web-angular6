<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Salespeople extends Model 
{
    
    protected $fillable = ['salespeople_id', 'user_id', 'rate', 'name', 'phone', 'email', 'address_1', 'address_2', 'city', 'state', 'postal_code', 'country','customer_id','user_id2'];
    
    public function getCustomers(){
        
        return $this->hasMany('App\PiplModules\customer\Models\Customer','salespeople_id','salespeople_id');
    }
}