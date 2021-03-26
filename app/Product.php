<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    //
    protected $table = 'table_product';
    public $timestamp = false;

    protected $fillable = [
        'name', 'description', 'avatar',
    ];
}

