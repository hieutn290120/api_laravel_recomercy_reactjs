<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;
use App\Http\Requests\ProductValidate;


class CartAPIController extends Controller
{
    //
    public function add(ProductValidate $request){
         $id = Auth::id();
         $cart = new Cart;


        //  $add_cart = Cart::create($request->only('name','description','avatar'));

         return response()->json([
             'status' => 'true',
             'cart' => $request->all()
         ]);
    }
}
