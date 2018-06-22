<?php
namespace App;

use Illuminate\Database\Eloquent\Model as Eloquent ;

class CatalogTranslation extends Eloquent 
{
    
    protected $fillable = ['catalog_id', 'product_id'];
    
    protected $primaryKey = 'catalog_translation_id';
    
//   function product()
//   {
//   	 return $this->hasMany('App\PiplModules\style\Models\Style','product_id');
//   }
    
}