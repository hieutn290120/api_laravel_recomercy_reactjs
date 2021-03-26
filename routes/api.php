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
Route::get('product','APIProductController@show');
Route::get('login', []);
Route::get('product/{id}', 'APIProductController@edit');
Route::post('product/edit/{id}', 'APIProductController@postedit');
Route::delete('product/{id}','APIProductController@delete' );

Route::post('product/cart', 'CartAPIController@add');



Route::group(['middleware' => 'auth.jwt', 'prefix' => 'auth'], function () {
    Route::get('logout', 'APIController@logout');
    Route::get('users', 'UserController@index');
});


