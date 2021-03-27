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
        
        $data = $request->only('token','prdId');
        $user = JWTAuth::toUser($data);
        $findPrd = Product::find($data);
        

        $cart = Cart::create(
            ['user_id' => $user->id,
            'name' => $findPrd[0]->name,
            'description' => $findPrd[0]->description,
            'avatar' => $findPrd[0]->avatar
            ]
        );
        
        return response()->json([
            'status' => true,
            'users'=>$user,
            'listprd' => $findPrd,
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
