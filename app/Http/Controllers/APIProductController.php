<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Product;


class APIProductController extends Controller
{
    public function add(Request $request){
        $product = Product::all();
        
        $data = $request->only('name','description','avatar');

        $validator = Validator::make($data,
            ['name' => 'required'],
            ['description' => 'required'],
            ['avatar' => 'required'],
        );

        if($validator->fails()){
         return response()->json([
            $validator->errors()
         ],422);
        }

        return response()->json([
            'status' => true,
            'product'=>$product,
        ],200);
    }
}
