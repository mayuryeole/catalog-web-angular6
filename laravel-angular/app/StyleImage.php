<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class StyleImage extends Model 
{
    
    protected $fillable = ['product_id','img'];
    
    protected $table = "style_images";
    
}