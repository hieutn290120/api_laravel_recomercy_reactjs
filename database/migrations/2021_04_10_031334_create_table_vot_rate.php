<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableVotRate extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('vote_rate')){
        Schema::create('vote_rate', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id')->usingned();
            $table->bigInteger('prd_id')->usingned();
            $table->Integer('count_rate');
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('prd_id')->references('id')->on('product');
            $table->timestamps();
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
        Schema::dropIfExists('=vote_Rate');
    }
}
