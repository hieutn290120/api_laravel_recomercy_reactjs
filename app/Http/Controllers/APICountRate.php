<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CountRate;
use JWTAuth;



class APICountRate extends Controller
{
    //

    public function createorupdate(Request $request)
    {

        $user  = JWTAuth::toUser($request->all()['token']);

        $count_rate = CountRate::updateOrCreate(
            [
                'prd_id' => $request->all()['prd_id'],
                'user_id' => $user->id
            ],
            [
                'count_rate' => $request->all()['count_rate']
            ]
        );

        return response()->json($count_rate);
    }
}
