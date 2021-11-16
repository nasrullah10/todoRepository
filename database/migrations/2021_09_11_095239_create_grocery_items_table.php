<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGroceryItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('grocery_items', function (Blueprint $table) {
            $table->id('grocery_item_id');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('user_id')->on('users');
            //$table->unsignedBigInteger('grocery_category_id')->nullable();
            //$table->foreign('grocery_category_id')->references('grocery_category_id')->on('grocery_categories');
            $table->string('grocery_category_name')->nullable();
            $table->string('grocery_name')->nullable();
            $table->tinyInteger('status')->nullable();
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
        Schema::dropIfExists('grocery_items');
    }
}
