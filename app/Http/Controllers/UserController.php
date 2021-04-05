<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Cart;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function index(){
        $users = User::all();
        
        return response()->json($users, 200);
    }

    public function register(Request $request){

        $current = new Carbon($request->all()['dob']);
        
        $imageDb ='';
        $imagesName = '';
        $image = $request->all()['avatar'];

        foreach($image as $img){
             $new_name = rand().'.'.$img['name'];
             $imagesName = $imagesName.$new_name.',';
            $imageDb = $imagesName;
            
        }

        $users = User::updateOrCreate(
                ['id' => $request->all()['user_id']],
    
                ['name' => $request->all()['name'],
                'email' => $request->all()['email'],
                'password' => Hash::make($request->all()['password']),
                'address' => $request->all()['address'],
                'phone' => $request->all()['phone'],
                'gender' => $request->all()['gender'],
                'dob' => $current->toDateString(),
                'avatar' => $imageDb
                ]
        );

        return response()->json($users, 200);
    }

    public function uploadfile(Request $request){

        $image = $request->file('avatar');
        $imagesName = '';

        foreach($image as $img){
           $new_name = rand().'.'.$img->getClientOriginalExtension();
           $img->move(public_path('uploads/images'),$new_name);
           $imagesName = $imagesName.$new_name.',';
           return response()->json($img);
        }
        $imageDb = $imagesName;
       
    }

    public function delete(Request $request, $id){

        $user = User::where('id',$id)->delete();
        return response()->json(['status'=>true, 200]);

    }

    public function registerCustomer(Request $request){
       
        $users = User::updateOrCreate(
            ['name' => $request->all()['name']],
            [
            'email' => $request->all()['email'],
            'password' => Hash::make($request->all()['password']),
            'address' => $request->all()['address'],
            'phone' => $request->all()['phone'],
            ]
    );

    return response()->json($users, 200);
    }
    
}