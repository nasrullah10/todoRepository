<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sub_tasks', function (Blueprint $table) {
            $table->id('sub_task_id');
            // $table->unsignedBigInteger('user_id')->nullable();
            // $table->foreign('user_id')->references('id')->on('users');
            $table->unsignedBigInteger('task_id')->nullable();
            $table->foreign('task_id')->references('task_id')->on('tasks');
            // $table->unsignedBigInteger('project_id')->nullable();
            // $table->foreign('project_id')->references('id')->on('projects');
            // $table->unsignedBigInteger('section_id')->nullable();
            // $table->foreign('section_id')->references('id')->on('sections');
            $table->text('tags')->nullable();
            $table->text('title')->nullable();
            $table->longText('description')->nullable();
            $table->text('notes')->nullable();
            $table->text('reminder')->nullable();
            $table->text('voice')->nullable();
            $table->date('date')->nullable();
            $table->timestamp('time')->nullable();
            //$table->string('task_expiration_date')->nullable();
            $table->timestamp('task_expiration_date')->nullable();
            $table->integer('priority')->nullable();
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
        Schema::dropIfExists('sub_tasks');
    }
}
