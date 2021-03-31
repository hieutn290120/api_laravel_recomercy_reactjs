<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Product;
use App\Http\Requests\ProductValidate;


class APIProductController extends Controller
{
    public function show()
    {
        $product = Product::all();
        return response()->json(
            [
                'status'=> true,
                'product'=>$product
            ]
        );
    }

    public function add(ProductValidate $request){

        $product = new Product;
        $data = $request->only('name','description','avatar');
        
        $product->name = $data['name'] ;
        $product->description = $data['description'];
        $product->avatar = $data['avatar'];

        $product->save();

        return response()->json([
            'status' => true,
            'product'=> $data,
        ]);
    }



    public function edit($id){
        $product = Product::find($id);

        return response()->json([
            'status' => true,
            'product'=> $product,
        ]);
    }

    public function postedit(ProductValidate $request, $id){

        $product = Product::find($id);

        $data = $request->all();
        $product->update($data);

        return response()->json([
            'status' => true,
            'product'=> $product,
        ]);
    }

    public function delete($id){
        Product::where('id',$id)->delete();

        $product = Product::all();

        return response()->json([
            'status' => true,
            'product'=> $product,
        ]);
    }

    public function showdashboard(){

        $product = Product::all();
        return response()->json(
            $product, 200
        );
    }
}
