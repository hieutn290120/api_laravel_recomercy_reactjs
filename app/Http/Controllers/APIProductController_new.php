<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Product_new;
use JWTAuth;

class APIProductController_new extends Controller
{
     public function createofupdate(Request $request){
      
       
        $user  = JWTAuth::toUser($request->all()['token']);

        $imageDb ='';
        $imagesName = '';
        $image = $request->all()['values']['avatar'];

        foreach($image as $img){
             $new_name = rand().'.'.$img['name'];
             $imagesName = $imagesName.$new_name;
            $imageDb = $imagesName;
            
        }
    
        $product_one =  Product_new::updateOrCreate(
            ['id' => $request->all()['values']['id_prd']],
            ['categories' => $request->all()['values']['categories'],
            'description' => $request->all()['values']['description'],
            'discount' => $request->all()['values']['discount'],
            'made' =>  $request->all()['values']['made'],
            'name' =>  $request->all()['values']['name'],
            'price' =>  $request->all()['values']['price'],
            'stock_status'=> $request->all()['values']['stock'],
            'user_id' =>$user->id,
            'avatar' => $imageDb
            ]
        );

        return response()->json([
            'status'=> true,
            'product'=>  $product_one
        ]);
    }

    public function show(){
        $product = Product_new::all();
        return response()->json(
            $product, 200
        );
    }
    
    public function delete($id){
        Product_new::where('id',$id)->delete();
        $product = Product_new::all();
        return response()->json([
            'status' => true,
            'product'=>$product
        ]);
    }
}
