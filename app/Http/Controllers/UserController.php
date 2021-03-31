<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Cart;

class UserController extends Controller
{
    //
    public function index(){
        $users = User::all();
        return response()->json($users, 200);
    }
}
