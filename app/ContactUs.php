<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    //
    protected $table  = 'contacus';
    public $timestamps = 'false';

    protected $fillable = [
        'name','email','phone','feedback','address','user_id'
     ];
}
