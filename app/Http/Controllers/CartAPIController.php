<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;
use JWTAuth;
use App\Product;



class CartAPIController extends Controller
{
    //
    public function add(Request $request){
        
        $data = $request->only('token','prdId','quantity');
        $user = JWTAuth::toUser($data);
        $findPrd = Product::find($data);
        $cart1 =  Cart::where('name',$findPrd[0]->name)->get();

        $cart = Cart::updateOrCreate(
            ['name' => $findPrd[0]->name],
            ['user_id' => $user->id,
            'description' => $findPrd[0]->description,
            'avatar' => $findPrd[0]->avatar,
            'quantity' => $cart1[0]->quantity + 1,
            ]
        );
        
        return response()->json([
            'status' => true,
            'listprd' =>  $cart
        ]);
    }

    public function show(Request $request){

            $data = $request->only('token');
            $user = JWTAuth::toUser($data);
            $listCartByIduser = Cart::where('user_id',$user->id)->get();

            return response()->json([
                'status' => true,
                'listcart' => $listCartByIduser,
            ]);
    }
}
