<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ContactUs;
use JWTAuth;

class APIContactUsController extends Controller
{
    //
    public function createfeedback(Request $request){

            $user  = JWTAuth::toUser($request->all()['token']);
        
            $feedback = ContactUs::updateOrCreate(
                ['feddback'=>$request->all('description')],
                [
                    'name'=>$request->all('name'),
                    'email'=>$request->all('email'),
                    'address'=>$request->all('address'),
                    'phone'=>$request->all('phone'),
                    'user_id'=>$user->id,
                ]
            );

            return response()->json(
                $feedback
            );
    }
}
