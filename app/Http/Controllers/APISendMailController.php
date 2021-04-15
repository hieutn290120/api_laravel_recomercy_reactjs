<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;
use JWTAuth;
use App\Product_new;
use App\Cart;

class APISendMailController extends Controller
{
    //
    public function index() {

    }

    public function sendMail(Request $request){

        $user  = JWTAuth::toUser($request->all()['token']);
        $cart = Cart::where('user_id', $user->id)->get();
        $total = 0;

        foreach($cart as $s){
            $total += $s['quantity'] * ($s['price'] - ($s['price'] * $s['discount'] / 100));
        }

        $data = [
            'email' => $request->all()['email'],
            'name' => $request->all()['name'],
            'listcart' =>  $cart,
            'total' => $total
        ];
        
        Mail::to($request->all()['email'])->send(new sendMail($data));

        return response()->json(
            $request
        );
    }
}
