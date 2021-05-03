<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class InsertColumnIntableContactus extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('users')){
        Schema::table('contacus', function (Blueprint $table) {
            //
            $table->bigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');
        });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('contacus', function (Blueprint $table) {
            //
        });
    }
}
