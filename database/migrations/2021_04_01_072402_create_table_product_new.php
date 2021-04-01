<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableProductNew extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product', function (Blueprint $table) {
            $table->unsignedBigInteger('id')->increments();
            $table->bigInteger('user_id');
            $table->string('name')->nullable();
            $table->smallInteger('price')->nullable();
            $table->string('categories')->nullable();
            $table->string('description')->nullable();
            $table->string('stock_status')->nullable();
            $table->smallInteger('discount')->nullable();
            $table->string('made')->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product');
    }
}
