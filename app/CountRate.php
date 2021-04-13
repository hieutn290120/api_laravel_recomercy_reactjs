<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CountRate extends Model
{
    //
    protected $table = 'vote_rate';
    
    public $timestamp = false;

    protected $fillable = [
        'user_id','prd_id','count_rate'
     ];
}
