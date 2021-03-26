<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
    //
    protected $table = 'table_cart';
    public $timestamp = false;

    protected $fillable = [
        'name', 'description', 'avatar',
    ];
}
