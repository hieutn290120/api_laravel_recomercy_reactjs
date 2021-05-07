<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('login', 'APIController@login');

Route::post('logout', 'APIController@logout');


Route::post('addproduct', 'APIProductController@add');
Route::post('createorupdateproduct', 'APIProductController@createofupdate');



//Product
Route::get('product','APIProductController_new@shownew');
Route::get('product/banner','APIProductController_new@show');
Route::get('product/discount','APIProductController_new@showdiscount');
Route::get('product/tivi','APIProductController_new@showtivi');
Route::get('product/remote','APIProductController_new@showremote');
Route::get('product/api/{id}','APIProductController_new@showproductbyid');
Route::get('product/moduleamthanh','APIProductController_new@showmoduleamthanh');
Route::get('product/modulemachnap','APIProductController_new@showmodulemachnap');
Route::get('product/modulecambien','APIProductController_new@showmodulecambien');
Route::get('product/modulenguon','APIProductController_new@showmodulenguon');
Route::get('product/tivisony','APIProductController_new@showtivisony');
Route::get('product/tivitcl','APIProductController_new@showtivitcl');
Route::get('product/tivilg','APIProductController_new@showtivilg');
Route::get('product/tivisamsung','APIProductController_new@showtivisamsung');
Route::get('product/remotesony','APIProductController_new@showremotesony');
Route::get('product/remotetcl','APIProductController_new@showremotetcl');
Route::get('product/remotelg','APIProductController_new@showremotelg');
Route::get('product/remotesamsung','APIProductController_new@showremotesamsung');
Route::get('product/amply','APIProductController_new@showamply');



Route::post('register','UserController@register');
Route::post('registerCustomer','UserController@registerCustomer');

Route::post('uploadfile','UserController@uploadfile');
Route::delete('remove/user/{id}','UserController@delete');


//Search Product

Route::post('searchbyname', 'APISearchController@SearchAll');


//Check Author
Route::group(['middleware' => 'auth.jwt'], function () {
    Route::post('roles','UserController@roles');
});


//Check Contacus
Route::group(['middleware' => 'auth.jwt'], function () {
    Route::post('contactus','APIContactUsController@createfeedback');
});



// Count_Rate
Route::get('product/rate/{id}','APICountRate@show');


Route::group(['middleware' => 'auth.jwt'], function () {

    Route::post('product/rate/vote','APICountRate@createorupdate');
    //AddtoCart
  
    Route::post('product/addtocart', 'APICartShoppingController@add');
    Route::post('product/updatequantity', 'APICartShoppingController@updateQuantity');
    Route::post('product/getdatacart', 'APICartShoppingController@showlistcart');
    Route::post('product/getdatacartanduser', 'APICartShoppingController@showlistcartanduser');
    Route::delete('product/deletecart/{id}', 'APICartShoppingController@removelistcartbyid');
    Route::post('product/getdatacart/discount', 'APICartShoppingController@showlistcartdiscount');
});


//SenMail

Route::group(['middleware' => 'auth.jwt'], function () {
    Route::post('sendmail','APISendMailController@sendMail');
});

Route::group(['middleware' => 'auth.jwt', 'prefix' => 'auth'], function () {
    Route::get('logout', 'APIController@logout');
    Route::get('users', 'UserController@index');
    Route::get('dashboard/cart', 'CartAPIController@showdashboard');
    Route::get('dashboard/product', 'APIProductController@showdashboard');
    Route::post('product/cart', 'CartAPIController@add');
    Route::post('product/cart/list', 'CartAPIController@show');
    Route::delete('product/cart/remove/{id}', 'CartAPIController@delete');
    Route::get('pagination/{id}', 'APIPagination@Pagination');
    ///
    Route::post('createorupdate/product', 'APIProductController_new@createofupdate');
    Route::get('show/product', 'APIProductController_new@show');
    Route::delete('remove/product/{id}', 'APIProductController_new@delete');

    //vote


});


