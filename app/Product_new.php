<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product_new extends Model
{
    //   //
    use 
        SoftDeletes;
    protected $table = 'product';
    public $timestamp = false;

    protected $fillable = [
       'user_id','name','price','categories','description','stock_status','discount','made','avatar'
    ];
}
