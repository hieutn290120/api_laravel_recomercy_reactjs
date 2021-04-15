<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    //
    protected $table = 'roles';
    public $timestamp = false;

    protected $fillable = [
        'status'
    ];
}
