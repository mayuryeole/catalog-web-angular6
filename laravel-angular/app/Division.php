<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Division extends Model 
{
    
    protected $fillable = ['division_id', 'name', 'display_name_override', 'is_main_division', 'address_1', 'address_2', 'city', 'state', 'postal_code', 'country', 'phone', 'fax', 'email', 'website', 'gl_sales', 'gl_sales_discount', 'gl_freight', 'gl_tax', 'gl_returns', 'gl_damages', 'gl_inventory', 'gl_cogs', 'gl_customer_credits', 'gl_misc_charges'];
    
}