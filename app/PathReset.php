<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PathReset extends Model
{
    //
    protected $table = 'path_reset';
    public $timestamps = 'true';

    
    protected $fillable = [
        'path'
     ];

}
