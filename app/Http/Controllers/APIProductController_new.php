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
        $product = Product_new::orderBy('id','desc')->paginate(12);
        return response()->json(
            $product, 200
        );
    }

    //Show product khuyen mai
    
    public function showdiscount(){
        $product = Product_new::where('discount', '>', 0)->orderBy('id','desc')->paginate(12);
        return response()->json(
            $product, 200
        );
    }
 

    //Show product ALL TIVI

    public function showtivi(){
        $product = Product_new::where('description', 'TIVI SONY')->orWhere('description', 'TIVI SAMSUNG')->orWhere('description', 'TIVI LG')->orWhere('description', 'TIVI TCL')->orderBy('id', 'desc')->paginate(12);
        return response()->json(
            $product, 200
        );
    }

    //Show product ALL REMOTE

    public function showremote(){
        $product = Product_new::where('categories','REMOTE_LG')->orWhere('categories','REMOTE_SAMSUNG')->orWhere('categories','REMOTE_TCL')->orWhere('categories','REMOTE_SONY')->orderBy('id', 'desc')->paginate(12);
        return response()->json(
            $product, 200
        );
    }
 
    //Xoa San Pham 
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


     //show product Module Am Thanh

     public function showmoduleamthanh(){
         $product = Product_new::where('description','Module Am Thanh')->orderBy('id', 'desc')->get();

         return response()->json(
             $product
         );
     }
     //show product Module MACH NAP

     public function showmodulemachnap(){
        $product = Product_new::where('description','Module Mach Nap')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

     //show product Module CAM UNG

    public function showmodulecambien(){
        $product = Product_new::where('description','Module Am Thanh')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    //shơ product module nguon

    public function showmodulenguon(){
        $product = Product_new::where('description','Module Nguon')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    //show product tivi sony

    public function showtivisony(){
        $product = Product_new::where('description','TIVI SONY')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    //show product tivi TCL

    public function showtivitcl(){
        $product = Product_new::where('description','TIVI TCL')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    //show product tivi SAMSUNG

    public function showtivisamsung(){
        $product = Product_new::where('description','TIVI SAMSUNG')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    //show product tivi LG

    public function showtivilg(){
        $product = Product_new::where('description','TIVI LG')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

     //show product remote LG

     public function showremotelg(){
        $product = Product_new::where('categories','REMOTE_LG')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

      //show product remote SAMSUNG

      public function showremotesamsung(){
        $product = Product_new::where('categories','REMOTE_SAMSUNG')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

      //show product remote SONY

      public function showremotesony(){
        $product = Product_new::where('categories','REMOTE_SONY')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

      //show product remote TCL

      public function showremotetcl(){
        $product = Product_new::where('categories','REMOTE_TCL')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }

    
      //show product amply

      public function showamply(){
        $product = Product_new::where('categories','AMPLY')->orderBy('id', 'desc')->get();

        return response()->json(
            $product
        );
    }
        
}


