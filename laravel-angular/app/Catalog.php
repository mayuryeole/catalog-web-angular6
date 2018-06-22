<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Catalog extends Model 
{
    
    protected $fillable = ['name'];
    
  
    
//   function product()
//   {
//   	 return $this->hasMany('App\PiplModules\style\Models\Style','product');
//   }
   
}