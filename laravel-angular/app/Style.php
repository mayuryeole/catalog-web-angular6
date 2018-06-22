<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Style extends Model 
{
    
    protected $fillable = ['product_id', 'is_product', 'is_component', 'is_inventory_tracked', 'style_number', 'description', 'category', 'class', 'groups', 'size_range_id', 'cost', 'price', 'retail_price', 'margin', 'cost_labor', 'cost_materials', 'cost_fob', 'cost_base', 'cost_misc', 'cost_landed', 'duty_rate', 'cost_duty', 'cost_freight', 'cost_auto', 'origin', 'content', 'weight', 'box_size', 'tariff_code', 'mid_code', 'is_taxable', 'notes', 'production_notes', 'vendor_id', 'season', 'price_break_id', 'care_instructions', 'unit_of_measure', 'lead_time', 'buyer_filter', 'web_title', 'web_description', 'magento_config_product_id', 'magento_category_id', 'magento_attribute_set_id', 'magento_last_price', 'magento_sync', 'magento_sync_timestamp', 'balluun_sync', 'balluun_ext_id', 'joor_product_id', 'joor_sync', 'pct_royalty', 'amount_royalty', 'licensor', 'joor_web_description', 'pct_markup', 'joor_sync_colorway_swatches', 'skus_active', 'vendor_item_number', 'ecom_flag', 'rating'];
    
    
    public function images(){
        
        return $this->hasMany('App\StyleImage','product_id','product_id');
        
    }
    
//    public function productDetails(){
//        
//        return $this->hasMany('App\PiplModules\inventories\Models\Inventory','product_id','product_id');
//    }
    
    
}