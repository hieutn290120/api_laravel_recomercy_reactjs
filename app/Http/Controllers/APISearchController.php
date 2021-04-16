<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product_new;

class APISearchController extends Controller
{
    //search product
    public function SearchAll(Request $request){

        $product = Product_new::where('name', 'like', '%' . $request->all()['name']. '%')->get();

        return response()->json(
            $product
        );
        
    }
}
