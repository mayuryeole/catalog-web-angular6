<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\UserInformation;
use Illuminate\Support\Facades\Hash;
use App\Customer;
use App\Division;
use App\Salespeople;
use App\Catalog;
use App\CatalogTranslation;
use App\Style;
use App\StyleImage;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
     public function wsGetLogin(Request $request) {
        $data = json_decode(file_get_contents("php://input"), true);
        
        if (isset($data['email']) && $data['email'] != '' && isset($data['password']) && $data['password'] != '') {
            $user_available = User::where('email', $data['email'])->first();
           
            if (count($user_available) < 1) {
                $array_response = array('status' => 103, 'message' => 'User with this email not available!!!');
                return response($array_response)->header("Content-Type", "application/json");
                //return json_encode($array_response);
            } else {
                // $user_available=User::where('email',$data['email'])->where('password',bcrypt($data['password']))->first();
                if (Hash::check($data['password'], $user_available->password)) {
                //if(isset($user_available) && count($user_available)>0)
                    $user_info = UserInformation::where('user_id', $user_available->id)->first();
                    //$user_data=array('first_name'=>$user_info->first_name,"last_name"=>$user_info->last_name);
                    $array_response = array('status' => 101, 'message' => 'Login Success!!!', 'data' => $user_info);
                    return response($array_response)->header("Content-Type", "application/json");
//                    return json_encode($array_response);
                } else {
                    $array_response = array('status' => 102, 'message' => 'Username or password incorrect!!!');
                    return response($array_response)->header("Content-Type", "application/json");
//                    return json_encode($array_response);
                }
            }
        } else {
            $array_response = array('status' => 102, 'message' => 'Some parameters are missing!!!');
            //return json_encode($array_response);
            return response($array_response)->header("Content-Type", "application/json");
        }
    }
    
    public function wsGetCustomerList(){
        $customer = UserInformation::where('user_type',"3")->get();
        return json_encode($customer);
    }
    
    public function wsGetSalesCustomer($user_id){
        $sales_people = Salespeople::where('user_id2',$user_id)->first();
        $customer = Customer::where('salespeople_id',$sales_people->salespeople_id)->get();
        return json_encode($customer);
    }
    public function wsGetCustomerData(Request $request,$user_id){
        $customer = Customer::where('customer_id',$user_id)->first();
//        dd($customer);
        $division = Division::all();
//        dd($user_id);
        $customer_data = [];
//        $customer_data["data"] = UserInformation::where('user_id',$user_id)->first();
        $customer_data["division"] = $division;
        $customer_data["details"] = $customer;
         return response($customer_data)->header("Content-Type", "application/json");
//        return json_encode($customer);
    }
    
    public function wsUpdateSalesCustomer(Request $request,$user_id){
        dd($user_id);
        $customer = Customer::where('customer_id',$user_id)->first();
//        dd($customer);
        $division = Division::all();
//        dd($user_id);
        $customer_data = [];
//        $customer_data["data"] = UserInformation::where('user_id',$user_id)->first();
        $customer_data["division"] = $division;
        $customer_data["details"] = $customer;
         return response($customer_data)->header("Content-Type", "application/json");
//        return json_encode($customer);
    }
    
    public function listCatalog(){
        $catalogs = Catalog::all();
    }
    
    public function wsgetStyle($user_id) {
//        $categories = Style::select('category')->distinct()->get();
//        $seasons = Style::select('season')->distinct()->get();
        $user = UserInformation::where('user_id',$user_id)->first();
        $images= [];
        if($user->user_type == 3){
            
        $user_catalog = UserCatalog::where('user_id',$user_id->getCustomer->customer_id)->where('user_type',"3")->get();
        
        if(count($user_catalog) > 0){
            
            foreach($user_catalog as $userCatalog){
                
                $catalog_products = CatalogTranslation::where('catalog_id',$userCatalog->catalog_id)->get();
                $temp = array();
                foreach($catalog_products as $product_id){
                    
                    $temp[] = $product_id->product_id;
                    
                }
                
                $styles = Style::with('images')->whereIn('product_id',$temp)->get();
                foreach($styles as $s){
                   $images[]= StyleImage::whereIn('product_id',$s->product_id)->first();
                }
//                $images= StyleImage::whereIn('product_id',$temp)->first();
                
            }
            
        }else{
            
            $styles = Style::with('images')->get();
            foreach($temp as $s){
                   $images[]= StyleImage::whereIn('product_id',$s->product_id)->first();
                }
        }
            
        }else{
            
            $styles = Style::with('images')->get();
            foreach($styles as $key=>$s){
                   $images[]= StyleImage::whereIn('product_id',$s->product_id)->first();
                }
        }
        $styles_data["styles"] = $styles;
        $styles_data["images"] = $images;
                 return response($styles_data)->header("Content-Type", "application/json");
    
    }
    
}
