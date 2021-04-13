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
            'avatar' => $request->all()['values']['avatar']
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

    public function shownew(){
        $product = Product_new::paginate(4);
        return response()->json(
            $product, 200
        );
    }

    //Show product khuyen mai
    
    public function showdiscount(){
        $product = Product_new::where('discount', '>', 0)->paginate(4);
        return response()->json(
            $product, 200
        );
    }
 

    //Show product PC

    public function showpc(){
        $product = Product_new::where('categories', 'Pc')->orWhere('categories','Laptop')->paginate(4);
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

    //show product by id

     public function showproductbyid($id){
         $product = Product_new::where('id',$id)->get();
         return response()->json($product);
     }
        
}


