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

        $cart_one = Cart::updateOrCreate(
            ['name' => $findPrd->name],
            ['user_id' => $user->id,
            'description' => $findPrd->description,
            'avatar' => $findPrd->avatar,
            'quantity' =>  $request->all()['quantity'],
            'prd_id' =>  $findPrd->id,
            ]
        );
        
        $cart_all = Cart::where('user_id',$user->id,)->get();

        return response()->json([
            'status' => true,
            'listprd' =>   $cart_all
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

    public function delete(Request $request,$id){

        Cart::where('id',$id)->delete();

        $listcart = Cart::all();

        return response()->json([
            'status' => true,
            'listcart' => $listcart,
        ]);
    }

}
