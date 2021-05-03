<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContacUs;
use JWTAuth;

class APIContactUsController extends Controller
{
    //
    public function createfeedback(Request $request){

            $user  = JWTAuth::toUser($request->all()['token']);
        
            $feedback = ContactUs::updateOrCreate(
                [
                    "name"=>$request->all('id'),
                    "email"=>$request->all('id'),
                    "address"=>$request->all('id'),
                    "phone"=>$request->all('id'),
                    "feddback"=>$request->all('id'),
                    "user_id"=>$user->id,
                ]
            );

            return response()->json(
                $feedback
            );
    }
}
