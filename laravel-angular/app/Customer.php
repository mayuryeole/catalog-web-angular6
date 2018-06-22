<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model 
{
    
    protected $fillable = ['customer_id', 'account_number', 'customer_name', 'active', 'address_1', 'address_2', 'city', 'state', 'postal_code', 'country', 'phone', 'email', 'first_name', 'last_name', 'terms_id', 'credit_limit', 'status', 'category', 'division_id', 'ar_acct', 'website', 'notes', 'shipping_info', 'pct_discount', 'is_active', 'buyer_filter', 'edi_department', 'anet_id', 'currency_id', 'price_group', 'xero_id', 'xero_synced', 'shopify_id', 'quickbooks_id', 'shipping_terms_id', 'ship_via', 'quickbooks_sync_status', 'quickbooks_sync_message', 'quickbooks_sync_datetime', 'custom_order_print_id', 'custom_invoice_print_id', 'joor_synced', 'priority', 'joor_customer_code', 'last_modified_time', 'phone_number','salespeople_id','user_id2'];
    
//    public function getLocation(){
//        
//        return $this->hasMany('App\PiplModules\location\Models\Location','customer_id','customer_id');
//        
//    }
//    
//    public function getOrders(){
//        
//        return $this->hasMany('App\PiplModules\order\Models\Order','customer_id','customer_id');
//        
//    }
    
}