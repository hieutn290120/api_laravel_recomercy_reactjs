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
        $findPrd = Product::find($request->all()['prdId']);

        $cart = Cart::updateOrCreate(
            ['name' => $findPrd->name],
            ['user_id' => $user->id,
            'description' => $findPrd->description,
            'avatar' => $findPrd->avatar,
            'quantity' =>  $request->all()['quantity'],
            'prd_id' =>  $findPrd->id,
            ]
        );
        
        return response()->json([
            'status' => true,
            'listprd' => $findPrd->id
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

    public function delete(Request $request){
        $data = $request->all();

        $cart = Cart::find($data['prd_id'])->delete();
        if(!$request->all()['prd_id']){
            return response()->json([
                'status' => false,
                'message' => 'Invalid Email or Password',
            ], 401);
        }
        return response()->json([
          'status' => true,  
          'listcart' => $cart
        ]);
    }

}
