<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;
use App\Mail\SendMailCheckedResetPassword;
use JWTAuth;
use App\Product_new;
use App\Cart;
use App\User;

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

    public function sendMailRestPassword(Request $request){
           $user =  User::where("email", $request->all()['emailorphone'])->orWhere('phone',$request->all()['emailorphone'])->get();
            
           $data = [
            'name' =>  $user[0]->name,
            'token' => encrypt($user[0]->id)
           ];

            Mail::to($request->all()['emailorphone'])->send(new SendMailCheckedResetPassword($data));

           
            return response()->json(200);
    }
}
