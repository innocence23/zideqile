<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uid')->default(999999);
            $table->string('nickname');
            $table->integer('parent_id');
            $table->integer('commentable_id');
            $table->string('commentable_type');
            $table->integer('support');
            $table->text('content');
            $table->tinyInteger('status')->default(1);
            $table->timestamps();
            $table->index('uid');
            $table->index(['commentable_id', 'commentable_type']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
    }
}
