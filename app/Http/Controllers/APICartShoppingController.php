<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use JWTAuth;
use App\Product_new;
use App\Cart;

class APICartShoppingController extends Controller
{
    //
   

    public function add(Request $request){

        $product = Product_new::where('id',$request->all()['id'])->get();

        $user  = JWTAuth::toUser($request->all()['token']);

        $cart  = Cart::updateOrCreate(
            [
                'prd_id' =>  $product[0]->id,
                'user_id' => $user->id
            ]
            ,
            [
                'name' => $product[0]->name,
                'description' => $product[0]->description,
                'avatar' =>$product[0]->avatar,
                'quantity' => 1,
                'price' => $product[0]->price,
                'stock_status' => $product[0]->stock_status,
                'discount' => $product[0]->discount
            ]
            );
            return response()->json($cart);
    }

    public function showlistcart(Request $request){
        $user  = JWTAuth::toUser($request->all()['token']);
        $cart = Cart::where('user_id', $user->id)->get();
        return response()->json(
            $cart
        );
    }

    public function showlistcartdiscount(Request $request){
        $cart = Cart::where('discount', '>','0')->get();
        return response()->json(
            $cart
        );
    }

    public function removelistcartbyid(Request $request, $id){
        $cart = Cart::where('id', $id)->delete();
        return response()->json($cart);
    }

    public function updateQuantity(Request $request){

        $product = Product_new::where('id',$request->all()['id'])->get();

        $user  = JWTAuth::toUser($request->all()['token']);

        $cart  = Cart::updateOrCreate(
            [
                'prd_id' =>  $product[0]->id,
                'user_id' => $user->id
            ]
            ,
            [
                'name' => $product[0]->name,
                'description' => $product[0]->description,
                'avatar' =>$product[0]->avatar,
                'quantity' => $request->all()['quantity'],
                'price' => $product[0]->price,
                'stock_status' => $product[0]->stock_status,
                'discount' => $product[0]->discount
            ]
            );
            return response()->json($cart);
    }

    public function showlistcartanduser(Request $request){
        $user  = JWTAuth::toUser($request->all()['token']);
        $cart = Cart::where('user_id', $user->id)->get();
        return response()->json([$user,$cart]
        );
    }
    
}
