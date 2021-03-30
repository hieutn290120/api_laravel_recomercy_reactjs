<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;

class APIPagination extends Controller
{
    //
    public function Pagination(Request $request, $id){

        $cart = Cart::where('user_id',$id)->paginate(1);
        
        return response()->json([
            'status' => true,
            'listcart' => $cart
        ]);
    }
}
