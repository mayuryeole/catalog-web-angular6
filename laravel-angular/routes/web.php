<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::post('ws-login', ['uses' => 'Controller@wsGetLogin']);
Route::get('ws-get-customer-list', 'Controller@wsGetCustomerList');
Route::any('ws-get-customer-data/{user_id}', 'Controller@wsGetCustomerData');
Route::any('ws-get-sales-customer-list/{user_id}', 'Controller@wsGetSalesCustomer');
Route::any('ws-update-customer-data/{user_id}', 'Controller@wsUpdateSalesCustomer');
Route::any('ws-get-style/{user_id}', 'Controller@wsgetStyle');




