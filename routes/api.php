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
Route::post('checktoken', 'APIController@checktoken');
Route::post('addproduct', 'APIProductController@add');
Route::post('createorupdateproduct', 'APIProductController@createofupdate');
Route::get('product','APIProductController@show');
Route::get('login', []);
Route::get('product/{id}', 'APIProductController@edit');
Route::post('product/edit/{id}', 'APIProductController@postedit');
Route::delete('product/{id}','APIProductController@delete' );

Route::post('register','UserController@register');
Route::post('registerCustomer','UserController@registerCustomer');

Route::post('uploadfile','UserController@uploadfile');
Route::delete('remove/user/{id}','UserController@delete');




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


});


