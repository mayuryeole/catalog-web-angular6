<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class UserCatalog extends Model 
{
    
    protected $fillable = ['user_id','user_type','catalog_id'];
            
    
}