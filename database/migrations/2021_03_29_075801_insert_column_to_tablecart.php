<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class InsertColumnToTablecart extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('table_cart')){
            Schema::table('table_cart', function (Blueprint $table) {
                //
                $table->BigInteger('prd_id')->nullable();
                $table->foreign('prd_id')->references('id')->on('table_product');
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
        Schema::table('table_cart', function (Blueprint $table) {
            //
        });
    }
}
