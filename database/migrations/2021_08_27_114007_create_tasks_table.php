<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->id('task_id');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->foreign('user_id')->references('user_id')->on('users');
            $table->unsignedBigInteger('project_id')->nullable();
            $table->foreign('project_id')->references('project_id')->on('projects');
            $table->unsignedBigInteger('section_id')->nullable();
            $table->foreign('section_id')->references('section_id')->on('sections');
            $table->text('tags')->nullable();
            $table->text('title')->nullable();
            $table->longText('description')->nullable();
            $table->text('notes')->nullable();
            $table->text('voice')->nullable();
            $table->text('reminder')->nullable();
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
        Schema::dropIfExists('tasks');
    }
}
